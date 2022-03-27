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
    input [2:0] in; // 3비트의 입력값을 받는다. 
    output reg [5:0] out; // register를 통해 6비트의 출력값을 받는다. 6비트로 받는 이유는 LED 2개 가 각각 RGB로 구성되어 있어서 각각의 값을 나타내기 위함이다. 
    
    // Module Body
    always@(*) // always 문을 사용하여 출력값이 입력값에 의존되게 코드를 작성한다. 
    begin
        case(in)
        // 경우가 많으므로 case문을 통해 코드를 작성한다.
        3'b000 : out <= 6'b100100; // 강의안의 진리표에 따라 red 값을 나타내기 위해 6비트 100100을 out에 할당한다.
        3'b001 : out <= 6'b101101; // 강의안의 진리표에 따라 magenta 값을 나타내기 위해 6비트 101101을 out에 할당한다
        3'b010 : out <= 6'b110110; // 강의안의 진리표에 따라 yellow 값을 나타내기 위해 6비트 100100을 out에 할당한다
        3'b011 : out <= 6'b010010; // 강의안의 진리표에 따라 green 값을 나타내기 위해 6비트 010010을 out에 할당한다
        3'b100 : out <= 6'b011011; // 강의안의 진리표에 따라 cyan 값을 나타내기 위해 6비트 011011을 out에 할당한다
        3'b101 : out <= 6'b001001; // 강의안의 진리표에 따라 blue 값을 나타내기 위해 6비트 001001을 out에 할당한다
        3'b110 : out <= 6'b111111; // 강의안의 진리표에 따라 white 값을 나타내기 위해 6비트 111111을 out에 할당한다
        default : out <= 6'b000000;  // 위의 case에 해당하는 값이 없을 경우 기본값인 LED off 값을 나타내기 위해 6비트 000000을 out에 할당한다
        endcase
    end
endmodule 

