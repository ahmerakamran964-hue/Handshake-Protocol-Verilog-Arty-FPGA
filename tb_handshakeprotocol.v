module tb_handshakeprotocol ();
reg clock;
reg ready;
reg reset;
wire valid;
wire [2:0] data;

handshakeprotocol uut (
.clock(clock),
.reset(reset),
.ready(ready),
.valid(valid),
.data(data)
);
always #10 clock =~clock;
initial begin
clock=1'b0;
ready=1'b0;
reset=1'b0;
#20;
ready=1'b1;
#10;
ready=1'b1;
#50;
ready=1'b0;
#20;
$monitor("Time=0%t reset=%b ready=%b valid=%b data=%d", $time, reset, ready, valid, data);
$finish;
end
endmodule