module prime_tb;
reg[3:0] M;
wire Y;

primeDetector DUT(M,Y);

initial
begin
  $dumpfile("prime.vcd");
  $dumpvars(0,prime_tb);
  $monitor($time," Given Number = %b | Number is Prime or Not : %b",M,Y);
  M = 4'd0;
  #10 M = 4'd1;
  #10 M = 4'd2;
  #10 M = 4'd3;
  #10 M = 4'd4;
  #10 M = 4'd5;
  #10 M = 4'd6;
  #10 M = 4'd7;
  #10 M = 4'd8;
  #10 M = 4'd9;
  #10 M = 4'd10;
  #10 M = 4'd11;
  #10 M = 4'd12;
  #10 M = 4'd13;
  #10 M = 4'd14;
  #10 M = 4'd15;
  #10 $finish;
end
endmodule