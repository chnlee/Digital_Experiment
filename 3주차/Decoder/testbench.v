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
    reg [2:0] input_decoder;
    wire [7:0] output_decoder;
    initial begin
        input_decoder <= 3'b000;
        #10 input_decoder <= 3'b001;
        #10 input_decoder <= 3'b010;
        #10 input_decoder <= 3'b011;
        #10 input_decoder <= 3'b100;
        #10 input_decoder <= 3'b101;
        #10 input_decoder <= 3'b110;
        #10 input_decoder <= 3'b111;
        #10 
        $stop;
    end

    Decoder decoder_0(
        .in(input_decoder),
        .out(output_decoder)
    );
endmodule
