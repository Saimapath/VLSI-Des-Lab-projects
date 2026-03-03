module dadda16x16 (
    input  [15:0] A,
    input  [15:0] B,
    output [31:0] OUT
);  
    // STAGE  0: PARTIAL PRODUCT GENERATION
    wire [15:0] PP16_1, PP16_2, PP16_3, PP16_4, PP16_5, PP16_6, PP16_7, PP16_8, PP16_9, PP16_10, PP16_11, PP16_12, PP16_13, PP16_14, PP16_15, PP16_16;
    
    // STAGE 1: PARTIAL PRODUCT REDUCTION TO 13x13
    wire [30:0] PP13_1;
    wire [29:1] PP13_2;
    wire [28:2] PP13_3;
    wire [27:3] PP13_4;
    wire [26:4] PP13_5;
    wire [25:5] PP13_6;
    wire [24:6] PP13_7;
    wire [23:7] PP13_8;
    wire [22:8] PP13_9;
    wire [21:9] PP13_10;
    wire [20:10] PP13_11;
    wire [19:11] PP13_12;
    wire [19:12] PP13_13;

    // STAGE 2: PARTIAL PRODUCT REDUCTION TO 9x9
    wire [30:0] PP9_1;
    wire [29:1] PP9_2;
    wire [28:2] PP9_3;
    wire [27:3] PP9_4;
    wire [26:4] PP9_5;
    wire [25:5] PP9_6;
    wire [24:6] PP9_7;
    wire [23:7] PP9_8;
    wire [23:8] PP9_9;

    // STAGE 3: PARTIAL PRODUCT REDUCTION TO 6x6
    wire [30:0] PP6_1;
    wire [29:1] PP6_2;
    wire [28:2] PP6_3;
    wire [27:3] PP6_4;
    wire [26:4] PP6_5;
    wire [26:5] PP6_6;

    // STAGE 4: PARTIAL PRODUCT REDUCTION TO 4x4
    wire [30:0] PP4_1;
    wire [29:1] PP4_2;
    wire [28:2] PP4_3;
    wire [28:3] PP4_4;

    // STAGE 5: pARTIAL PRODUCT REDUCTION TO 3x3
    wire [30:0] PP3_1;
    wire [29:1] PP3_2;
    wire [29:2] PP3_3;

    // STAGE 6: paRTIAL PRODUCT REDUCTION TO 2x2
    wire [30:0] PP2_1;
    wire [30:1] PP2_2;

    wire Cout;

    // STAGE 0
    partialProduct1 PPG (.A(A), .B(B[0]), .PP1(PP16_1));
    partialProduct1 PPG2 (.A(A), .B(B[1]), .PP1(PP16_2));
    partialProduct1 PPG3 (.A(A), .B(B[2]), .PP1(PP16_3));
    partialProduct1 PPG4 (.A(A), .B(B[3]), .PP1(PP16_4));
    partialProduct1 PPG5 (.A(A), .B(B[4]), .PP1(PP16_5));
    partialProduct1 PPG6 (.A(A), .B(B[5]), .PP1(PP16_6));
    partialProduct1 PPG7 (.A(A), .B(B[6]), .PP1(PP16_7));
    partialProduct1 PPG8 (.A(A), .B(B[7]), .PP1(PP16_8));
    partialProduct1 PPG9 (.A(A), .B(B[8]), .PP1(PP16_9));
    partialProduct1 PPG10 (.A(A), .B(B[9]), .PP1(PP16_10));
    partialProduct1 PPG11 (.A(A), .B(B[10]), .PP1(PP16_11));
    partialProduct1 PPG12 (.A(A), .B(B[11]), .PP1(PP16_12));
    partialProduct1 PPG13 (.A(A), .B(B[12]), .PP1(PP16_13));
    partialProduct1 PPG14 (.A(A), .B(B[13]), .PP1(PP16_14));
    partialProduct1 PPG15 (.A(A), .B(B[14]), .PP1(PP16_15));
    partialProduct2 PPG16 (.A(A), .B(B[15]), .PP2(PP16_16));
    // assign PP16_2  = A&{16{B[1]}};
    // assign PP16_3  = A&{16{B[2]}};
    // assign PP16_4  = A&{16{B[3]}};
    // assign PP16_5  = A&{16{B[4]}};
    // assign PP16_6  = A&{16{B[5]}};
    // assign PP16_7  = A&{16{B[6]}};
    // assign PP16_8  = A&{16{B[7]}};
    // assign PP16_9  = A&{16{B[8]}};
    // assign PP16_10 = A&{16{B[9]}};
    // assign PP16_11 = A&{16{B[10]}};
    // assign PP16_12 = A&{16{B[11]}};
    // assign PP16_13 = A&{16{B[12]}};
    // assign PP16_14 = A&{16{B[13]}};
    // assign PP16_15 = A&{16{B[14]}};
    // assign PP16_16 = A&{16{B[15]}}; 

    // STAGE 1
    stage1_16to13 STAGE1 (
        .PP16_1(PP16_1),
        .PP16_2(PP16_2),
        .PP16_3(PP16_3),
        .PP16_4(PP16_4),
        .PP16_5(PP16_5),
        .PP16_6(PP16_6),
        .PP16_7(PP16_7),
        .PP16_8(PP16_8),
        .PP16_9(PP16_9),
        .PP16_10(PP16_10),
        .PP16_11(PP16_11),
        .PP16_12(PP16_12),
        .PP16_13(PP16_13),
        .PP16_14(PP16_14),
        .PP16_15(PP16_15),
        .PP16_16(PP16_16),
        .PP13_1(PP13_1),
        .PP13_2(PP13_2),
        .PP13_3(PP13_3),
        .PP13_4(PP13_4),
        .PP13_5(PP13_5),
        .PP13_6(PP13_6),
        .PP13_7(PP13_7),
        .PP13_8(PP13_8),
        .PP13_9(PP13_9),
        .PP13_10(PP13_10),
        .PP13_11(PP13_11),
        .PP13_12(PP13_12),
        .PP13_13(PP13_13)
    );

    // STAGE 2
    stage2_13to9 STAGE2 (
        .PP13_1(PP13_1),
        .PP13_2(PP13_2),
        .PP13_3(PP13_3),
        .PP13_4(PP13_4),
        .PP13_5(PP13_5),
        .PP13_6(PP13_6),
        .PP13_7(PP13_7),
        .PP13_8(PP13_8),
        .PP13_9(PP13_9),
        .PP13_10(PP13_10),
        .PP13_11(PP13_11),
        .PP13_12(PP13_12),
        .PP13_13(PP13_13),
        .PP9_1(PP9_1),
        .PP9_2(PP9_2),
        .PP9_3(PP9_3),
        .PP9_4(PP9_4),
        .PP9_5(PP9_5),
        .PP9_6(PP9_6),
        .PP9_7(PP9_7),
        .PP9_8(PP9_8),
        .PP9_9(PP9_9)
    );

    // STAGE 3
    stage3_9to6 STAGE3 (
        .PP9_1(PP9_1),
        .PP9_2(PP9_2),
        .PP9_3(PP9_3),
        .PP9_4(PP9_4),
        .PP9_5(PP9_5),
        .PP9_6(PP9_6),
        .PP9_7(PP9_7),
        .PP9_8(PP9_8),
        .PP9_9(PP9_9),
        .PP6_1(PP6_1),
        .PP6_2(PP6_2),
        .PP6_3(PP6_3),
        .PP6_4(PP6_4),
        .PP6_5(PP6_5),
        .PP6_6(PP6_6)
    );

    // STAGE 4
    stage4_6to4 STAGE4 (
        .PP6_1(PP6_1),
        .PP6_2(PP6_2),
        .PP6_3(PP6_3),
        .PP6_4(PP6_4),
        .PP6_5(PP6_5),
        .PP6_6(PP6_6),
        .PP4_1(PP4_1),
        .PP4_2(PP4_2),
        .PP4_3(PP4_3),
        .PP4_4(PP4_4)
    );

    // STAGE 5
    stage5_4to3 STAGE5 (
        .PP4_1(PP4_1),
        .PP4_2(PP4_2),
        .PP4_3(PP4_3),
        .PP4_4(PP4_4),
        .PP3_1(PP3_1),
        .PP3_2(PP3_2),
        .PP3_3(PP3_3)
    );

    // STAGE 6
    stage6_3to2 STAGE6 (
        .PP3_1(PP3_1),
        .PP3_2(PP3_2),
        .PP3_3(PP3_3),
        .PP2_1(PP2_1),
        .PP2_2(PP2_2)
    );

    // FINAL ADDER

    /* 
    module brentKung_adder (
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] Sum,
    output Cout
    */

    brentKung_adder FINAL_ADDER (
        .A({1'b0, PP2_1}),
        .B({1'b1, PP2_2, 1'b0}),
        .Cin(1'b0),
        .Sum(OUT),
        .Cout(Cout)
    );

endmodule