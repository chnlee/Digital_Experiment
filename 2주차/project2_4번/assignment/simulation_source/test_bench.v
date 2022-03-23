`timescale 1ns / 1ps

module test( );
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] result;
    
    wire [15:0] answer;
    
    assign answer = a + b;
    integer    i, seed;
    
    initial begin
        seed = 0;
        a = 0;
        b = 0;
        #100
        for (i=0; i<40; i=i+1) begin
            seed = seed + 1;
            a = $urandom(seed) % 2**15;
            seed = seed + 1;
            b = $urandom(seed) % 2**15;
            #10
            
            $display("A %d, B: %d",a,b);
        end
        $finish;
    end
    
    adder_16bit bigadder(
       .in_a(a),
       .in_b(b),
       .out(result)
    );
    
endmodule
