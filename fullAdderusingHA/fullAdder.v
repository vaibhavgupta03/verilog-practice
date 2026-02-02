module halfAdder(
    input a,
    input b,
    output sum,
    output carry
);
    assign sum = a ^ b;      // Sum is the XOR of a and b
    assign carry = a & b;    // Carry is the AND of a and b
endmodule

module fullAdder(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
);
    wire sum_half1, carry_half1, carry_half2;

    // First half adder
    halfAdder HA1 (
        .a(a),
        .b(b),
        .sum(sum_half1),
        .carry(carry_half1)
    );

    // Second half adder
    halfAdder HA2 (
        .a(sum_half1),
        .b(c_in),
        .sum(sum),
        .carry(carry_half2)
    );

    // Final carry out
    assign c_out = carry_half1 | carry_half2;
endmodule