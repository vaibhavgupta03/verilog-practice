module mux4(I,sel,Y);
input[3:0]I;
input[1:0]sel;
output Y;
wire a,b,c,d;

and g1(a,~sel[1],~sel[0],I[0]);
and g2(b,~sel[1],sel[0],I[1]);
and g3(c,sel[1],~sel[0],I[2]);
and g4(d,sel[1],sel[0],I[3]);
or g5(Y,a,b,c,d);

endmodule