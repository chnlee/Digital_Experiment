`timescale 1ns / 1ps

module xor_gate(
    output out,
    input A,
    input B
    );
    
    assign out = A ^ B;
endmodule
