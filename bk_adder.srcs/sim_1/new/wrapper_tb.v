`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 00:07:03
// Design Name: 
// Module Name: wrapper_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wrapper_tb(

    );
    
    `timescale 1ns / 1ps


    // 1. Declare Inputs to the Design
    reg sys_clock;
    reg reset_rtl;

    // 2. Instantiate Your Design (The "DUT")
    // MAKE SURE 'bk_add_sub_wrapper' matches your actual top file name!
    bk_add_sub_wrapper DUT (
        .sys_clock(sys_clock),
        .reset_rtl(reset_rtl)
    );

    // 3. Generate the Clock (100MHz)
    initial begin
        sys_clock = 0;
        forever #5 sys_clock = ~sys_clock; 
    end

    // 4. Generate Reset & "Press" the VIO Button
    initial begin
        // Start in Reset
        reset_rtl = 1; 
        #100; // Wait 100ns
        
        // Release Reset
        reset_rtl = 0; 
        #50;

        // --- TRICKY PART: FORCE THE INTERNAL VIO SIGNAL ---
        // Since VIO is inside the design, we reach inside and force it to '1'
        // You might need to adjust the path if your block design name is different
        // usually: DUT + (name of block diagram instance) + (name of VIO net)
        
        force DUT.bk_add_sub_i.vio_0_probe_out0 = 1; 
        #300;
        
        force DUT.bk_add_sub_i.vio_0_probe_out1 = 1; 

        // ^ If this line gives an error, we can find the exact path in the Simulation GUI scope
    end


endmodule
