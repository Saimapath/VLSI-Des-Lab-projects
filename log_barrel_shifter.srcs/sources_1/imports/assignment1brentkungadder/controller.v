module controller(
    output reg[3:0]addra,
    input clka,
    input reset,
    input[11:0] douta,
    output ena,
    input start_stop,
    input rotate_vio,
//    input dir_vio,
//    input [2:0] shift_amt_vio,
    output reg [7:0] a,
    output reg [2:0] shift_amt,
    output  rotate,
    output reg dir
);

//counter for addr
assign ena= start_stop;
assign rotate=rotate_vio;
//assign dir=dir_vio;
//assign shift_amt=shift_amt_vio;
always @(posedge clka) begin
    if(reset) begin
    addra<=4'b0;
    {dir,shift_amt}<=4'b0;
    a<= 8'b0;
    shift_amt<=3'b0;
//    cin<=1'b0;
    end
    else begin
    if(start_stop) begin 
        addra <= addra + 4'd1;
//        if (add_sub) begin
             a<= douta[7:0];
                 {dir,shift_amt}<=douta[11:8];

//             cin<=1'b0;
//        end else begin
//            {a,b}<={douta[63:32],not_b};
//            cin<=1'b1;
//        end
    end
    else begin 
        addra<=addra;
        a<= a;
        shift_amt<=shift_amt;
        dir<=dir;
//        cin<=cin;

    end
    end
end


endmodule