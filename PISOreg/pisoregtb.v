`timescale 1ns / 1ps
`include "pisoreg.v"


module pisoregtb;
    reg clk, reset, load_shift;
    reg [3:0] pi;
    wire so;

    pisoreg uut (
        .clk(clk), 
        .reset(reset), 
        .load_shift(load_shift), 
        .pi(pi), 
        .so(so)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; load_shift = 0; pi = 4'b0000;
        #12 reset = 0;

        pi = 4'b1011; 
        load_shift = 0;
        #10;            
        load_shift = 1;
        repeat (4) #10;

        #20 $finish;
    end

endmodule