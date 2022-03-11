`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 19:24:24
// Design Name: 
// Module Name: topModule
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module topModule(
    input[1:0]sw,
    output[3:0]led
    );
    
    wire a,b;
    wire r;
    
    assign a = sw[1];
    assign b = sw[0];
    assign led[0] = r;
    
    
     logic_gate gate_0 (
        .input_a(a),
        .input_b(b),
        .result(r)
    );
    
endmodule
