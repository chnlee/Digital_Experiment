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
    
    reg inp; // inp���� register�� �����Ѵ�.
    reg [2:0] cont; // 2��Ʈ ������ register�� �̿��Ͽ� cont�� �����Ѵ�. �̴� �Է°����� ���ȴ�.
    wire [3:0] ou; // 4��Ʈ ������ wire�� �̿��Ͽ� ou�� �����Ѵ�. �̴� ��°����� ���ȴ�.
    
    initial begin // initial begin�� ���� simulation�� ������ �ڵ带 �ۼ��Ѵ�.
        inp <= 2'b1; // inp���� DEMUX_1_to_4 ����� in�� ����ǹǷ�, Ư�� ���� �����ٰ� �����Ѵ�. 
        // cont���� ���� ou�� �Ҵ�Ǵ� index�� �r�� �޶����Ƿ� simulation�� ��Ÿ�� ���� 4���� ���� �Է��Ѵ�.
        cont <= 2'b00; // cont���� 00�� ��
        #10 cont <= 2'b01; // 10�� ������ �� cont���� 01�� ��
        #10 cont <= 2'b10; // 10�� ������ �� cont���� 10�� ��
        #10 cont <= 2'b11; // 10�� ������ �� cont���� 11�� ��
        #10
        $stop; // ����
    end
    // module instantiation�� ���� DEMUX_1_to_4�� �ִ� �Է°��� ��°��� testbenchd�� �Է°��� ��°��� ������� ��ü�� �����Ѵ�.
    DEMUX_1_to_4 DEMUX_0(
        // ������ ������� ����
        .in(inp), // �Է°� in�� ����
        .control(cont), // �Է°� control�� ����
        .out(ou) // ��°� ou�� ����
    );
endmodule
