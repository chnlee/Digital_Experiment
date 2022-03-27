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
    input [2:0] in; //3��Ʈ�� input���� �����Ѵ�.
    output reg [7:0] out; // 3��Ʈ�̹Ƿ� �� 8������ ����� ���� ���´�. ���� 8��Ʈ output�� �����Ѵ�.
    always@(*) // always���� ���� �ڵ带 �����Ѵ�.
    begin 
        case(in) // �� 9���� ��찡 ������ ������ if-else������ case���� �̿��Ͽ� �ڵ带 �ۼ��Ѵ�.
        3'b000 : out <= 8'b00000001; // input���� 000�� �� output�� 8��Ʈ 00000001�̴�.
        3'b001 : out <= 8'b00000010; // input���� 001�� �� output�� 8��Ʈ 00000010�̴�.
        3'b010 : out <= 8'b00000100; // input���� 010�� �� output�� 8��Ʈ 00000100�̴�.
        3'b011 : out <= 8'b00001000; // input���� 011�� �� output�� 8��Ʈ 00001000�̴�.
        3'b100 : out <= 8'b00010000; // input���� 100�� �� output�� 8��Ʈ 00010000�̴�.
        3'b101 : out <= 8'b00100000; // input���� 101�� �� output�� 8��Ʈ 00100000�̴�.
        3'b110 : out <= 8'b01000000; // input���� 110�� �� output�� 8��Ʈ 01000000�̴�.
        3'b111 : out <= 8'b10000000; // input���� 111�� �� output�� 8��Ʈ 10000000�̴�.
        default : out <= 8'b00000000; // input���� �� case��� �� �������� ���� �� enable�� 0���� �����Ǿ� �⺻���� 8��Ʈ 00000000�� ������.
        endcase 
    end
endmodule 
