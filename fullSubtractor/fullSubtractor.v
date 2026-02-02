module halfSubtractor(a,b,diff,borrow);
input a,b;
output diff,borrow;

assign diff = a ^ b;
assign borrow = ~a & b;

endmodule

module fullSubtractor(a,b,c,diff,borrow);

input a,b,c;
output diff,borrow;
wire w1,w2,w3;
halfSubtractor H1(a,b,w1,w2);
halfSubtractor H2(w1,c,diff,w3);
or O1(borrow,w2,w3);

endmodule