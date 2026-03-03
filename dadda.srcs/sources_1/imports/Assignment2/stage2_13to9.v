module stage2_13to9 (
    input [30:0] PP13_1,
    input [29:1] PP13_2,
    input [28:2] PP13_3,
    input [27:3] PP13_4,
    input [26:4] PP13_5,
    input [25:5] PP13_6,
    input [24:6] PP13_7,
    input [23:7] PP13_8,
    input [22:8] PP13_9,
    input [21:9] PP13_10,
    input [20:10] PP13_11,
    input [19:11] PP13_12,
    input [19:12] PP13_13,
    output [30:0] PP9_1,
    output [29:1] PP9_2,
    output [28:2] PP9_3,
    output [27:3] PP9_4,
    output [26:4] PP9_5,
    output [25:5] PP9_6,
    output [24:6] PP9_7,
    output [23:7] PP9_8,
    output [23:8] PP9_9
);
    wire S9_ha1, C9_ha1;
    wire S10_fa1, C10_fa1, S10_ha1, C10_ha1;
    wire S11_fa1, C11_fa1, S11_fa2, C11_fa2, S11_ha1, C11_ha1;
    wire S12_fa1, C12_fa1, S12_fa2, C12_fa2, S12_fa3, C12_fa3, S12_ha1, C12_ha1;
    wire S13_fa1, C13_fa1, S13_fa2, C13_fa2, S13_fa3, C13_fa3, S13_fa4, C13_fa4;
    wire S14_fa1, C14_fa1, S14_fa2, C14_fa2, S14_fa3, C14_fa3, S14_fa4, C14_fa4;
    wire S15_fa1, C15_fa1, S15_fa2, C15_fa2, S15_fa3, C15_fa3, S15_fa4, C15_fa4;
    wire S16_fa1, C16_fa1, S16_fa2, C16_fa2, S16_fa3, C16_fa3, S16_fa4, C16_fa4;
    wire S17_fa1, C17_fa1, S17_fa2, C17_fa2, S17_fa3, C17_fa3, S17_fa4, C17_fa4;
    wire S18_fa1, C18_fa1, S18_fa2, C18_fa2, S18_fa3, C18_fa3, S18_fa4, C18_fa4;
    wire S19_fa1, C19_fa1, S19_fa2, C19_fa2, S19_fa3, C19_fa3, S19_fa4, C19_fa4;
    wire S20_fa1, C20_fa1, S20_fa2, C20_fa2, S20_fa3, C20_fa3;
    wire S21_fa1, C21_fa1, S21_fa2, C21_fa2;
    wire S22_fa1, C22_fa1;

    // 9th column
    HA ha9_1 ( .A(PP13_1[9]), .B(PP13_2[9]), .Sum(S9_ha1), .Cout(C9_ha1));

    // 10th column
    FA fa10_1 ( .A(PP13_1[10]), .B(PP13_2[10]), .Cin(PP13_3[10]), .Sum(S10_fa1), .Cout(C10_fa1));
    HA ha10_1 ( .A(PP13_4[10]), .B(PP13_5[10]), .Sum(S10_ha1), .Cout(C10_ha1));

    // 11th column
    FA fa11_1 ( .A(PP13_1[11]), .B(PP13_2[11]), .Cin(PP13_3[11]), .Sum(S11_fa1), .Cout(C11_fa1));
    FA fa11_2 ( .A(PP13_4[11]), .B(PP13_5[11]), .Cin(PP13_6[11]), .Sum(S11_fa2), .Cout(C11_fa2));
    HA ha11_1 ( .A(PP13_7[11]), .B(PP13_8[11]), .Sum(S11_ha1), .Cout(C11_ha1)); 

    // 12th column
    FA fa12_1 ( .A(PP13_1[12]), .B(PP13_2[12]), .Cin(PP13_3[12]), .Sum(S12_fa1), .Cout(C12_fa1));
    FA fa12_2 ( .A(PP13_4[12]), .B(PP13_5[12]), .Cin(PP13_6[12]), .Sum(S12_fa2), .Cout(C12_fa2));
    FA fa12_3 ( .A(PP13_7[12]), .B(PP13_8[12]), .Cin(PP13_9[12]), .Sum(S12_fa3), .Cout(C12_fa3));  
    HA ha12_1 ( .A(PP13_10[12]), .B(PP13_11[12]), .Sum(S12_ha1), .Cout(C12_ha1)); 

    // 13th column
    FA fa13_1 ( .A(PP13_1[13]), .B(PP13_2[13]), .Cin(PP13_3[13]), .Sum(S13_fa1), .Cout(C13_fa1));
    FA fa13_2 ( .A(PP13_4[13]), .B(PP13_5[13]), .Cin(PP13_6[13]), .Sum(S13_fa2), .Cout(C13_fa2));
    FA fa13_3 ( .A(PP13_7[13]), .B(PP13_8[13]), .Cin(PP13_9[13]), .Sum(S13_fa3), .Cout(C13_fa3));
    FA fa13_4 ( .A(PP13_10[13]), .B(PP13_11[13]), .Cin(PP13_12[13]), .Sum(S13_fa4), .Cout(C13_fa4));

    // 14th column
    FA fa14_1 ( .A(PP13_1[14]), .B(PP13_2[14]), .Cin(PP13_3[14]), .Sum(S14_fa1), .Cout(C14_fa1));
    FA fa14_2 ( .A(PP13_4[14]), .B(PP13_5[14]), .Cin(PP13_6[14]), .Sum(S14_fa2), .Cout(C14_fa2));
    FA fa14_3 ( .A(PP13_7[14]), .B(PP13_8[14]), .Cin(PP13_9[14]), .Sum(S14_fa3), .Cout(C14_fa3));  
    FA fa14_4 ( .A(PP13_10[14]), .B(PP13_11[14]), .Cin(PP13_12[14]), .Sum(S14_fa4), .Cout(C14_fa4)); 

    // 15th column
    FA fa15_1 ( .A(PP13_1[15]), .B(PP13_2[15]), .Cin(PP13_3[15]), .Sum(S15_fa1), .Cout(C15_fa1));
    FA fa15_2 ( .A(PP13_4[15]), .B(PP13_5[15]), .Cin(PP13_6[15]), .Sum(S15_fa2), .Cout(C15_fa2));
    FA fa15_3 ( .A(PP13_7[15]), .B(PP13_8[15]), .Cin(PP13_9[15]), .Sum(S15_fa3), .Cout(C15_fa3));  
    FA fa15_4 ( .A(PP13_10[15]), .B(PP13_11[15]), .Cin(PP13_12[15]), .Sum(S15_fa4), .Cout(C15_fa4)); 

    // 16th column
    FA fa16_1 ( .A(PP13_1[16]), .B(PP13_2[16]), .Cin(PP13_3[16]), .Sum(S16_fa1), .Cout(C16_fa1));
    FA fa16_2 ( .A(PP13_4[16]), .B(PP13_5[16]), .Cin(PP13_6[16]), .Sum(S16_fa2), .Cout(C16_fa2));
    FA fa16_3 ( .A(PP13_7[16]), .B(PP13_8[16]), .Cin(PP13_9[16]), .Sum(S16_fa3), .Cout(C16_fa3)); 
    FA fa16_4 ( .A(PP13_10[16]), .B(PP13_11[16]), .Cin(PP13_12[16]), .Sum(S16_fa4), .Cout(C16_fa4));  

    // 17th column
    FA fa17_1 ( .A(PP13_1[17]), .B(PP13_2[17]), .Cin(PP13_3[17]), .Sum(S17_fa1), .Cout(C17_fa1));
    FA fa17_2 ( .A(PP13_4[17]), .B(PP13_5[17]), .Cin(PP13_6[17]), .Sum(S17_fa2), .Cout(C17_fa2));
    FA fa17_3 ( .A(PP13_7[17]), .B(PP13_8[17]), .Cin(PP13_9[17]), .Sum(S17_fa3), .Cout(C17_fa3));
    FA fa17_4 ( .A(PP13_10[17]), .B(PP13_11[17]), .Cin(PP13_12[17]), .Sum(S17_fa4), .Cout(C17_fa4));

    // 18th column
    FA fa18_1 ( .A(PP13_1[18]), .B(PP13_2[18]), .Cin(PP13_3[18]), .Sum(S18_fa1), .Cout(C18_fa1));
    FA fa18_2 ( .A(PP13_4[18]), .B(PP13_5[18]), .Cin(PP13_6[18]), .Sum(S18_fa2), .Cout(C18_fa2));
    FA fa18_3 ( .A(PP13_7[18]), .B(PP13_8[18]), .Cin(PP13_9[18]), .Sum(S18_fa3), .Cout(C18_fa3));
    FA fa18_4 ( .A(PP13_10[18]), .B(PP13_11[18]), .Cin(PP13_12[18]), .Sum(S18_fa4), .Cout(C18_fa4));

    // 19th column
    FA fa19_1 ( .A(PP13_1[19]), .B(PP13_2[19]), .Cin(PP13_3[19]), .Sum(S19_fa1), .Cout(C19_fa1));
    FA fa19_2 ( .A(PP13_4[19]), .B(PP13_5[19]), .Cin(PP13_6[19]), .Sum(S19_fa2), .Cout(C19_fa2));
    FA fa19_3 ( .A(PP13_7[19]), .B(PP13_8[19]), .Cin(PP13_9[19]), .Sum(S19_fa3), .Cout(C19_fa3));
    FA fa19_4 ( .A(PP13_10[19]), .B(PP13_11[19]), .Cin(PP13_12[19]), .Sum(S19_fa4), .Cout(C19_fa4));

    // 20th column
    FA fa20_1 ( .A(PP13_1[20]), .B(PP13_2[20]), .Cin(PP13_3[20]), .Sum(S20_fa1), .Cout(C20_fa1));
    FA fa20_2 ( .A(PP13_4[20]), .B(PP13_5[20]), .Cin(PP13_6[20]), .Sum(S20_fa2), .Cout(C20_fa2));
    FA fa20_3 ( .A(PP13_7[20]), .B(PP13_8[20]), .Cin(PP13_9[20]), .Sum(S20_fa3), .Cout(C20_fa3));

    // 21th column
    FA fa21_1 ( .A(PP13_1[21]), .B(PP13_2[21]), .Cin(PP13_3[21]), .Sum(S21_fa1), .Cout(C21_fa1));
    FA fa21_2 ( .A(PP13_4[21]), .B(PP13_5[21]), .Cin(PP13_6[21]), .Sum(S21_fa2), .Cout(C21_fa2));

    // 22th column
    FA fa22_1 ( .A(PP13_1[22]), .B(PP13_2[22]), .Cin(PP13_3[22]), .Sum(S22_fa1), .Cout(C22_fa1));
    // Assign outputs
    assign PP9_1[30:0]  = {PP13_1[30:24], C22_fa1, C21_fa1, C20_fa1, C19_fa1, C18_fa1, C17_fa1, C16_fa1, C15_fa1, C14_fa1, C13_fa1, C12_fa1, C11_fa1, C10_fa1, C9_ha1, S9_ha1, PP13_1[8:0]};
    assign PP9_2[29:1]  = {PP13_2[29:24], PP13_1[23], C21_fa2, C20_fa2, C19_fa2, C18_fa2, C17_fa2, C16_fa2, C15_fa2, C14_fa2, C13_fa2, C12_fa2, C11_fa2, C10_ha1, S10_fa1, PP13_3[9], PP13_2[8:1]};
    assign PP9_3[28:2]  = {PP13_3[28:24], PP13_2[23], S22_fa1, C20_fa3, C19_fa3, C18_fa3, C17_fa3, C16_fa3, C15_fa3, C14_fa3, C13_fa3, C12_fa3, C11_ha1, S11_fa1, S10_ha1, PP13_4[9], PP13_3[8:2]};
    assign PP9_4[27:3]  = {PP13_4[27:24], PP13_3[23], PP13_4[22], S21_fa1, C19_fa4, C18_fa4, C17_fa4, C16_fa4, C15_fa4, C14_fa4, C13_fa4, C12_ha1, S12_fa1, S11_fa2, PP13_6[10], PP13_5[9], PP13_4[8:3]};
    assign PP9_5[26:4]  = {PP13_5[26:24], PP13_4[23], PP13_5[22], S21_fa2, S20_fa1, S19_fa1, S18_fa1, S17_fa1, S16_fa1, S15_fa1, S14_fa1, S13_fa1, S12_fa2, S11_ha1, PP13_7[10], PP13_6[9], PP13_5[8:4]};
    assign PP9_6[25:5]  = {PP13_6[25:24], PP13_5[23], PP13_6[22], PP13_7[21], S20_fa2, S19_fa2, S18_fa2, S17_fa2, S16_fa2, S15_fa2, S14_fa2, S13_fa2, S12_fa3, PP13_9[11], PP13_8[10], PP13_7[9], PP13_6[8:5]};
    assign PP9_7[24:6]  = {PP13_7[24], PP13_6[23], PP13_7[22], PP13_8[21], S20_fa3, S19_fa3, S18_fa3, S17_fa3, S16_fa3, S15_fa3, S14_fa3, S13_fa3, S12_ha1, PP13_10[11], PP13_9[10], PP13_8[9], PP13_7[8:6]};
    assign PP9_8[23:7]  = {PP13_7[23], PP13_8[22], PP13_9[21], PP13_10[20], S19_fa4, S18_fa4, S17_fa4, S16_fa4, S15_fa4, S14_fa4, S13_fa4, PP13_12[12], PP13_11[11], PP13_10[10], PP13_9[9], PP13_8[8:7]}; 
    assign PP9_9[23:8]  = {PP13_8[23], PP13_9[22], PP13_10[21], PP13_11[20], PP13_13[19], PP13_13[18], PP13_13[17], PP13_13[16], PP13_13[15], PP13_13[14], PP13_13[13], PP13_13[12], PP13_12[11], PP13_11[10], PP13_10[9], PP13_9[8]};
endmodule