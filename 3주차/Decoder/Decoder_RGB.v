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
        sw, btn, led4_r, led4_g, led4_b, led5_r, led5_g, led5_b // 보드에서 필요한 element들을 모두 선언한다.
    );
    input [1:0] sw; // switch는 2개로 구성되어 있으므로 2비트로 선언한다.
    input [3:0] btn; // 버튼은 4개로 구성되어 있으므로 4비트로 선언하지만 실제 사용할 버튼은 1개이다.
    output led4_r, led4_g, led4_b, led5_r, led5_g, led5_b; // Decoder를 나타내기 위해 LED 6개를 출력값으로 선언한다.
    
    // Module Body
    wire [2:0] decoder_in; // wire를 통해서 switch, 버튼과 연결하기 위해 3비트 값인 decoder_in을 입력값으로 선언한다.
    wire [5:0] decoder_out; // wire를 통해서 led와 연결하기 위해 6비트 값인 decoder_out을 출력값으로 선언한다.
    
    assign decoder_in[2] = sw[1]; // 입력값에 스위치 값을 할당한다.
    assign decoder_in[1] = sw[0]; // 입력값에 스위치 값을 할당한다.
    assign decoder_in[0] = btn[0]; // 입력값에 버튼 값을 할당한다.
    
    // 강의안의 표에 따르면 led4_r가 가장 높은 비트, led5_b가 가장 낮은 비트로 색이 구현되어 있는 것을 확인할 수 있다.
    assign led4_r = decoder_out[5]; // 가장 높은 index로 출력값을 led4_r에 할당한다.
    assign led4_g = decoder_out[4]; // 그 다음 index로 출력값을 led4_g에 할당한다.
    assign led4_b = decoder_out[3]; // 그 다음 index로 출력값을 led4_b에 할당한다.
    assign led5_r = decoder_out[2]; // 그 다음 index로 출력값을 led5_r에 할당한다.
    assign led5_g = decoder_out[1]; // 그 다음 index로 출력값을 led5_g에 할당한다.
    assign led5_b = decoder_out[0]; // 마지막 index로 출력값을 led5_b에 할당한다.
    
    // module instantiation을 통해 RGB_Decoder 모듈에서 선언한 3비트의 입력값을 스위치(2개)와 1번째 버튼에 할당하고 6비트의 출력값과 out을 인스턴스화하여 객체를 생성한다.
    // RGB_Decoder의 각 출력값이 led에 할당되어 서로 다른 8가지의 색을 구현할 수 있다.
    RGB_Decoder decoder_0(.in({sw,btn[0]}), .out(decoder_out));
endmodule
