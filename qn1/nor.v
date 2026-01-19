module norGate(a,b,nor_out);
input a,b;
output nor_out;

assign nor_out = ~(a | b);

endmodule