module fullAdder_tb;
  reg a,b,c_in;
  wire sum,c_out;

  fullAdder U1 (a,b,c_in,sum,c_out);

  initial begin
    $dumpfile("fullAdder_tb.vcd");
    $dumpvars(0, fullAdder_tb);
    $monitor("a=%b b=%b c_in=%b | sum=%b c_out=%b",
              a, b, c_in, sum, c_out);
    a = 0; b = 0; c_in = 0;
    #10 a = 0; b = 0; c_in = 1;
    #10 a = 0; b = 1; c_in = 0;
    #10 a = 0; b = 1; c_in = 1;
    #10 a = 1; b = 0; c_in = 0;
    #10 a = 1; b = 0; c_in = 1;
    #10 a = 1; b = 1; c_in = 0;
    #10 a = 1; b = 1; c_in = 1;
    #10 $finish;
  end
endmodule