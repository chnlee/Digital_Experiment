`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/01 16:12:38
// Design Name: 
// Module Name: Decoder_RGB
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

module Decoder_RGB(
        sw, btn, led4_r, led4_g, led4_b, led5_r, led5_g, led5_b
    );
    input [1:0] sw;
    input [3:0] btn;
    output led4_r, led4_g, led4_b, led5_r, led5_g, led5_b;
    
    // Module Body
    wire [2:0] decoder_in;
    wire [5:0] decoder_out;
    
    assign decoder_in[2] = sw[1];
    assign decoder_in[1] = sw[0];
    assign decoder_in[0] = btn[0];
    
    assign led4_r = decoder_out[5];
    assign led4_g = decoder_out[4];
    assign led4_b = decoder_out[3];
    assign led5_r = decoder_out[2];
    assign led5_g = decoder_out[1];
    assign led5_b = decoder_out[0];
    
    RGB_Decoder decoder_0(.in({sw,btn[0]}), .out(decoder_out));
endmodule
