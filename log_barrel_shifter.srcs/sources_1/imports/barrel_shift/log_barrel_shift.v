module log_barrel_shift(
    input [7:0] data_in,
    input [2:0] shift_amt,
    input rotate, 
    input dir, // 0 for right shift, 1 for left shift
    output [7:0] data_out
);

wire [7:0] rev_data, shift4, shift2, shift1;

datarev m0 (.data_in(data_in), .rev(dir), .data_out(rev_data));
a4bit_shift m1 (.data_in(rev_data), .shift(shift_amt[2]), .rotate(rotate), .data_out(shift4));
a2bit_shift m2 (.data_in(shift4), .shift(shift_amt[1]), .rotate(rotate), .data_out(shift2));
a1bit_shift m3 (.data_in(shift2), .shift(shift_amt[0]), .rotate(rotate), .data_out(shift1));
datarev m4 (.data_in(shift1), .rev(dir), .data_out(data_out));
endmodule