module black_cell(
    input Gik,
    input Pik,
    input Gkj,
    input Pkj,
    output Gij,
    output Pij
);
    assign Gij = Gkj || (Pkj && Gik);
    assign Pij = Pik && Pkj;
endmodule