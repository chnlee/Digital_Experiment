`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 19:06:58
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
    
    reg a, b;
    wire r;
    
    initial begin
        a <= 1;
        b <= 1;
        
        #10
        
        a <= 0;
     end
    logic_gate gate_0 (
        .input_a(a),
        .input_b(b),
        .result(r)
    );
endmodule
