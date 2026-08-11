module handshakeprotocol (
input reset,
input clock,
input ready ,
output reg valid,
output reg[2:0] data
);

always@(posedge clock) begin
if(!reset)begin
valid<=1'b0;
data<=2'd0;
end else begin
valid<=1'b1;
if(valid && ready)
data <=data+2'd1;
end
end
endmodule
