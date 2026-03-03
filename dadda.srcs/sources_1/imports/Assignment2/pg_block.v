module pg_block (
    input a,
    input b,
    output P,
    output G
);
    assign P = a^b;
    assign G = a&b;
endmodule