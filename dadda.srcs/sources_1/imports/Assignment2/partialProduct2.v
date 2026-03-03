module partialProduct2 (
    input  [15:0] A,
    input  B,
    output [15:0] PP2
);
    assign PP2[0] = ~ (B & A[0]);
    assign PP2[1] = ~ (B & A[1]);
    assign PP2[2] = ~ (B & A[2]);
    assign PP2[3] = ~ (B & A[3]);
    assign PP2[4] = ~ (B & A[4]);
    assign PP2[5] = ~ (B &  A[5]); 
    assign PP2[6] = ~ (B & A[6]);
    assign PP2[7] = ~ (B & A[7]);
    assign PP2[8] = ~ (B & A[8]);
    assign PP2[9] = ~ (B & A[9]);
    assign PP2[10] = ~ (B & A[10]);
    assign PP2[11] = ~ (B & A[11]);
    assign PP2[12] = ~ (B & A[12]);
    assign PP2[13] = ~ (B & A[13]);
    assign PP2[14] = ~ (B & A[14]);
    assign PP2[15] = B & A[15];
endmodule