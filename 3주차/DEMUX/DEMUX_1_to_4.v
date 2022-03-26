`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/02 16:16:51
// Design Name: 
// Module Name: DEMUX_1_to_4
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

module DEMUX_1_to_4(
    in, control, out
    ); 
    input in;
    input [2:0] control;
    output reg [3:0] out;

    always@(*)
    begin 
        if(control == 2'b00) begin
           out[0] = in; out[1] = 0; out[2] = 0; out[3] = 0; end
        else if(control == 2'b01) begin
           out[0] = 0; out[1] = in; out[2] = 0; out[3] = 0; end
        else if(control == 2'b10) begin
           out[0] = 0; out[1] = 0; out[2] = in; out[3] = 0; end
        else begin
           out[0] = 0; out[1] = 0; out[2] = 0; out[3] = in; end
    end
    
endmodule
