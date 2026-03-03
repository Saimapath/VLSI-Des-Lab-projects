module stage4_6to4 (
    input  [30:0] PP6_1,
    input  [29:1] PP6_2,
    input  [28:2] PP6_3,
    input  [27:3] PP6_4,
    input  [26:4] PP6_5,
    input  [26:5] PP6_6,
    output [30:0] PP4_1,
    output [29:1] PP4_2,
    output [28:2] PP4_3,
    output [28:3] PP4_4
);
    wire S4_ha1, C4_ha1;
    wire S5_fa1, C5_fa1, S5_ha1, C5_ha1;
    wire S6_fa1, C6_fa1, S6_fa2, C6_fa2;
    wire S7_fa1, C7_fa1, S7_fa2, C7_fa2;
    wire S8_fa1, C8_fa1, S8_fa2, C8_fa2;
    wire S9_fa1, C9_fa1, S9_fa2, C9_fa2;
    wire S10_fa1, C10_fa1, S10_fa2, C10_fa2;
    wire S11_fa1, C11_fa1, S11_fa2, C11_fa2;
    wire S12_fa1, C12_fa1, S12_fa2, C12_fa2;            
    wire S13_fa1, C13_fa1, S13_fa2, C13_fa2;
    wire S14_fa1, C14_fa1, S14_fa2, C14_fa2;
    wire S15_fa1, C15_fa1, S15_fa2, C15_fa2;
    wire S16_fa1, C16_fa1, S16_fa2, C16_fa2;
    wire S17_fa1, C17_fa1, S17_fa2, C17_fa2;
    wire S18_fa1, C18_fa1, S18_fa2, C18_fa2;
    wire S19_fa1, C19_fa1, S19_fa2, C19_fa2;
    wire S20_fa1, C20_fa1, S20_fa2, C20_fa2;
    wire S21_fa1, C21_fa1, S21_fa2, C21_fa2;
    wire S22_fa1, C22_fa1, S22_fa2, C22_fa2;
    wire S23_fa1, C23_fa1, S23_fa2, C23_fa2;
    wire S24_fa1, C24_fa1, S24_fa2, C24_fa2;
    wire S25_fa1, C25_fa1, S25_fa2, C25_fa2;
    wire S26_fa1, C26_fa1, S26_fa2, C26_fa2;
    wire S27_fa1, C27_fa1;

    // 4th column
    HA ha4_1 ( .A(PP6_1[4]), .B(PP6_2[4]), .Sum(S4_ha1), .Cout(C4_ha1));

    // 5th column
    FA fa5_1 ( .A(PP6_1[5]), .B(PP6_2[5]), .Cin(PP6_3[5]), .Sum(S5_fa1), .Cout(C5_fa1));
    HA ha5_1 ( .A(PP6_4[5]), .B(PP6_5[5]), .Sum(S5_ha1), .Cout(C5_ha1));

    // 6th column
    FA fa6_1 ( .A(PP6_1[6]), .B(PP6_2[6]), .Cin(PP6_3[6]), .Sum(S6_fa1), .Cout(C6_fa1));
    FA fa6_2 ( .A(PP6_4[6]), .B(PP6_5[6]), .Cin(PP6_6[6]), .Sum(S6_fa2), .Cout(C6_fa2));

    // 7th column
    FA fa7_1 ( .A(PP6_1[7]), .B(PP6_2[7]), .Cin(PP6_3[7]), .Sum(S7_fa1), .Cout(C7_fa1));
    FA fa7_2 ( .A(PP6_4[7]), .B(PP6_5[7]), .Cin(PP6_6[7]), .Sum(S7_fa2), .Cout(C7_fa2));

    // 8th column
    FA fa8_1 ( .A(PP6_1[8]), .B(PP6_2[8]), .Cin(PP6_3[8]), .Sum(S8_fa1), .Cout(C8_fa1));
    FA fa8_2 ( .A(PP6_4[8]), .B(PP6_5[8]), .Cin(PP6_6[8]), .Sum(S8_fa2), .Cout(C8_fa2));

    // 9th column
    FA fa9_1 ( .A(PP6_1[9]), .B(PP6_2[9]), .Cin(PP6_3[9]), .Sum(S9_fa1), .Cout(C9_fa1));
    FA fa9_2 ( .A(PP6_4[9]), .B(PP6_5[9]), .Cin(PP6_6[9]), .Sum(S9_fa2), .Cout(C9_fa2));

    // 10th column
    FA fa10_1 ( .A(PP6_1[10]), .B(PP6_2[10]), .Cin(PP6_3[10]), .Sum(S10_fa1), .Cout(C10_fa1));
    FA fa10_2 ( .A(PP6_4[10]), .B(PP6_5[10]), .Cin(PP6_6[10]), .Sum(S10_fa2), .Cout(C10_fa2));

    // 11th column
    FA fa11_1 ( .A(PP6_1[11]), .B(PP6_2[11]), .Cin(PP6_3[11]), .Sum(S11_fa1), .Cout(C11_fa1));
    FA fa11_2 ( .A(PP6_4[11]), .B(PP6_5[11]), .Cin(PP6_6[11]), .Sum(S11_fa2), .Cout(C11_fa2));

    // 12th column
    FA fa12_1 ( .A(PP6_1[12]), .B(PP6_2[12]), .Cin(PP6_3[12]), .Sum(S12_fa1), .Cout(C12_fa1));
    FA fa12_2 ( .A(PP6_4[12]), .B(PP6_5[12]), .Cin(PP6_6[12]), .Sum(S12_fa2), .Cout(C12_fa2));

    // 13th column
    FA fa13_1 ( .A(PP6_1[13]), .B(PP6_2[13]), .Cin(PP6_3[13]), .Sum(S13_fa1), .Cout(C13_fa1));
    FA fa13_2 ( .A(PP6_4[13]), .B(PP6_5[13]), .Cin(PP6_6[13]), .Sum(S13_fa2), .Cout(C13_fa2));

    // 14th column
    FA fa14_1 ( .A(PP6_1[14]), .B(PP6_2[14]), .Cin(PP6_3[14]), .Sum(S14_fa1), .Cout(C14_fa1));
    FA fa14_2 ( .A(PP6_4[14]), .B(PP6_5[14]), .Cin(PP6_6[14]), .Sum(S14_fa2), .Cout(C14_fa2));

    // 15th column
    FA fa15_1 ( .A(PP6_1[15]), .B(PP6_2[15]), .Cin(PP6_3[15]), .Sum(S15_fa1), .Cout(C15_fa1));
    FA fa15_2 ( .A(PP6_4[15]), .B(PP6_5[15]), .Cin(PP6_6[15]), .Sum(S15_fa2), .Cout(C15_fa2));

    // 16th column
    FA fa16_1 ( .A(PP6_1[16]), .B(PP6_2[16]), .Cin(PP6_3[16]), .Sum(S16_fa1), .Cout(C16_fa1));
    FA fa16_2 ( .A(PP6_4[16]), .B(PP6_5[16]), .Cin(PP6_6[16]), .Sum(S16_fa2), .Cout(C16_fa2));

    // 17th column
    FA fa17_1 ( .A(PP6_1[17]), .B(PP6_2[17]), .Cin(PP6_3[17]), .Sum(S17_fa1), .Cout(C17_fa1));
    FA fa17_2 ( .A(PP6_4[17]), .B(PP6_5[17]), .Cin(PP6_6[17]), .Sum(S17_fa2), .Cout(C17_fa2));

    // 18th column
    FA fa18_1 ( .A(PP6_1[18]), .B(PP6_2[18]), .Cin(PP6_3[18]), .Sum(S18_fa1), .Cout(C18_fa1));
    FA fa18_2 ( .A(PP6_4[18]), .B(PP6_5[18]), .Cin(PP6_6[18]), .Sum(S18_fa2), .Cout(C18_fa2));

    // 19th column
    FA fa19_1 ( .A(PP6_1[19]), .B(PP6_2[19]), .Cin(PP6_3[19]), .Sum(S19_fa1), .Cout(C19_fa1));
    FA fa19_2 ( .A(PP6_4[19]), .B(PP6_5[19]), .Cin(PP6_6[19]), .Sum(S19_fa2), .Cout(C19_fa2));

    // 20th column
    FA fa20_1 ( .A(PP6_1[20]), .B(PP6_2[20]), .Cin(PP6_3[20]), .Sum(S20_fa1), .Cout(C20_fa1));
    FA fa20_2 ( .A(PP6_4[20]), .B(PP6_5[20]), .Cin(PP6_6[20]), .Sum(S20_fa2), .Cout(C20_fa2));

    // 21th column
    FA fa21_1 ( .A(PP6_1[21]), .B(PP6_2[21]), .Cin(PP6_3[21]), .Sum(S21_fa1), .Cout(C21_fa1));
    FA fa21_2 ( .A(PP6_4[21]), .B(PP6_5[21]), .Cin(PP6_6[21]), .Sum(S21_fa2), .Cout(C21_fa2));

    // 22th column
    FA fa22_1 ( .A(PP6_1[22]), .B(PP6_2[22]), .Cin(PP6_3[22]), .Sum(S22_fa1), .Cout(C22_fa1));
    FA fa22_2 ( .A(PP6_4[22]), .B(PP6_5[22]), .Cin(PP6_6[22]), .Sum(S22_fa2), .Cout(C22_fa2));

    // 23th column
    FA fa23_1 ( .A(PP6_1[23]), .B(PP6_2[23]), .Cin(PP6_3[23]), .Sum(S23_fa1), .Cout(C23_fa1));
    FA fa23_2 ( .A(PP6_4[23]), .B(PP6_5[23]), .Cin(PP6_6[23]), .Sum(S23_fa2), .Cout(C23_fa2));

    // 24th column
    FA fa24_1 ( .A(PP6_1[24]), .B(PP6_2[24]), .Cin(PP6_3[24]), .Sum(S24_fa1), .Cout(C24_fa1));
    FA fa24_2 ( .A(PP6_4[24]), .B(PP6_5[24]), .Cin(PP6_6[24]), .Sum(S24_fa2), .Cout(C24_fa2));

    // 25th column
    FA fa25_1 ( .A(PP6_1[25]), .B(PP6_2[25]), .Cin(PP6_3[25]), .Sum(S25_fa1), .Cout(C25_fa1));
    FA fa25_2 ( .A(PP6_4[25]), .B(PP6_5[25]), .Cin(PP6_6[25]), .Sum(S25_fa2), .Cout(C25_fa2));  

    // 26th column
    FA fa26_1 ( .A(PP6_1[26]), .B(PP6_2[26]), .Cin(PP6_3[26]), .Sum(S26_fa1), .Cout(C26_fa1));
    FA fa26_2 ( .A(PP6_4[26]), .B(PP6_5[26]), .Cin(PP6_6[26]), .Sum(S26_fa2), .Cout(C26_fa2));
    // 27th column
    FA fa27_1 ( .A(PP6_1[27]), .B(PP6_2[27]), .Cin(PP6_3[27]), .Sum(S27_fa1), .Cout(C27_fa1));  

    // Assign outputs
    assign PP4_1 = {PP6_1[30:29], C27_fa1, C26_fa1, C25_fa1, C24_fa1, C23_fa1, C22_fa1, C21_fa1, C20_fa1, C19_fa1, C18_fa1, C17_fa1, C16_fa1, C15_fa1, C14_fa1, C13_fa1, C12_fa1, C11_fa1, C10_fa1, C9_fa1, C8_fa1, C7_fa1, C6_fa1, C5_fa1, C4_ha1, S4_ha1, PP6_1[3:0]};
    assign PP4_2 = {PP6_2[29], PP6_1[28], C26_fa2, C25_fa2, C24_fa2, C23_fa2, C22_fa2, C21_fa2, C20_fa2, C19_fa2, C18_fa2, C17_fa2, C16_fa2, C15_fa2, C14_fa2, C13_fa2, C12_fa2, C11_fa2, C10_fa2, C9_fa2, C8_fa2, C7_fa2, C6_fa2, C5_ha1, S5_fa1, PP6_3[4], PP6_2[3:1]};
    assign PP4_3 = {PP6_2[28], S27_fa1, S26_fa1, S25_fa1, S24_fa1, S23_fa1, S22_fa1, S21_fa1, S20_fa1, S19_fa1, S18_fa1, S17_fa1, S16_fa1, S15_fa1, S14_fa1, S13_fa1, S12_fa1, S11_fa1, S10_fa1, S9_fa1, S8_fa1, S7_fa1, S6_fa1, S5_ha1, PP6_4[4], PP6_3[3:2]};
    assign PP4_4 = {PP6_3[28], PP6_4[27], S26_fa2, S25_fa2, S24_fa2, S23_fa2, S22_fa2, S21_fa2, S20_fa2, S19_fa2, S18_fa2, S17_fa2, S16_fa2, S15_fa2, S14_fa2, S13_fa2, S12_fa2, S11_fa2, S10_fa2, S9_fa2, S8_fa2, S7_fa2, S6_fa2, PP6_6[5], PP6_5[4], PP6_4[3]};

endmodule