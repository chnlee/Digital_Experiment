`timescale 1ns / 1ps

module adder_4bit(
    input [3:0] in_a,
    input [3:0] in_b,
    input carry_in,
    output [3:0] out,
    output carry_out
    );
    
    wire carry_1, carry_2, carry_3;
    
    full_adder bit_0 (in_a[1], in_b[1], carry_in, out[1], carry_1);
    full_adder bit_1 (in_a[2], in_b[2], carry_1, out[2], carry_2);
    full_adder bit_2 (in_a[3], in_b[3], carry_2, out[3], carry_3);
    full_adder bit_3 (in_a[4], in_b[4], carry_3, out[4], carry_out);
    
endmodule