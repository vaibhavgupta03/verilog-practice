`include "piporeg.v"
`timescale 1ns/1ps

module piporegtb;
    reg clk;
    reg reset;
    reg [3:0] pi;
    wire [3:0] po;


    piporeg uut (
        .clk(clk),
        .reset(reset),
        .pi(pi),
        .po(po)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin
        reset = 1; pi = 4'b0000;
        #15 reset = 0; 


        #20 pi = 4'b1011; 
        
        #20 pi = 4'b0110;

        #15  pi = 4'b1111;
        #15  reset = 1; 
        
        #20 $finish;
    end

endmodule