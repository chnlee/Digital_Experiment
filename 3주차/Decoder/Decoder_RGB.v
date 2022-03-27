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
        sw, btn, led4_r, led4_g, led4_b, led5_r, led5_g, led5_b // ���忡�� �ʿ��� element���� ��� �����Ѵ�.
    );
    input [1:0] sw; // switch�� 2���� �����Ǿ� �����Ƿ� 2��Ʈ�� �����Ѵ�.
    input [3:0] btn; // ��ư�� 4���� �����Ǿ� �����Ƿ� 4��Ʈ�� ���������� ���� ����� ��ư�� 1���̴�.
    output led4_r, led4_g, led4_b, led5_r, led5_g, led5_b; // Decoder�� ��Ÿ���� ���� LED 6���� ��°����� �����Ѵ�.
    
    // Module Body
    wire [2:0] decoder_in; // wire�� ���ؼ� switch, ��ư�� �����ϱ� ���� 3��Ʈ ���� decoder_in�� �Է°����� �����Ѵ�.
    wire [5:0] decoder_out; // wire�� ���ؼ� led�� �����ϱ� ���� 6��Ʈ ���� decoder_out�� ��°����� �����Ѵ�.
    
    assign decoder_in[2] = sw[1]; // �Է°��� ����ġ ���� �Ҵ��Ѵ�.
    assign decoder_in[1] = sw[0]; // �Է°��� ����ġ ���� �Ҵ��Ѵ�.
    assign decoder_in[0] = btn[0]; // �Է°��� ��ư ���� �Ҵ��Ѵ�.
    
    // ���Ǿ��� ǥ�� ������ led4_r�� ���� ���� ��Ʈ, led5_b�� ���� ���� ��Ʈ�� ���� �����Ǿ� �ִ� ���� Ȯ���� �� �ִ�.
    assign led4_r = decoder_out[5]; // ���� ���� index�� ��°��� led4_r�� �Ҵ��Ѵ�.
    assign led4_g = decoder_out[4]; // �� ���� index�� ��°��� led4_g�� �Ҵ��Ѵ�.
    assign led4_b = decoder_out[3]; // �� ���� index�� ��°��� led4_b�� �Ҵ��Ѵ�.
    assign led5_r = decoder_out[2]; // �� ���� index�� ��°��� led5_r�� �Ҵ��Ѵ�.
    assign led5_g = decoder_out[1]; // �� ���� index�� ��°��� led5_g�� �Ҵ��Ѵ�.
    assign led5_b = decoder_out[0]; // ������ index�� ��°��� led5_b�� �Ҵ��Ѵ�.
    
    // module instantiation�� ���� RGB_Decoder ��⿡�� ������ 3��Ʈ�� �Է°��� ����ġ(2��)�� 1��° ��ư�� �Ҵ��ϰ� 6��Ʈ�� ��°��� out�� �ν��Ͻ�ȭ�Ͽ� ��ü�� �����Ѵ�.
    // RGB_Decoder�� �� ��°��� led�� �Ҵ�Ǿ� ���� �ٸ� 8������ ���� ������ �� �ִ�.
    RGB_Decoder decoder_0(.in({sw,btn[0]}), .out(decoder_out));
endmodule
