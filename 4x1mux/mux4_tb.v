module mux4_tb;
reg[3:0] I;
reg[1:0] sel;
wire Y;

mux4 DUT(I,sel,Y);

initial
begin
  $dumpfile("mux4.vcd");
  $dumpvars(0,mux4_tb);
  $monitor($time," I = %b & sel = %b | Y = %b ",I,sel,Y);
  I = 4'b1001; sel=2'd1;
  #10 sel=2'd0;
  #10 sel=2'd2;
  #10 sel=2'd3;
  #10 $finish;
end
endmodule