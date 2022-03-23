`timescale 1ns / 1ps

module adder_16bit(
    input [15:0] in_a,
    input [15:0] in_b,
    output [15:0] out
    );
    
    wire carry_1, carry_2, carry_3, carry_4;
        
    adder_4bit bit_0_3 (in_a[3:0], in_b[3:0], 1'b0, out[3:0], carry_1);
    adder_4bit bit_4_7 (in_a[7:4], in_b[7:4], carry_1, out[7:4], carry_2);
    adder_4bit bit_8_11 (in_a[11:8], in_b[11:8], carry_2, out[11:8], carry_3);
    adder_4bit bit_12_15 (in_a[15:12], in_b[15:12], carry_3, out[15:12], carry_4);
    
endmodule