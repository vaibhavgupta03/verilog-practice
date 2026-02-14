`include "dff.v"

module pisoreg(
    input clk,
    input reset,
    input load_shift,
    input [3:0] pi,
    output so 
    );

    wire [3:0] q_int;
    wire [3:0] d_int;

    assign d_int[0] = (load_shift) ? 1'b0 : pi[0];
    

    assign d_int[1] = (load_shift) ? q_int[0] : pi[1];
    assign d_int[2] = (load_shift) ? q_int[1] : pi[2];
    assign d_int[3] = (load_shift) ? q_int[2] : pi[3];

    d_ff f0 (.clk(clk), .reset(reset), .D(d_int[0]), .Q(q_int[0]));
    d_ff f1 (.clk(clk), .reset(reset), .D(d_int[1]), .Q(q_int[1]));
    d_ff f2 (.clk(clk), .reset(reset), .D(d_int[2]), .Q(q_int[2]));
    d_ff f3 (.clk(clk), .reset(reset), .D(d_int[3]), .Q(q_int[3]));

    // Final Output
    assign so = q_int[3];

endmodule