module kala_dabba(
    input gik,
    input pik,
    input giij,
    input piij,

    output gij,
    output pij
);

assign gij=gik|(pik&giij);
assign pij=pik&piij;


endmodule