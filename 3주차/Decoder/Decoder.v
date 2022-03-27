`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/01 16:04:46
// Design Name: 
// Module Name: Decoder
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


module Decoder(in, out);
    input [2:0] in; //3비트의 input값을 지정한다.
    output reg [7:0] out; // 3비트이므로 총 8가지의 경우의 수가 나온다. 따라서 8비트 output을 지정한다.
    always@(*) // always문을 통해 코드를 실행한다.
    begin 
        case(in) // 총 9가지 경우가 나오기 때문에 if-else문보다 case문을 이용하여 코드를 작성한다.
        3'b000 : out <= 8'b00000001; // input값이 000일 때 output은 8비트 00000001이다.
        3'b001 : out <= 8'b00000010; // input값이 001일 때 output은 8비트 00000010이다.
        3'b010 : out <= 8'b00000100; // input값이 010일 때 output은 8비트 00000100이다.
        3'b011 : out <= 8'b00001000; // input값이 011일 때 output은 8비트 00001000이다.
        3'b100 : out <= 8'b00010000; // input값이 100일 때 output은 8비트 00010000이다.
        3'b101 : out <= 8'b00100000; // input값이 101일 때 output은 8비트 00100000이다.
        3'b110 : out <= 8'b01000000; // input값이 110일 때 output은 8비트 01000000이다.
        3'b111 : out <= 8'b10000000; // input값이 111일 때 output은 8비트 10000000이다.
        default : out <= 8'b00000000; // input값이 위 case들과 다 적합하지 않을 때 enable이 0으로 설정되어 기본값인 8비트 00000000을 가진다.
        endcase 
    end
endmodule 
