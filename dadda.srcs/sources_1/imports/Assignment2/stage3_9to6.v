module stage3_9to6 (
    input  [30:0] PP9_1,
    input  [29:1] PP9_2,
    input  [28:2] PP9_3,
    input  [27:3] PP9_4,
    input  [26:4] PP9_5,
    input  [25:5] PP9_6,
    input  [24:6] PP9_7,
    input  [23:7] PP9_8,
    input  [23:8] PP9_9,
    output [30:0] PP6_1,
    output [29:1] PP6_2,
    output [28:2] PP6_3,
    output [27:3] PP6_4,
    output [26:4] PP6_5,
    output [26:5] PP6_6
);
    wire S6_ha1, C6_ha1;
    wire S7_fa1, C7_fa1, S7_ha1, C7_ha1;
    wire S8_fa1, C8_fa1, S8_fa2, C8_fa2, S8_ha1, C8_ha1;
    wire S9_fa1, C9_fa1, S9_fa2, C9_fa2, S9_fa3, C9_fa3;
    wire S10_fa1, C10_fa1, S10_fa2, C10_fa2, S10_fa3, C10_fa3;
    wire S11_fa1, C11_fa1, S11_fa2, C11_fa2, S11_fa3, C11_fa3;
    wire S12_fa1, C12_fa1, S12_fa2, C12_fa2, S12_fa3, C12_fa3;
    wire S13_fa1, C13_fa1, S13_fa2, C13_fa2, S13_fa3, C13_fa3;
    wire S14_fa1, C14_fa1, S14_fa2, C14_fa2, S14_fa3, C14_fa3;
    wire S15_fa1, C15_fa1, S15_fa2, C15_fa2, S15_fa3, C15_fa3;
    wire S16_fa1, C16_fa1, S16_fa2, C16_fa2, S16_fa3, C16_fa3;
    wire S17_fa1, C17_fa1, S17_fa2, C17_fa2, S17_fa3, C17_fa3;
    wire S18_fa1, C18_fa1, S18_fa2, C18_fa2, S18_fa3, C18_fa3;
    wire S19_fa1, C19_fa1, S19_fa2, C19_fa2, S19_fa3, C19_fa3;
    wire S20_fa1, C20_fa1, S20_fa2, C20_fa2, S20_fa3, C20_fa3;
    wire S21_fa1, C21_fa1, S21_fa2, C21_fa2, S21_fa3, C21_fa3;
    wire S22_fa1, C22_fa1, S22_fa2, C22_fa2, S22_fa3, C22_fa3;
    wire S23_fa1, C23_fa1, S23_fa2, C23_fa2, S23_fa3, C23_fa3;
    wire S24_fa1, C24_fa1, S24_fa2, C24_fa2;
    wire S25_fa1, C25_fa1;

    // 6th column
    HA ha6_1 ( .A(PP9_1[6]), .B(PP9_2[6]), .Sum(S6_ha1), .Cout(C6_ha1));

    // 7th column
    FA fa7_1 ( .A(PP9_1[7]), .B(PP9_2[7]), .Cin(PP9_3[7]), .Sum(S7_fa1), .Cout(C7_fa1));
    HA ha7_1 ( .A(PP9_4[7]), .B(PP9_5[7]), .Sum(S7_ha1), .Cout(C7_ha1));

    // 8th column
    FA fa8_1 ( .A(PP9_1[8]), .B(PP9_2[8]), .Cin(PP9_3[8]), .Sum(S8_fa1), .Cout(C8_fa1));
    FA fa8_2 ( .A(PP9_4[8]), .B(PP9_5[8]), .Cin(PP9_6[8]), .Sum(S8_fa2), .Cout(C8_fa2));
    HA ha8_1 ( .A(PP9_7[8]), .B(PP9_8[8]), .Sum(S8_ha1), .Cout(C8_ha1));

    // 9th column
    FA fa9_1 ( .A(PP9_1[9]), .B(PP9_2[9]), .Cin(PP9_3[9]), .Sum(S9_fa1), .Cout(C9_fa1));
    FA fa9_2 ( .A(PP9_4[9]), .B(PP9_5[9]), .Cin(PP9_6[9]), .Sum(S9_fa2), .Cout(C9_fa2));
    FA fa9_3 ( .A(PP9_7[9]), .B(PP9_8[9]), .Cin(PP9_9[9]), .Sum(S9_fa3), .Cout(C9_fa3));

    // 10th column
    FA fa10_1 ( .A(PP9_1[10]), .B(PP9_2[10]), .Cin(PP9_3[10]), .Sum(S10_fa1), .Cout(C10_fa1));
    FA fa10_2 ( .A(PP9_4[10]), .B(PP9_5[10]), .Cin(PP9_6[10]), .Sum(S10_fa2), .Cout(C10_fa2));
    FA fa10_3 ( .A(PP9_7[10]), .B(PP9_8[10]), .Cin(PP9_9[10]), .Sum(S10_fa3), .Cout(C10_fa3));

    // 11th column
    FA fa11_1 ( .A(PP9_1[11]), .B(PP9_2[11]), .Cin(PP9_3[11]), .Sum(S11_fa1), .Cout(C11_fa1));
    FA fa11_2 ( .A(PP9_4[11]), .B(PP9_5[11]), .Cin(PP9_6[11]), .Sum(S11_fa2), .Cout(C11_fa2));
    FA fa11_3 ( .A(PP9_7[11]), .B(PP9_8[11]), .Cin(PP9_9[11]), .Sum(S11_fa3), .Cout(C11_fa3));  

    // 12th column
    FA fa12_1 ( .A(PP9_1[12]), .B(PP9_2[12]), .Cin(PP9_3[12]), .Sum(S12_fa1), .Cout(C12_fa1));
    FA fa12_2 ( .A(PP9_4[12]), .B(PP9_5[12]), .Cin(PP9_6[12]), .Sum(S12_fa2), .Cout(C12_fa2));
    FA fa12_3 ( .A(PP9_7[12]), .B(PP9_8[12]), .Cin(PP9_9[12]), .Sum(S12_fa3), .Cout(C12_fa3));

    // 13th column
    FA fa13_1 ( .A(PP9_1[13]), .B(PP9_2[13]), .Cin(PP9_3[13]), .Sum(S13_fa1), .Cout(C13_fa1));
    FA fa13_2 ( .A(PP9_4[13]), .B(PP9_5[13]), .Cin(PP9_6[13]), .Sum(S13_fa2), .Cout(C13_fa2));
    FA fa13_3 ( .A(PP9_7[13]), .B(PP9_8[13]), .Cin(PP9_9[13]), .Sum(S13_fa3), .Cout(C13_fa3));

    // 14th column
    FA fa14_1 ( .A(PP9_1[14]), .B(PP9_2[14]), .Cin(PP9_3[14]), .Sum(S14_fa1), .Cout(C14_fa1));
    FA fa14_2 ( .A(PP9_4[14]), .B(PP9_5[14]), .Cin(PP9_6[14]), .Sum(S14_fa2), .Cout(C14_fa2));
    FA fa14_3 ( .A(PP9_7[14]), .B(PP9_8[14]), .Cin(PP9_9[14]), .Sum(S14_fa3), .Cout(C14_fa3));

    // 15th column
    FA fa15_1 ( .A(PP9_1[15]), .B(PP9_2[15]), .Cin(PP9_3[15]), .Sum(S15_fa1), .Cout(C15_fa1));
    FA fa15_2 ( .A(PP9_4[15]), .B(PP9_5[15]), .Cin(PP9_6[15]), .Sum(S15_fa2), .Cout(C15_fa2));
    FA fa15_3 ( .A(PP9_7[15]), .B(PP9_8[15]), .Cin(PP9_9[15]), .Sum(S15_fa3), .Cout(C15_fa3));  

    // 16th column
    FA fa16_1 ( .A(PP9_1[16]), .B(PP9_2[16]), .Cin(PP9_3[16]), .Sum(S16_fa1), .Cout(C16_fa1));
    FA fa16_2 ( .A(PP9_4[16]), .B(PP9_5[16]), .Cin(PP9_6[16]), .Sum(S16_fa2), .Cout(C16_fa2));
    FA fa16_3 ( .A(PP9_7[16]), .B(PP9_8[16]), .Cin(PP9_9[16]), .Sum(S16_fa3), .Cout(C16_fa3));

    // 17th column
    FA fa17_1 ( .A(PP9_1[17]), .B(PP9_2[17]), .Cin(PP9_3[17]), .Sum(S17_fa1), .Cout(C17_fa1));
    FA fa17_2 ( .A(PP9_4[17]), .B(PP9_5[17]), .Cin(PP9_6[17]), .Sum(S17_fa2),  .Cout(C17_fa2));
    FA fa17_3 ( .A(PP9_7[17]), .B(PP9_8[17]), .Cin(PP9_9[17]), .Sum(S17_fa3), .Cout(C17_fa3));

    // 18th column
    FA fa18_1 ( .A(PP9_1[18]), .B(PP9_2[18]), .Cin(PP9_3[18]), .Sum(S18_fa1), .Cout(C18_fa1));
    FA fa18_2 ( .A(PP9_4[18]), .B(PP9_5[18]), .Cin(PP9_6[18]), .Sum(S18_fa2), .Cout(C18_fa2));
    FA fa18_3 ( .A(PP9_7[18]), .B(PP9_8[18]), .Cin(PP9_9[18]), .Sum(S18_fa3), .Cout(C18_fa3));

    // 19th column
    FA fa19_1 ( .A(PP9_1[19]), .B(PP9_2[19]), .Cin(PP9_3[19]), .Sum(S19_fa1), .Cout(C19_fa1));
    FA fa19_2 ( .A(PP9_4[19]), .B(PP9_5[19]), .Cin(PP9_6[19]), .Sum(S19_fa2), .Cout(C19_fa2));
    FA fa19_3 ( .A(PP9_7[19]), .B(PP9_8[19]), .Cin(PP9_9[19]), .Sum(S19_fa3), .Cout(C19_fa3));

    // 20th column
    FA fa20_1 ( .A(PP9_1[20]), .B(PP9_2[20]), .Cin(PP9_3[20]), .Sum(S20_fa1), .Cout(C20_fa1));
    FA fa20_2 ( .A(PP9_4[20]), .B(PP9_5[20]), .Cin(PP9_6[20]), .Sum(S20_fa2), .Cout(C20_fa2));
    FA fa20_3 ( .A(PP9_7[20]), .B(PP9_8[20]), .Cin(PP9_9[20]), .Sum(S20_fa3), .Cout(C20_fa3));

    // 21th column
    FA fa21_1 ( .A(PP9_1[21]), .B(PP9_2[21]), .Cin(PP9_3[21]), .Sum(S21_fa1), .Cout(C21_fa1));
    FA fa21_2 ( .A(PP9_4[21]), .B(PP9_5[21]), .Cin(PP9_6[21]), .Sum(S21_fa2), .Cout(C21_fa2));
    FA fa21_3 ( .A(PP9_7[21]), .B(PP9_8[21]), .Cin(PP9_9[21]), .Sum(S21_fa3), .Cout(C21_fa3));

    // 22th column
    FA fa22_1 ( .A(PP9_1[22]), .B(PP9_2[22]), .Cin(PP9_3[22]), .Sum(S22_fa1), .Cout(C22_fa1));
    FA fa22_2 ( .A(PP9_4[22]), .B(PP9_5[22]), .Cin(PP9_6[22]), .Sum(S22_fa2), .Cout(C22_fa2));
    FA fa22_3 ( .A(PP9_7[22]), .B(PP9_8[22]), .Cin(PP9_9[22]), .Sum(S22_fa3), .Cout(C22_fa3));

    // 23th column
    FA fa23_1 ( .A(PP9_1[23]), .B(PP9_2[23]), .Cin(PP9_3[23]), .Sum(S23_fa1), .Cout(C23_fa1));
    FA fa23_2 ( .A(PP9_4[23]), .B(PP9_5[23]), .Cin(PP9_6[23]), .Sum(S23_fa2), .Cout(C23_fa2));
    FA fa23_3 ( .A(PP9_7[23]), .B(PP9_8[23]), .Cin(PP9_9[23]), .Sum(S23_fa3), .Cout(C23_fa3));

    // 24th column
    FA fa24_1 ( .A(PP9_1[24]), .B(PP9_2[24]), .Cin(PP9_3[24]), .Sum(S24_fa1), .Cout(C24_fa1));
    FA fa24_2 ( .A(PP9_4[24]), .B(PP9_5[24]), .Cin(PP9_6[24]), .Sum(S24_fa2), .Cout(C24_fa2));

    // 25th column
    FA fa25_1 ( .A(PP9_1[25]), .B(PP9_2[25]), .Cin(PP9_3[25]), .Sum(S25_fa1), .Cout(C25_fa1));

    // Assign outputs
    assign PP6_1[30:0]  = {PP9_1[30:27], C25_fa1, C24_fa1, C23_fa1, C22_fa1, C21_fa1, C20_fa1, C19_fa1, C18_fa1, C17_fa1, C16_fa1, C15_fa1, C14_fa1, C13_fa1, C12_fa1, C11_fa1, C10_fa1, C9_fa1, C8_fa1, C7_fa1, C6_ha1, S6_ha1, PP9_1[5:0]};
    assign PP6_2[29:1]  = {PP9_2[29:27], PP9_1[26], C24_fa2, C23_fa2, C22_fa2, C21_fa2, C20_fa2, C19_fa2, C18_fa2, C17_fa2, C16_fa2, C15_fa2, C14_fa2, C13_fa2, C12_fa2, C11_fa2, C10_fa2, C9_fa2, C8_fa2, C7_ha1, S7_fa1, PP9_3[6], PP9_2[5:1]};
    assign PP6_3[28:2]  = {PP9_3[28:27], PP9_2[26], S25_fa1, C23_fa3, C22_fa3, C21_fa3, C20_fa3, C19_fa3, C18_fa3, C17_fa3, C16_fa3, C15_fa3, C14_fa3, C13_fa3, C12_fa3, C11_fa3, C10_fa3, C9_fa3, C8_ha1, S8_fa1, S7_ha1, PP9_4[6], PP9_3[5:2]};
    assign PP6_4[27:3]  = {PP9_4[27], PP9_3[26], PP9_4[25], S24_fa1, S23_fa1, S22_fa1, S21_fa1, S20_fa1, S19_fa1, S18_fa1, S17_fa1, S16_fa1, S15_fa1, S14_fa1, S13_fa1, S12_fa1, S11_fa1, S10_fa1, S9_fa1, S8_fa2, PP9_6[7], PP9_5[6], PP9_4[5:3]};
    assign PP6_5[26:4]  = {PP9_4[26], PP9_5[25], S24_fa2, S23_fa2, S22_fa2, S21_fa2, S20_fa2, S19_fa2, S18_fa2, S17_fa2, S16_fa2, S15_fa2, S14_fa2, S13_fa2, S12_fa2, S11_fa2, S10_fa2, S9_fa2, S8_ha1, PP9_7[7], PP9_6[6], PP9_5[5:4]};
    assign PP6_6[26:5]  = {PP9_5[26], PP9_6[25], PP9_7[24], S23_fa3, S22_fa3, S21_fa3, S20_fa3, S19_fa3, S18_fa3, S17_fa3, S16_fa3, S15_fa3, S14_fa3, S13_fa3, S12_fa3, S11_fa3, S10_fa3, S9_fa3, PP9_9[8], PP9_8[7], PP9_7[6], PP9_6[5]};

endmodule