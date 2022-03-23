`timescale 1ns / 1ps

module full_adder(
    input in_a,
    input in_b,
    input carry_in,
    output sum,
    output carry_out
    );
    
    wire xor_xor, and_or_1, and_or_2;
    
    // For generating result of summation
    xor_gate xor1 (xor_xor, in_a, in_b);
    xor_gate xor2 (sum, xor_xor, carry_in);
    
    // For generating carry out
    and_gate and1 (and_or_1, xor_xor, carry_in);
    and_gate and2 (and_or_2, in_a, in_b);
    or_gate or1 (carry_out, and_or_1, and_or_2);
    
endmodule
