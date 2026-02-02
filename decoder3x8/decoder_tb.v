module decoder_tb;
reg[2:0] I; 
reg en;
wire[7:0] Y;

decoder3_8 DUT(I,en,Y);

initial
begin
  $dumpfile("decoder.vcd");
  $dumpvars(0,decoder_tb);
  $monitor($time," Input = %b Enable = %b | Output = %b",I,en,Y);
  I = 3'd7; en=0;
  #10 I = 3'd7; en=1;
  #10 I=3'd6;
  #10 I=3'd5;
  #10 I=3'd4;
  #10 I=3'd3;
  #10 en=0;
  #10 I=3'd2; en=1;
  #10 I=3'd1;
  #10 I=3'd0;
  #10 $finish;
end
endmodule