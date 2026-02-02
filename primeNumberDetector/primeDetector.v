module primeDetector(M,Y);
input [3:0] M;
output Y;
wire a,b,c,d;

and g1(a,~M[3],M[0]);
and g2(b,~M[3],~M[2],M[1]);
and g3(c,M[2],~M[1],M[0]);
and g4(d,~M[2],M[1],M[0]);
or g5(Y,a,b,c,d);
endmodule