module andGate(a,b,and_out);
input a,b;
output and_out;

assign and_out = a & b;

endmodule

module orGate(a,b,or_out);
input a,b;
output or_out;

assign or_out = a | b;

endmodule

module notGate(a,not_out);
input a;
output not_out;

assign not_out = ~a;

endmodule

module nandGate(a,b,nand_out);
input a,b;
output nand_out;

assign nand_out = ~(a & b);

endmodule

module norGate(a,b,nor_out);
input a,b;
output nor_out;

assign nor_out = ~(a | b);

endmodule

module xnorGate(a,b,xnor_out);
input a,b;
output xnor_out;

assign xnor_out = ~(a ^ b);

endmodule

module xorGate(a,b,xor_out);
input a,b;
output xor_out;

assign xor_out = a ^ b;

endmodule