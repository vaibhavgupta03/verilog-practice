module mux4tri_tb;
reg [3:0] I;
reg [1:0] sel;
wire Y;

mux4tri DUT(I[3:0],sel[1:0],Y);

initial
begin
  $dumpfile("mux4tri.vcd");
  $dumpvars(0,mux4tri_tb);
  $monitor("I = %b sel = %b | Y = %b",I,sel,Y);
  I = 4'b1001;
  #10 sel = 2'd3;
  #10 sel = 2'd0;
  #10 sel = 2'd1;
  #10 sel = 2'd2;
  #10 $finish;
end
endmodule