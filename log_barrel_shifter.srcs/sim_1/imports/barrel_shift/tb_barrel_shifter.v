`timescale 1ns / 1ps
module tb_barrel_shifter();
    reg [7:0] data_in, expected_out;
    reg [2:0] shift_amt;
    reg rotate;
    reg dir; // 0 for right shift, 1 for left shift
    wire [7:0] data_out;
    wire error;


    log_barrel_shift uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .rotate(rotate),
        .dir(dir),
        .data_out(data_out)
    );

assign error=expected_out!=data_out;
    initial begin
        //dumpfile for waveform viewing
        $dumpfile("tb_barrel_shifter.vcd");
        $dumpvars(0, tb_barrel_shifter);
    end

    initial begin
        // Test case 1: Right shift by 2 without rotation
        data_in = 8'b10110011;
        shift_amt = 3'b010; // Shift by 2
        rotate = 0;
        dir = 0; // Right shift
        expected_out = 8'b00101100;
        #20;

        // Test case 2: Left shift by 3 with rotation
        data_in = 8'b11001100;
        shift_amt = 3'b011; // Shift by 3
        rotate = 1;
        dir = 1; // Left shift 01100110
        expected_out = 8'b01100110;
        #20;

        // Test case 3: Right shift by 1 with rotation
        data_in = 8'b11110001;
        shift_amt = 3'b001; // Shift by 1
        rotate = 1;
        dir = 0; // Right shift
        expected_out = 8'b11111000;
        #20;

        // Test case 4: Left shift by 4 without rotation
        data_in = 8'b00001111;
        shift_amt = 3'b100; // Shift by 4
        rotate = 0;
        dir = 1; // Left shift
        expected_out = 8'b11110000;
        #20;

        // Test case 5: No shift
        data_in = 8'b10101010;
        shift_amt = 3'b000; // No shift
        rotate = 0;
        dir = 0; // Right shift
        expected_out = 8'b10101010;
        #20;

        // more tests
        data_in = 8'b11111111;
        shift_amt = 3'b101; // Shift by 5
        rotate = 1;
        dir = 0; // Right shift
        expected_out = 8'b11111111;
        #20;

        data_in = 8'b00000001;
        shift_amt = 3'b111; // Shift by 7
        rotate = 0;
        dir = 1; // Left shift  
        expected_out = 8'b10000000;
        #20;

        data_in = 8'b10011001;
        shift_amt = 3'b110; // Shift by 6
        rotate = 1;
        dir = 0; // Right shift
        expected_out = 8'b01100110;
        #20;

        $finish;
    end

    endmodule