`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 00:40:41
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg [1:0]a;
    wire [3:0]r;
    
    initial begin
        a <= 2'b11;
        #10
        a <= 2'b10;
        #10
        a <= 2'b01;
        #10
        a <= 2'b00;
    end
    
    logic_gate gate_0(
    .input_a(a),
    .result(r)
    );
    
endmodule
