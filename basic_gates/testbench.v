module testbench;
reg a,b;
wire and_out, or_out, nand_out, not_out, nor_out, xor_out, xnor_out;

andGate A1(a,b,and_out);
orGate A2(a,b,or_out);
notGate A3(a,not_out);
nandGate A4(a,b,nand_out);
norGate A5(a,b,nor_out);
xorGate A6(a,b,xor_out);
xnorGate A7(a,b,xnor_out);

initial
  begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,testbench);
    $monitor($time," a = %b , b=%b | and_out=%b | or_out = %b | not_out = %b | nand_out = %b | nor_out = %b | xor_out = %b | xnor_out = %b",a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
    #5 a = 0; b= 0;
    #5 a = 0; b = 1;
    #5 a = 1; b=0;
    #5 a = 1; b = 1;
    #10 $finish;
  end
endmodule