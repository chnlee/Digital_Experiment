`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/02 16:52:51
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


module LED_DEMUX(sw, led);
    input [1:0] sw;
    output [3:0] led;
    wire [2:0] cont;
    parameter DEMUX_input = 1'b1;
    wire [3:0] DEMUX_output;
    
    // Module Body
    DEMUX_1_to_4 DEMUX_0(.in(DEMUX_input), .control(sw), .out(led));
endmodule
