`timescale 1 ns / 100 ps
module testbench;
reg s, r;
wire q, q_n;
d_latch d_latch (s, r, q, q_n);
initial $dumpvars;
initial
begin
$monitor ("%0d s %b r %b q %b q_n %b", $time, s, r, q, q_n);
# 10; s = 0; r = 0;
# 10; s = 1; r = 0;
# 10; s = 0; r = 0;
# 10; s = 0; r = 1;
# 10; s = 0; r = 0;
# 10; s = 1; r = 1;
# 10; s = 0; r = 0;
# 10; s = 0; r = 0;
# 10;
$finish;
end
endmodule