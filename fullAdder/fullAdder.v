module fullAdder_dflow(a,b,c_in,sum_d,c_out_d);
  input a,b,c_in;
  output sum_d,c_out_d;

  assign {c_out_d,sum_d} = a + b + c_in;

endmodule

module fullAdder_behav(a,b,c_in,sum_b,c_out_b);
  input a,b,c_in;
  output reg sum_b,c_out_b;

  always @(a or b or c_in) begin
    {c_out_b,sum_b} = a + b + c_in;
  end
endmodule

module fullAdder_struct(a,b,c_in,sum_s,c_out_s);
  input a,b,c_in;
  output sum_s,c_out_s;

  wire s1,c1,c2;

  xor U1 (s1, a, b);
  xor U2 (sum_s, s1, c_in);
  and U3 (c1, a, b);
  and U4 (c2, s1, c_in);
  or  U5 (c_out_s, c1, c2);
endmodule

