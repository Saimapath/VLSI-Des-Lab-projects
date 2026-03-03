module stage6_3to2 (
    input  [30:0] PP3_1,
    input  [29:1] PP3_2,
    input  [29:2] PP3_3,
    output [30:0] PP2_1,
    output [30:1] PP2_2
);
    wire S2_ha1, C2_ha1;
    wire S3_fa1, C3_fa1;
    wire S4_fa1, C4_fa1;
    wire S5_fa1, C5_fa1;
    wire S6_fa1, C6_fa1;
    wire S7_fa1, C7_fa1;    
    wire S8_fa1, C8_fa1;
    wire S9_fa1, C9_fa1;
    wire S10_fa1, C10_fa1;
    wire S11_fa1, C11_fa1;
    wire S12_fa1, C12_fa1;
    wire S13_fa1, C13_fa1;
    wire S14_fa1, C14_fa1;
    wire S15_fa1, C15_fa1;
    wire S16_fa1, C16_fa1;
    wire S17_fa1, C17_fa1;
    wire S18_fa1, C18_fa1;
    wire S19_fa1, C19_fa1;
    wire S20_fa1, C20_fa1;
    wire S21_fa1, C21_fa1;
    wire S22_fa1, C22_fa1;
    wire S23_fa1, C23_fa1;
    wire S24_fa1, C24_fa1;
    wire S25_fa1, C25_fa1;
    wire S26_fa1, C26_fa1;
    wire S27_fa1, C27_fa1;
    wire S28_fa1, C28_fa1;
    wire S29_fa1, C29_fa1;
    
    // 2nd column
    HA ha2_1 ( .A(PP3_1[2]), .B(PP3_2[2]), .Sum(S2_ha1), .Cout(C2_ha1));
    // 3rd column
    FA fa3_1 ( .A(PP3_1[3]), .B(PP3_2[3]), .Cin(PP3_3[3]), .Sum(S3_fa1), .Cout(C3_fa1));
    // 4th column
    FA fa4_1 ( .A(PP3_1[4]), .B(PP3_2[4]), .Cin(PP3_3[4]), .Sum(S4_fa1), .Cout(C4_fa1));
    // 5th column
    FA fa5_1 ( .A(PP3_1[5]), .B(PP3_2[5]), .Cin(PP3_3[5]), .Sum(S5_fa1), .Cout(C5_fa1));
    // 6th column
    FA fa6_1 ( .A(PP3_1[6]), .B(PP3_2[6]), .Cin(PP3_3[6]), .Sum(S6_fa1), .Cout(C6_fa1));
    // 7th column
    FA fa7_1 ( .A(PP3_1[7]), .B(PP3_2[7]), .Cin(PP3_3[7]), .Sum(S7_fa1), .Cout(C7_fa1));
    // 8th column   
    FA fa8_1 ( .A(PP3_1[8]), .B(PP3_2[8]), .Cin(PP3_3[8]), .Sum(S8_fa1), .Cout(C8_fa1));    
    // 9th column
    FA fa9_1 ( .A(PP3_1[9]), .B(PP3_2[9]), .Cin(PP3_3[9]), .Sum(S9_fa1), .Cout(C9_fa1));
    // 10th column
    FA fa10_1 (.A(PP3_1[10]),.B(PP3_2[10]),.Cin(PP3_3[10]), .Sum(S10_fa1), .Cout(C10_fa1));
    // 11th column
    FA fa11_1 (.A(PP3_1[11]),.B(PP3_2[11]),.Cin(PP3_3[11]), .Sum(S11_fa1), .Cout(C11_fa1));
    // 12th column
    FA fa12_1 (.A(PP3_1[12]),.B(PP3_2[12]),.Cin(PP3_3[12]), .Sum(S12_fa1), .Cout(C12_fa1));
    // 13th column
    FA fa13_1 (.A(PP3_1[13]),.B(PP3_2[13]),.Cin(PP3_3[13]), .Sum(S13_fa1), .Cout(C13_fa1));
    // 14th column
    FA fa14_1 (.A(PP3_1[14]),.B(PP3_2[14]),.Cin(PP3_3[14]), .Sum(S14_fa1), .Cout(C14_fa1));
    // 15th column
    FA fa15_1 (.A(PP3_1[15]),.B(PP3_2[15]),.Cin(PP3_3[15]), .Sum(S15_fa1), .Cout(C15_fa1));
    // 16th column
    FA fa16_1 (.A(PP3_1[16]),.B(PP3_2[16]),.Cin(PP3_3[16]), .Sum(S16_fa1), .Cout(C16_fa1));
    // 17th column
    FA fa17_1 (.A(PP3_1[17]),.B(PP3_2[17]),.Cin(PP3_3[17]), .Sum(S17_fa1), .Cout(C17_fa1));
    // 18th column
    FA fa18_1 (.A(PP3_1[18]),.B(PP3_2[18]),.Cin(PP3_3[18]), .Sum(S18_fa1), .Cout(C18_fa1));
    // 19th column
    FA fa19_1 (.A(PP3_1[19]),.B(PP3_2[19]),.Cin(PP3_3[19]), .Sum(S19_fa1), .Cout(C19_fa1));
    // 20th column
    FA fa20_1 (.A(PP3_1[20]),.B(PP3_2[20]),.Cin(PP3_3[20]), .Sum(S20_fa1), .Cout(C20_fa1));
    // 21th column
    FA fa21_1 (.A(PP3_1[21]),.B(PP3_2[21]),.Cin(PP3_3[21]), .Sum(S21_fa1), .Cout(C21_fa1));
    // 22th column
    FA fa22_1 (.A(PP3_1[22]),.B(PP3_2[22]),.Cin(PP3_3[22]), .Sum(S22_fa1), .Cout(C22_fa1));
    // 23th column
    FA fa23_1 (.A(PP3_1[23]),.B(PP3_2[23]),.Cin(PP3_3[23]), .Sum(S23_fa1), .Cout(C23_fa1));
    // 24th column
    FA fa24_1 (.A(PP3_1[24]),.B(PP3_2[24]),.Cin(PP3_3[24]), .Sum(S24_fa1), .Cout(C24_fa1));
    // 25th column
    FA fa25_1 (.A(PP3_1[25]),.B(PP3_2[25]),.Cin(PP3_3[25]), .Sum(S25_fa1), .Cout(C25_fa1));
    // 26th column
    FA fa26_1 (.A(PP3_1[26]),.B(PP3_2[26]),.Cin(PP3_3[26]), .Sum(S26_fa1), .Cout(C26_fa1));
    // 27th column
    FA fa27_1 (.A(PP3_1[27]),.B(PP3_2[27]),.Cin(PP3_3[27]), .Sum(S27_fa1), .Cout(C27_fa1));
    // 28th column
    FA fa28_1 (.A(PP3_1[28]),.B(PP3_2[28]),.Cin(PP3_3[28]), .Sum(S28_fa1), .Cout(C28_fa1));
    // 29th column
    FA fa29_1 (.A(PP3_1[29]),.B(PP3_2[29]),.Cin(PP3_3[29]), .Sum(S29_fa1), .Cout(C29_fa1));


    // Assign outputs
    assign PP2_1 = {C29_fa1, C28_fa1, C27_fa1, C26_fa1, C25_fa1, C24_fa1, C23_fa1, C22_fa1, C21_fa1, C20_fa1, C19_fa1, C18_fa1, C17_fa1, C16_fa1, C15_fa1, C14_fa1, C13_fa1, C12_fa1, C11_fa1, C10_fa1, C9_fa1, C8_fa1, C7_fa1, C6_fa1, C5_fa1, C4_fa1, C3_fa1, C2_ha1, S2_ha1, PP3_1[1:0]}; 
    assign PP2_2 = {PP3_1[30], S29_fa1, S28_fa1, S27_fa1, S26_fa1, S25_fa1, S24_fa1, S23_fa1, S22_fa1, S21_fa1, S20_fa1, S19_fa1, S18_fa1, S17_fa1, S16_fa1, S15_fa1, S14_fa1, S13_fa1, S12_fa1, S11_fa1, S10_fa1, S9_fa1, S8_fa1, S7_fa1, S6_fa1, S5_fa1, S4_fa1, S3_fa1, PP3_3[2], PP3_2[1]};

endmodule 