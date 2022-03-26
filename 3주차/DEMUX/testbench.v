`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/02 16:26:54
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
    
    reg inp;
    reg [2:0] cont;
    wire [3:0] ou;
    
    initial begin
        inp <= 2'b1;
        
        cont <= 2'b00;
        #10 cont <= 2'b01;
        #10 cont <= 2'b10;
        #10 cont <= 2'b11;
        #10
        $stop;
    end
    DEMUX_1_to_4 DEMUX_0(
        .in(inp),
        .control(cont),
        .out(ou)
    );
endmodule
