`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 21:23:13
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
input [1:0] sw,
output [3:0] led
    );
    
    wire [1:0]new_a;
    wire [3:0]new_result;
    
    assign new_a[1] = sw[1];
    assign new_a[0] = sw[0];
    assign led[3] = new_result[3];
    assign led[2] = new_result[2];
    assign led[1] = new_result[1];
    assign led[0] = new_result[0];
    
    logic_gate gate_0(
    .input_a(new_a),
    .result(new_result)
    );
endmodule
