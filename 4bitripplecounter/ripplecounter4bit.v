`include "dff.v"

module riipleCounter4bit(
    input reset,clk,
    output [3:0] count
    );
    
    d_ff F0(.clk(clk),      .reset(reset), .D(~count[0]), .Q(count[0]));
    d_ff F1(.clk(~count[0]), .reset(reset), .D(~count[1]), .Q(count[1]));
    d_ff F2(.clk(~count[1]), .reset(reset), .D(~count[2]), .Q(count[2]));
    d_ff F3(.clk(~count[2]), .reset(reset), .D(~count[3]), .Q(count[3]));
    
endmodule