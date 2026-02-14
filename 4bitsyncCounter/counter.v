`include "dff.v"

module syncCounter4bit(
    input reset, clk,
    output [3:0] count
    );
    
    // Each bit toggles only when all lower bits are 1
    d_ff F0(.clk(clk), .reset(reset), .D(~count[0]), .Q(count[0]));
    d_ff F1(.clk(clk), .reset(reset), .D(count[1] ^ count[0]), .Q(count[1]));
    d_ff F2(.clk(clk), .reset(reset), .D(count[2] ^ (count[1] & count[0])), .Q(count[2]));
    d_ff F3(.clk(clk), .reset(reset), .D(count[3] ^ (count[2] & count[1] & count[0])), .Q(count[3]));
endmodule