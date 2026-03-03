module datarev(
    input [7:0] data_in,
    input rev,
    output [7:0] data_out
);
    wire [7:0] rev_data;
    assign rev_data = {data_in[0],data_in[1],data_in[2],data_in[3],data_in[4],data_in[5],data_in[6],data_in[7]};
    a2x1mux m0 (.a(data_in[0]),.b(rev_data[0]),.sel(rev),.y(data_out[0]));
    a2x1mux m1 (.a(data_in[1]),.b(rev_data[1]),.sel(rev),.y(data_out[1]));
    a2x1mux m2 (.a(data_in[2]),.b(rev_data[2]),.sel(rev),.y(data_out[2]));
    a2x1mux m3 (.a(data_in[3]),.b(rev_data[3]),.sel(rev),.y(data_out[3]));
    a2x1mux m4 (.a(data_in[4]),.b(rev_data[4]),.sel(rev),.y(data_out[4]));
    a2x1mux m5 (.a(data_in[5]),.b(rev_data[5]),.sel(rev),.y(data_out[5]));
    a2x1mux m6 (.a(data_in[6]),.b(rev_data[6]),.sel(rev),.y(data_out[6]));
    a2x1mux m7 (.a(data_in[7]),.b(rev_data[7]),.sel(rev),.y(data_out[7]));
endmodule