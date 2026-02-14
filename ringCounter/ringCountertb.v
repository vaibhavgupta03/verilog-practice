`timescale 1ns / 1ps

module ringCounter_tb;
    reg clk;
    reg reset;
    wire [3:0] q;

    ringCounter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 1'b1;
        #15 reset = 1'b0;

        #100 $finish;
    end

endmodule