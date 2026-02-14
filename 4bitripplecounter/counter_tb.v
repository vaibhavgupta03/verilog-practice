`include "ripplecounter4bit.v"

module counter_tb;
reg clk,reset;
wire [3:0] count;

riipleCounter4bit uut(.clk(clk),.reset(reset),.count(count));

initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end
initial begin
reset = 1;
#10 reset = 0;
#200 $finish;
end
endmodule