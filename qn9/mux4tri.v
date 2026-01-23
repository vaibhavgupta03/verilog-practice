module decoder2_4(I,Y);
input [1:0] I;
output [3:0] Y;

and g1(Y[0],~I[1],~I[0]);
and g2(Y[1],~I[1],I[0]);
and g3(Y[2],I[1],~I[0]);
and g4(Y[3],I[1],I[0]);
endmodule

module mux4tri(input [3:0] I, input [1:0] sel, output Y);

wire [3:0] a;

decoder2_4 D1(sel,a);

bufif1 B0(Y,I[0],a[0]);
bufif1 B1(Y,I[1],a[1]);
bufif1 B2(Y,I[2],a[2]);
bufif1 B3(Y,I[3],a[3]);

endmodule