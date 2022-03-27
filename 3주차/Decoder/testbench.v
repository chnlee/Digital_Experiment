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
    reg [2:0] input_decoder; // register�� ���� 3��Ʈ ���� input_decoder�� �����Ѵ�. 
    wire [7:0] output_decoder; // wire�� ���� 8��Ʈ ���� output_decoder�� �����Ѵ�.
    initial begin // inital begin�� ���� simulation�� �����Ѵ�. 
        input_decoder <= 3'b000; // input_decoder�� 3��Ʈ ���� 000���� ���ʴ�� �Ҵ��Ѵ�. 
        #10 input_decoder <= 3'b001; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 001�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b010; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 010�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b011; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 011�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b100; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 100�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b101; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 101�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b110; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 110�� �Ҵ��Ѵ�.
        #10 input_decoder <= 3'b111; // 10�� �����̸� �ְ�, input_decoder�� 3��Ʈ ���� 111�� �Ҵ��Ѵ�.
        #10 
        $stop; // simulation�� �����Ѵ�.
    end

    // model instantiation�� ���� Decoder.v�� ����� Decoder�� ������ in�� out�� testbench�� ������ input_decoder�� output_decoder�� �ν��Ͻ�ȭ�Ͽ� ��ü�� �����Ѵ�.
    Decoder decoder_0(
        .in(input_decoder),
        .out(output_decoder) // output_decdoer�� ��ü�� �����ʿ� ���� input_decoder�� ������ ���� �״�� Decoder ����� ������ �޾� ���� ��Ÿ����.
    );
endmodule
