`timescale 1ns / 1ps
`include "selfStartingRingCounter.v"
module ring_testbench;
    reg clk;
    reg reset;
    wire [3:0] q;

    self_correcting_ring uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        reset = 1;
        #15 reset = 0;

        #150 $finish;
    end

endmodule