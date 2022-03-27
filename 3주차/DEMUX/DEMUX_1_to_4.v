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

module DEMUX_1_to_4( // Demux�� ���� ��� ����
    in, control, out
    ); 
    input in; // 1���� input���� �޴´�.
    input [2:0] control; // 2��Ʈ�� control���� ������, input�� ��µ� output�� ��ġ�� �����Ѵ�.
    output reg [3:0] out; // 4��Ʈ�� output���� ������, �Ѱ��� element�� 1�� ������ ������ element�� 0�� ������.

    always@(*) // always���� bracket �ȿ� �ִ� �ڵ带 �����ϴ� ����� �ǹ��Ѵ�.
    begin // always ���� ����
        if(control == 2'b00) begin  // �Է°��� control�� 00�� ��
           out[0] = in; out[1] = 0; out[2] = 0; out[3] = 0; end // out[0]�� �Է°��� in�� ������ �������� 0�� ������.
        else if(control == 2'b01) begin // �Է°��� control�� 01�� ��
           out[0] = 0; out[1] = in; out[2] = 0; out[3] = 0; end // out[1]�� �Է°��� in�� ������ �������� 0�� ������.
        else if(control == 2'b10) begin // �Է°��� control�� 10�� ��
           out[0] = 0; out[1] = 0; out[2] = in; out[3] = 0; end // out[2]�� �Է°��� in�� ������ �������� 0�� ������.
        else begin // �Է°��� control�� 11�� ��
           out[0] = 0; out[1] = 0; out[2] = 0; out[3] = in; end // out[3]�� �Է°��� in�� ������ �������� 0�� ������.
    end // always ���� ��
    
endmodule
