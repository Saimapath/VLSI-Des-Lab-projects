module controller(
    output reg[3:0]addra,
    input clka,
    input reset,
    input[63:0] douta,
    output ena,
    input start_stop,
    input add_sub,
    output reg [31:0] a,
    output reg [31:0] b,
    output reg cin
);

wire [31:0] not_b;
assign not_b= ~douta[31:0];
//counter for addr
assign ena= start_stop;
always @(posedge clka) begin
    if(reset) begin
    addra<=4'b0;
    {a,b}<= 64'b0;
    cin<=1'b0;
    end
    else begin
    if(start_stop) begin 
        addra <= addra + 4'd1;
        if (add_sub) begin
             {a,b}<= douta;
             cin<=1'b0;
        end else begin
            {a,b}<={douta[63:32],not_b};
            cin<=1'b1;
        end
    end
    else begin 
        addra<=addra;
        {a,b}<= {a,b};
        cin<=cin;

    end
    end
end


endmodule