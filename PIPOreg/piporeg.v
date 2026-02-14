`include "dff.v"

module piporeg(
    input clk,
    input reset,
    input [3:0] pi,
    output [3:0] po
    );


    d_ff f0 (.clk(clk), .reset(reset), .D(pi[0]), .Q(po[0]));
    d_ff f1 (.clk(clk), .reset(reset), .D(pi[1]), .Q(po[1]));
    d_ff f2 (.clk(clk), .reset(reset), .D(pi[2]), .Q(po[2]));
    d_ff f3 (.clk(clk), .reset(reset), .D(pi[3]), .Q(po[3]));

endmodule