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


module LED_DEMUX(sw, led); // ���忡 ������ ����� �����Ѵ�.
    input [1:0] sw; // ������ switch�̸� 2���̹Ƿ�, constraints�� ���� 2��Ʈ�� �Ҵ��Ѵ�.
    output [3:0] led; // ������ led�̸� 4���̹Ƿ�, constraints�� ���� 4��Ʈ�� �Ҵ��Ѵ�.
    wire [2:0] cont; // wire�� ���� ����� ������ cont���� �����ϰ�, �� ���� ���� �ٸ� led�� ���� ������. 
    parameter DEMUX_input = 1'b1; // �⺻ DEMUX�� �Է°��̸�, �� ���� ��°��� �Ҵ�ȴ�.
    wire [3:0] DEMUX_output; // wire�� ���� ����� ����� ��°��̸� 4���� led�� 4��Ʈ�� �����Ǿ� �ִ�.
    
    // Module Body
    // ��� �ν��Ͻ��� ���� DEMUX_1_to_4�� �Է°��� ��°��� LED_DEMUX�� input�� ouput�� �ν��Ͻ�ȭ �Ѵ�.
    DEMUX_1_to_4 DEMUX_0(.in(DEMUX_input), .control(sw), .out(led));
endmodule
