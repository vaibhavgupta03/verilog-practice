module fullAdder(a,b,c_in,sum,c_out);
input a,b,c_in;
output sum, c_out;

assign sum = a ^ b ^ c_in;
assign c_out = (a & b) | (b & c_in) | (c_in & a);
endmodule

module rippleCarryAdder(a,b,s,cout);
input [3:0]a;
input [3:0]b;
output cout;
output [3:0] s;
wire [2:0] c; 

fullAdder FA1(a[0],b[0],1'b0,s[0],c[0]);
fullAdder FA2(a[1],b[1],c[0],s[1],c[1]);
fullAdder FA3(a[2],b[2],c[1],s[2],c[2]);
fullAdder FA4(a[3],b[3],c[2],s[3],cout);

endmodule

