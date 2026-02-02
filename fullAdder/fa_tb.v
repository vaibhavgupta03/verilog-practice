module fullAdder_tb;
  reg a,b,c_in;
  wire sum_d,c_out_d;
  wire sum_b,c_out_b;
  wire sum_s,c_out_s;

  fullAdder_dflow U1 (a,b,c_in,sum_d,c_out_d);
  fullAdder_behav U2 (a,b,c_in,sum_b,c_out_b);
  fullAdder_struct U3 (a,b,c_in,sum_s,c_out_s);

  initial begin
    $dumpfile("fullAdder_tb.vcd");
    $dumpvars(0, fullAdder_tb);
    $monitor("time = %0t | a=%b b=%b c_in=%b | dflow: sum=%b c_out=%b | behav: sum=%b c_out=%b | struct: sum=%b c_out=%b",$time,
              a, b, c_in, sum_d, c_out_d, sum_b, c_out_b, sum_s, c_out_s);
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