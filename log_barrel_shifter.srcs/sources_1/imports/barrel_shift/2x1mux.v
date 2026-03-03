module a2x1mux(
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);
    wire opt1,opt2,notsel;
    not(notsel,sel);
    and(opt1,a,notsel);
    and(opt2,b,sel);
    or(y,opt1,opt2);
endmodule