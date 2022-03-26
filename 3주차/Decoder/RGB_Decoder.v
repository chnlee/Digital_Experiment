`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/01 16:11:38
// Design Name: 
// Module Name: RGB_Decoder
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


module RGB_Decoder(in, out);
    input [2:0] in;
    output reg [5:0] out;
    
    // Module Body
    always@(*)
    begin
        case(in)
        3'b000 : out <= 6'b100100;
        3'b001 : out <= 6'b101101;
        3'b010 : out <= 6'b110110;
        3'b011 : out <= 6'b010010;
        3'b100 : out <= 6'b011011;
        3'b101 : out <= 6'b001001;
        3'b110 : out <= 6'b111111;
        default : out <= 6'b000000; 
        endcase
    end
endmodule 

