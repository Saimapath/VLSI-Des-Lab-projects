`timescale 1ns / 1ps

module tb_dadda16x16;

    // --- CHANGED: Use 'signed' for correct arithmetic interpretation ---
    reg signed [15:0] A;
    reg signed [15:0] B;

    // Outputs
    wire signed [31:0] OUT;

    // Variables for self-checking
    reg signed [31:0] expected_result;
    integer errors;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    dadda16x16 uut (
        .A(A), 
        .B(B), 
        .OUT(OUT)
    );

    // --- VCD Generation ---
    initial begin
        $dumpfile("dadda_multiplier_signed.vcd");
        $dumpvars(0, tb_dadda16x16);
    end

    initial begin
        // Initialize
        A = 0; B = 0; errors = 0;
        #100;

        $display("\n===================================================================");
        $display("STARTING SIGNED TESTBENCH FOR 16x16 DADDA MULTIPLIER");
        $display("===================================================================\n");

        // ------------------------------------------------------------
        // GROUP 1: STANDARD CORNER CASES (SIGNED)
        // ------------------------------------------------------------
        $display("--- Group 1: Standard Corner Cases ---");
        
        // Basic Zero
        run_test(16'd0, 16'd0);
        
        // Positive * Positive
        run_test(16'd100, 16'd50);
        
        // Positive * Negative
        run_test(16'd100, -16'd50);  // 100 * -50 = -5000
        
        // Negative * Positive
        run_test(-16'd100, 16'd50);  // -100 * 50 = -5000
        
        // Negative * Negative
        run_test(-16'd100, -16'd50); // -100 * -50 = 5000
        
        // Multiply by -1
        run_test(16'd12345, -16'd1);

        // ------------------------------------------------------------
        // GROUP 2: MAX LIMITS (CRITICAL FOR SIGNED LOGIC)
        // ------------------------------------------------------------
        $display("\n--- Group 2: Max Limits (2's Complement) ---");
        
        // Max Positive * Max Positive (32767 * 32767)
        run_test(16'sd32767, 16'sd32767); 
        
        // Max Negative * Max Negative (-32768 * -32768)
        // Note: This produces the largest possible positive result (1,073,741,824)
        run_test(-16'sd32768, -16'sd32768); 
        
        // Max Positive * Max Negative
        run_test(16'sd32767, -16'sd32768);

        // ------------------------------------------------------------
        // GROUP 3: BIT PATTERNS
        // ------------------------------------------------------------
        $display("\n--- Group 3: Bit Patterns ---");
        run_test(16'hAAAA, 16'h5555); // Checking -21846 * 21845
        run_test(16'hFFFF, 16'hFFFF); // This is -1 * -1 = 1

        // ------------------------------------------------------------
        // GROUP 4: RANDOMIZED SIGNED STRESS TEST
        // ------------------------------------------------------------
        $display("\n--- Group 4: Randomized Signed Stress Test (1000 Vectors) ---");
        
        for (i = 0; i < 1000; i = i + 1) begin
            // $random returns a 32-bit signed integer. 
            // Assigning it to a 16-bit reg automatically creates random 
            // positive and negative 16-bit numbers.
            A = $random; 
            B = $random;
            
            #5; 
            expected_result = A * B;
            
            if (OUT !== expected_result) begin
                $display("FAIL | A = %6d, B = %6d | OUT = %11d | Exp = %11d", 
                         A, B, OUT, expected_result);
                errors = errors + 1;
            end
        end
        $display("Random testing completed.");

        // ------------------------------------------------------------
        // FINAL REPORT
        // ------------------------------------------------------------
        $display("\n===================================================================");
        if (errors == 0) begin
            $display("SUCCESS: SIGNED MULTIPLIER PASSED ALL TESTS");
        end else begin
            $display("FAILURE: %d ERRORS FOUND", errors);
        end
        $display("===================================================================");
        
        $finish;
    end

    // --- Task for Self-Checking Results ---
    // Note: Inputs are now 'input signed'
    task run_test;
        input signed [15:0] in_a;
        input signed [15:0] in_b;
        begin
            A = in_a;
            B = in_b;
            #5; 
            
            expected_result = A * B;
            
            if (OUT !== expected_result) begin
                // Use %d to print signed decimal values
                $display("FAIL | A = %6d, B = %6d | OUT = %11d | Exp = %11d", 
                         A, B, OUT, expected_result);
                errors = errors + 1;
            end 
        end
    endtask

endmodule