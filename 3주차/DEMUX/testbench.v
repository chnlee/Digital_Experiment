`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/02 16:26:54
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
    
    reg inp; // inp값을 register로 구성한다.
    reg [2:0] cont; // 2비트 값으로 register를 이용하여 cont를 생성한다. 이는 입력값으로 사용된다.
    wire [3:0] ou; // 4비트 값으로 wire을 이용하여 ou를 생성한다. 이는 출력값으로 사용된다.
    
    initial begin // initial begin을 통해 simulation에 적용할 코드를 작성한다.
        inp <= 2'b1; // inp값은 DEMUX_1_to_4 모듈의 in과 연결되므로, 특정 값을 가진다고 가정한다. 
        // cont값에 따라 ou에 할당되는 index의 걊이 달라지므로 simulation에 나타날 값을 4가지 경우로 입력한다.
        cont <= 2'b00; // cont값이 00일 때
        #10 cont <= 2'b01; // 10초 딜레이 후 cont값이 01일 때
        #10 cont <= 2'b10; // 10초 딜레이 후 cont값이 10일 때
        #10 cont <= 2'b11; // 10초 딜레이 후 cont값이 11일 때
        #10
        $stop; // 종료
    end
    // module instantiation을 통해 DEMUX_1_to_4에 있는 입력값과 출력값을 testbenchd의 입력값과 출력값을 연결시켜 객체를 생성한다.
    DEMUX_1_to_4 DEMUX_0(
        // 순서와 상관없이 연결
        .in(inp), // 입력값 in과 연결
        .control(cont), // 입력값 control과 연결
        .out(ou) // 출력값 ou와 연결
    );
endmodule
