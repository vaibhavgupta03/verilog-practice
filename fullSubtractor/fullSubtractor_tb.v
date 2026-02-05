`include "fullSubtractor.v"
`timescale 1ns/100ps
module fullSubtractor_tb;
reg a,b,c;
wire diff,borrow;

fullSubtractor DUT(a,b,c,diff,borrow);

initial
begin
  $dumpfile("subtractor.vcd");
  $dumpvars(0,fullSubtractor_tb);
  $monitor($time," a = %b , b = %b , c = %b | diff = %b | borrow = %b",a,b,c,diff,borrow);
  a = 0; b = 0; c = 0;
  #10 a = 0; b = 0; c = 1;
  #10 a = 0; b = 1; c = 0;
  #10 a = 0; b = 1; c = 1;
  #10 a = 1; b = 0; c = 0;
  #10 a = 1; b = 0; c = 1;
  #10 a = 1; b = 1; c = 0;
  #10 a = 1; b = 1; c = 1;
  #10 $finish;
end
endmodule