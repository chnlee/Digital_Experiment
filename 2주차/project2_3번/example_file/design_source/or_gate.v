`timescale 1ns / 1ps

module or_gate(
    output out,
    input A,
    input B
    );
    
    assign out = A | B;
endmodule
