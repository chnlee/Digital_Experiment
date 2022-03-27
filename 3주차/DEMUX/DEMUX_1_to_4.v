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

module DEMUX_1_to_4( // Demux에 대한 모듈 생성
    in, control, out
    ); 
    input in; // 1개의 input값을 받는다.
    input [2:0] control; // 2비트의 control값을 가지며, input이 출력될 output의 위치를 결정한다.
    output reg [3:0] out; // 4비트의 output값을 가지며, 한개의 element만 1을 가지고 나머지 element는 0을 가진다.

    always@(*) // always문은 bracket 안에 있는 코드를 실행하는 블록을 의미한다.
    begin // always 문의 시작
        if(control == 2'b00) begin  // 입력값인 control이 00일 때
           out[0] = in; out[1] = 0; out[2] = 0; out[3] = 0; end // out[0]이 입력값인 in을 가지고 나머지는 0을 가진다.
        else if(control == 2'b01) begin // 입력값인 control이 01일 때
           out[0] = 0; out[1] = in; out[2] = 0; out[3] = 0; end // out[1]이 입력값인 in을 가지고 나머지는 0을 가진다.
        else if(control == 2'b10) begin // 입력값인 control이 10일 때
           out[0] = 0; out[1] = 0; out[2] = in; out[3] = 0; end // out[2]이 입력값인 in을 가지고 나머지는 0을 가진다.
        else begin // 입력값인 control이 11일 때
           out[0] = 0; out[1] = 0; out[2] = 0; out[3] = in; end // out[3]이 입력값인 in을 가지고 나머지는 0을 가진다.
    end // always 문의 끝
    
endmodule
