`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/01 16:05:32
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg [2:0] input_decoder; // register를 통해 3비트 값인 input_decoder를 선언한다. 
    wire [7:0] output_decoder; // wire를 통해 8비트 값인 output_decoder를 선언한다.
    initial begin // inital begin을 통해 simulation을 구현한다. 
        input_decoder <= 3'b000; // input_decoder에 3비트 값인 000부터 차례대로 할당한다. 
        #10 input_decoder <= 3'b001; // 10초 딜레이를 주고, input_decoder에 3비트 값인 001을 할당한다.
        #10 input_decoder <= 3'b010; // 10초 딜레이를 주고, input_decoder에 3비트 값인 010을 할당한다.
        #10 input_decoder <= 3'b011; // 10초 딜레이를 주고, input_decoder에 3비트 값인 011을 할당한다.
        #10 input_decoder <= 3'b100; // 10초 딜레이를 주고, input_decoder에 3비트 값인 100을 할당한다.
        #10 input_decoder <= 3'b101; // 10초 딜레이를 주고, input_decoder에 3비트 값인 101을 할당한다.
        #10 input_decoder <= 3'b110; // 10초 딜레이를 주고, input_decoder에 3비트 값인 110을 할당한다.
        #10 input_decoder <= 3'b111; // 10초 딜레이를 주고, input_decoder에 3비트 값인 111을 할당한다.
        #10 
        $stop; // simulation을 종료한다.
    end

    // model instantiation을 통해 Decoder.v의 모듈인 Decoder의 변수인 in과 out에 testbench의 변수인 input_decoder와 output_decoder를 인스턴스화하여 객체를 생성한다.
    Decoder decoder_0(
        .in(input_decoder),
        .out(output_decoder) // output_decdoer의 객체가 생성됨에 따라 input_decoder가 가지는 값이 그대로 Decoder 모듈의 영향을 받아 값을 나타낸다.
    );
endmodule
