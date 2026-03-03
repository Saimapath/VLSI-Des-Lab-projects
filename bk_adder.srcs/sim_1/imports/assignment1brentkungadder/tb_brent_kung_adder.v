`timescale 1ns / 1ps

module tb_brent_kung_adder;
reg [31:0] a, b;
reg cin;
wire [31:0] sum;
wire cout;

brent_kung adder(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
    a = 32'h00000001;
    b = 32'h00000001;
    cin = 1'b1;
    #10 $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    #5;
    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    cin = 1'b0;
    #10 $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    #5;

    a = 32'h12345678;
    b = 32'h87654321;
    cin = 1'b0;
    #10 $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    #5;

    a = 32'hAAAAAAAA;
    b = 32'h55555555;
    cin = 1'b1;
    #10 $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    #5;

    a = 32'h0F0F0F0F;
    b = 32'hF0F0F0F0;
    cin = 1'b0;
    #10 $display("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    $finish;
end
endmodule