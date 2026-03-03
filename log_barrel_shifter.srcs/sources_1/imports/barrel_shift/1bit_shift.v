module a1bit_shift(
    input [7:0] data_in,
    input shift, // default right shift
    input rotate,
    output [7:0] data_out
);
wire rotate_bit;
a2x1mux r0 (.a(1'b0),.b(data_in[0]),.sel(rotate),.y(rotate_bit));

a2x1mux m0 (.a(data_in[0]),.b(data_in[1]),.sel(shift),.y(data_out[0]));
a2x1mux m1 (.a(data_in[1]),.b(data_in[2]),.sel(shift),.y(data_out[1]));
a2x1mux m2 (.a(data_in[2]),.b(data_in[3]),.sel(shift),.y(data_out[2]));
a2x1mux m3 (.a(data_in[3]),.b(data_in[4]),.sel(shift),.y(data_out[3]));
a2x1mux m4 (.a(data_in[4]),.b(data_in[5]),.sel(shift),.y(data_out[4]));
a2x1mux m5 (.a(data_in[5]),.b(data_in[6]),.sel(shift),.y(data_out[5]));
a2x1mux m6 (.a(data_in[6]),.b(data_in[7]),.sel(shift),.y(data_out[6]));
a2x1mux m7 (.a(data_in[7]),.b(rotate_bit),.sel(shift),.y(data_out[7]));
endmodule