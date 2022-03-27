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


module LED_DEMUX(sw, led); // 보드에 구현할 모듈을 생성한다.
    input [1:0] sw; // 보드의 switch이며 2개이므로, constraints에 따라 2비트를 할당한다.
    output [3:0] led; // 보드의 led이며 4개이므로, constraints에 따라 4비트를 할당한다.
    wire [2:0] cont; // wire를 통해 보드와 연결할 cont값을 지정하고, 이 값에 따라 다른 led에 불이 켜진다. 
    parameter DEMUX_input = 1'b1; // 기본 DEMUX의 입력값이며, 이 값이 출력값에 할당된다.
    wire [3:0] DEMUX_output; // wire를 통해 보드와 연결될 출력값이며 4개의 led로 4비트로 구성되어 있다.
    
    // Module Body
    // 모듈 인스턴스를 통해 DEMUX_1_to_4의 입력값과 출력값을 LED_DEMUX의 input과 ouput에 인스턴스화 한다.
    DEMUX_1_to_4 DEMUX_0(.in(DEMUX_input), .control(sw), .out(led));
endmodule
