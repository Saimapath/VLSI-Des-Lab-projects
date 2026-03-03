module partialProduct1 (
    input  [15:0] A,
    input  B,
    output [15:0] PP1
);
    assign PP1[0] = B & A[0];
    assign PP1[1] = B & A[1];
    assign PP1[2] = B & A[2];
    assign PP1[3] = B & A[3];
    assign PP1[4] = B & A[4];
    assign PP1[5] = B & A[5];
    assign PP1[6] = B & A[6];
    assign PP1[7] = B & A[7];
    assign PP1[8] = B & A[8];
    assign PP1[9] = B & A[9];
    assign PP1[10] = B & A[10];
    assign PP1[11] = B & A[11];
    assign PP1[12] = B & A[12];
    assign PP1[13] = B & A[13];
    assign PP1[14] = B & A[14];
    assign PP1[15] = ~ (B & A[15]);
endmodule