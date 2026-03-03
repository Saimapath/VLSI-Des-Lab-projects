module brentKung_adder (
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] Sum,
    output Cout
); 
    //wire [31:0] B;
    wire [31:0] P;
    wire [31:0] G;
    wire [15:0] P1, G1;
    wire [7:0] P2, G2;
    wire [3:0] P3, G3;
    wire [1:0] P4, G4;
    wire P5, G5;
    wire P6, G6;
    wire [2:0] P7, G7;
    wire [6:0] P8, G8;
    wire [14:0] P9, G9;

    wire [31:0] CO;

    // genvar i;
    // generate 
    //     for (i = 0; i < 32; i = i + 1) begin : gen_instances
    //     mux2x1 u0 (
    //         .a(Bin[i]),
    //         .b(~Bin[i]),
    //         .c(Cin),
    //         .d(B[i])
    //     );
    // end
    // endgenerate

    genvar j;
    generate
        for (j=0; j<32; j = j+1) begin : pgBLOCKS
        pg_block I0 (
            .a(A[j]),
            .b(B[j]),
            .P(P[j]),
            .G(G[j])
        );
        end
    endgenerate
    
    // 16 BLACK BOX
    black_cell J0 ( .Gik(G[0]), .Pik(P[0]), .Gkj(G[1]), .Pkj(P[1]), .Gij(G1[0]), .Pij(P1[0]) );
    black_cell J1 ( .Gik(G[2]), .Pik(P[2]), .Gkj(G[3]), .Pkj(P[3]), .Gij(G1[1]), .Pij(P1[1]) );
    black_cell J2 ( .Gik(G[4]), .Pik(P[4]), .Gkj(G[5]), .Pkj(P[5]), .Gij(G1[2]), .Pij(P1[2]) );
    black_cell J3 ( .Gik(G[6]), .Pik(P[6]), .Gkj(G[7]), .Pkj(P[7]), .Gij(G1[3]), .Pij(P1[3]) );
    black_cell J4 ( .Gik(G[8]), .Pik(P[8]), .Gkj(G[9]), .Pkj(P[9]), .Gij(G1[4]), .Pij(P1[4]) );
    black_cell J5 ( .Gik(G[10]), .Pik(P[10]), .Gkj(G[11]), .Pkj(P[11]), .Gij(G1[5]), .Pij(P1[5]) );
    black_cell J6 ( .Gik(G[12]), .Pik(P[12]), .Gkj(G[13]), .Pkj(P[13]), .Gij(G1[6]), .Pij(P1[6]) );
    black_cell J7 ( .Gik(G[14]), .Pik(P[14]), .Gkj(G[15]), .Pkj(P[15]), .Gij(G1[7]), .Pij(P1[7]) );
    black_cell J8 ( .Gik(G[16]), .Pik(P[16]), .Gkj(G[17]), .Pkj(P[17]), .Gij(G1[8]), .Pij(P1[8]) );
    black_cell J9 ( .Gik(G[18]), .Pik(P[18]), .Gkj(G[19]), .Pkj(P[19]), .Gij(G1[9]), .Pij(P1[9]) );
    black_cell J10 ( .Gik(G[20]), .Pik(P[20]), .Gkj(G[21]), .Pkj(P[21]), .Gij(G1[10]), .Pij(P1[10]) );
    black_cell J11 ( .Gik(G[22]), .Pik(P[22]), .Gkj(G[23]), .Pkj(P[23]), .Gij(G1[11]), .Pij(P1[11]) );
    black_cell J12 ( .Gik(G[24]), .Pik(P[24]), .Gkj(G[25]), .Pkj(P[25]), .Gij(G1[12]), .Pij(P1[12]) );
    black_cell J13 ( .Gik(G[26]), .Pik(P[26]), .Gkj(G[27]), .Pkj(P[27]), .Gij(G1[13]), .Pij(P1[13]) );
    black_cell J14 ( .Gik(G[28]), .Pik(P[28]), .Gkj(G[29]), .Pkj(P[29]), .Gij(G1[14]), .Pij(P1[14]) );
    black_cell J15 ( .Gik(G[30]), .Pik(P[30]), .Gkj(G[31]), .Pkj(P[31]), .Gij(G1[15]), .Pij(P1[15]) );


    // 8 BLACK BOX
    black_cell F0 ( .Gik(G1[0]), .Pik(P1[0]), .Gkj(G1[1]), .Pkj(P1[1]), .Gij(G2[0]), .Pij(P2[0]) );
    black_cell F1 ( .Gik(G1[2]), .Pik(P1[2]), .Gkj(G1[3]), .Pkj(P1[3]), .Gij(G2[1]), .Pij(P2[1]) );
    black_cell F2 ( .Gik(G1[4]), .Pik(P1[4]), .Gkj(G1[5]), .Pkj(P1[5]), .Gij(G2[2]), .Pij(P2[2]) );
    black_cell F3 ( .Gik(G1[6]), .Pik(P1[6]), .Gkj(G1[7]), .Pkj(P1[7]), .Gij(G2[3]), .Pij(P2[3]) );
    black_cell F4 ( .Gik(G1[8]), .Pik(P1[8]), .Gkj(G1[9]), .Pkj(P1[9]), .Gij(G2[4]), .Pij(P2[4]) );
    black_cell F5 ( .Gik(G1[10]), .Pik(P1[10]), .Gkj(G1[11]), .Pkj(P1[11]), .Gij(G2[5]), .Pij(P2[5]) );
    black_cell F6 ( .Gik(G1[12]), .Pik(P1[12]), .Gkj(G1[13]), .Pkj(P1[13]), .Gij(G2[6]), .Pij(P2[6]) );
    black_cell F7 ( .Gik(G1[14]), .Pik(P1[14]), .Gkj(G1[15]), .Pkj(P1[15]), .Gij(G2[7]), .Pij(P2[7]) );

    // 4 BLACK BOX
    black_cell H0 ( .Gik(G2[0]), .Pik(P2[0]), .Gkj(G2[1]), .Pkj(P2[1]), .Gij(G3[0]), .Pij(P3[0]) );
    black_cell H1 ( .Gik(G2[2]), .Pik(P2[2]), .Gkj(G2[3]), .Pkj(P2[3]), .Gij(G3[1]), .Pij(P3[1]) );
    black_cell H2 ( .Gik(G2[4]), .Pik(P2[4]), .Gkj(G2[5]), .Pkj(P2[5]), .Gij(G3[2]), .Pij(P3[2]) );
    black_cell H3 ( .Gik(G2[6]), .Pik(P2[6]), .Gkj(G2[7]), .Pkj(P2[7]), .Gij(G3[3]), .Pij(P3[3]) );

    // 2 BLACK BOX
    black_cell K0 ( .Gik(G3[0]), .Pik(P3[0]), .Gkj(G3[1]), .Pkj(P3[1]), .Gij(G4[0]), .Pij(P4[0]) );
    black_cell K1 ( .Gik(G3[2]), .Pik(P3[2]), .Gkj(G3[3]), .Pkj(P3[3]), .Gij(G4[1]), .Pij(P4[1]) );

    // 1 BLACK BOX
    black_cell L0 ( .Gik(G4[0]), .Pik(P4[0]), .Gkj(G4[1]), .Pkj(P4[1]), .Gij(G5), .Pij(P5) );

    // DOWNWARD TREE
    // 1 BLACK BOX
    black_cell M0 ( .Gik(G4[0]), .Pik(P4[0]), .Gkj(G3[2]), .Pkj(P3[2]), .Gij(G6), .Pij(P6) );

    // 3 BLACK BOX
    black_cell N0 ( .Gik(G3[0]), .Pik(P3[0]), .Gkj(G2[2]), .Pkj(P2[2]), .Gij(G7[0]), .Pij(P7[0]) );
    black_cell N1 ( .Gik(G4[0]), .Pik(P4[0]), .Gkj(G2[4]), .Pkj(P2[4]), .Gij(G7[1]), .Pij(P7[1]) );
    black_cell N2 ( .Gik(G6), .Pik(P6), .Gkj(G2[6]), .Pkj(P2[6]), .Gij(G7[2]), .Pij(P7[2]) );

    // 7 BLACK BOX
    black_cell S0 ( .Gik(G2[0]), .Pik(P2[0]), .Gkj(G1[2]), .Pkj(P1[2]), .Gij(G8[0]), .Pij(P8[0]) );
    black_cell S1 ( .Gik(G3[0]), .Pik(P3[0]), .Gkj(G1[4]), .Pkj(P1[4]), .Gij(G8[1]), .Pij(P8[1]) );
    black_cell S2 ( .Gik(G7[0]), .Pik(P7[0]), .Gkj(G1[6]), .Pkj(P1[6]), .Gij(G8[2]), .Pij(P8[2]) );
    black_cell S3 ( .Gik(G4[0]), .Pik(P4[0]), .Gkj(G1[8]), .Pkj(P1[8]), .Gij(G8[3]), .Pij(P8[3]) );
    black_cell S4 ( .Gik(G7[1]), .Pik(P7[1]), .Gkj(G1[10]), .Pkj(P1[10]), .Gij(G8[4]), .Pij(P8[4]) );
    black_cell S5 ( .Gik(G6), .Pik(P6), .Gkj(G1[12]), .Pkj(P1[12]), .Gij(G8[5]), .Pij(P8[5]) );
    black_cell S6 ( .Gik(G7[2]), .Pik(P7[2]), .Gkj(G1[14]), .Pkj(P1[14]), .Gij(G8[6]), .Pij(P8[6]) );

    // 15 BLACK BOX
    black_cell Q0 ( .Gik(G1[0]), .Pik(P1[0]), .Gkj(G[2]), .Pkj(P[2]), .Gij(G9[0]), .Pij(P9[0]) );
    black_cell Q1 ( .Gik(G2[0]), .Pik(P2[0]), .Gkj(G[4]), .Pkj(P[4]), .Gij(G9[1]), .Pij(P9[1]) );
    black_cell Q2 ( .Gik(G8[0]), .Pik(P8[0]), .Gkj(G[6]), .Pkj(P[6]), .Gij(G9[2]), .Pij(P9[2]) );
    black_cell Q3 ( .Gik(G3[0]), .Pik(P3[0]), .Gkj(G[8]), .Pkj(P[8]), .Gij(G9[3]), .Pij(P9[3]) );
    black_cell Q4 ( .Gik(G8[1]), .Pik(P8[1]), .Gkj(G[10]), .Pkj(P[10]), .Gij(G9[4]), .Pij(P9[4]) );
    black_cell Q5 ( .Gik(G7[0]), .Pik(P7[0]), .Gkj(G[12]), .Pkj(P[12]), .Gij(G9[5]), .Pij(P9[5]) );
    black_cell Q6 ( .Gik(G8[2]), .Pik(P8[2]), .Gkj(G[14]), .Pkj(P[14]), .Gij(G9[6]), .Pij(P9[6]) );
    black_cell Q7 ( .Gik(G4[0]), .Pik(P4[0]), .Gkj(G[16]), .Pkj(P[16]), .Gij(G9[7]), .Pij(P9[7]) );
    black_cell Q8 ( .Gik(G8[3]), .Pik(P8[3]), .Gkj(G[18]), .Pkj(P[18]), .Gij(G9[8]), .Pij(P9[8]) );
    black_cell Q9 ( .Gik(G7[1]), .Pik(P7[1]), .Gkj(G[20]), .Pkj(P[20]), .Gij(G9[9]), .Pij(P9[9]) );
    black_cell Q10 ( .Gik(G8[4]), .Pik(P8[4]), .Gkj(G[22]), .Pkj(P[22]), .Gij(G9[10]), .Pij(P9[10]) );
    black_cell Q11 ( .Gik(G6), .Pik(P6), .Gkj(G[24]), .Pkj(P[24]), .Gij(G9[11]), .Pij(P9[11]) );
    black_cell Q12 ( .Gik(G8[5]), .Pik(P8[5]), .Gkj(G[26]), .Pkj(P[26]), .Gij(G9[12]), .Pij(P9[12]) );
    black_cell Q13 ( .Gik(G7[2]), .Pik(P7[2]), .Gkj(G[28]), .Pkj(P[28]), .Gij(G9[13]), .Pij(P9[13]) );
    black_cell Q14 ( .Gik(G8[6]), .Pik(P8[6]), .Gkj(G[30]), .Pkj(P[30]), .Gij(G9[14]), .Pij(P9[14]) );

    // cout from each 32 bit stage
    assign CO[0] = G[0] || (P[0]&Cin);
    assign CO[1] = G1[0] || (P1[0]&Cin);
    assign CO[2] = G9[0] || (P9[0]&Cin);
    assign CO[3] = G2[0] || (P2[0]&Cin);
    assign CO[4] = G9[1] || (P9[1]&Cin);
    assign CO[5] = G8[0] || (P8[0]&Cin);
    assign CO[6] = G9[2] || (P9[2]&Cin);
    assign CO[7] = G3[0] || (P3[0]&Cin);
    assign CO[8] = G9[3] || (P9[3]&Cin);
    assign CO[9] = G8[1] || (P8[1]&Cin);
    assign CO[10] = G9[4] || (P9[4]&Cin);
    assign CO[11] = G7[0] || (P7[0]&Cin);
    assign CO[12] = G9[5] || (P9[5]&Cin);
    assign CO[13] = G8[2] || (P8[2]&Cin);
    assign CO[14] = G9[6] || (P9[6]&Cin);
    assign CO[15] = G4[0] || (P4[0]&Cin);
    assign CO[16] = G9[7] || (P9[7]&Cin);
    assign CO[17] = G8[3] || (P8[3]&Cin);
    assign CO[18] = G9[8] || (P9[8]&Cin);
    assign CO[19] = G7[1] || (P7[1]&Cin);
    assign CO[20] = G9[9] || (P9[9]&Cin);
    assign CO[21] = G8[4] || (P8[4]&Cin);
    assign CO[22] = G9[10] || (P9[10]&Cin);
    assign CO[23] = G6 || (P6 & Cin);
    assign CO[24] = G9[11] || (P9[11]&Cin);
    assign CO[25] = G8[5] || (P8[5]&Cin);
    assign CO[26] = G9[12] || (P9[12]&Cin);
    assign CO[27] = G7[2] || (P7[2]&Cin);
    assign CO[28] = G9[13] || (P9[13]&Cin);
    assign CO[29] = G8[6] || (P8[6]&Cin);
    assign CO[30] = G9[14] || (P9[14]&Cin);
    assign CO[31] = G5 || (P5 & Cin);

    // Sum computation
    assign Sum[0] = P[0]^Cin;
    genvar r;
    generate
        for (r=1; r<32; r = r+1) begin : sumBLOCKS
            assign Sum[r] = P[r]^CO[r-1];
        end
    endgenerate

    assign Cout = CO[31];
endmodule