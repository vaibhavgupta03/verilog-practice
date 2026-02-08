module cyclicLighttb;
reg clk;
wire [2:0] light;

cyclicLight DUT(clk,light);

always #5 clk = ~clk;

initial
begin
  $dumpfile("wave.vcd");
  $dumpvars(0,cyclicLighttb);
  $monitor("Time = %t | clk = %b | light = %b",$time,clk,light);
  clk = 1'b0;
  #155 $finish;
end
endmodule