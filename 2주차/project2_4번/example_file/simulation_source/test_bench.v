`timescale 1ns / 1ps

module test( );
    reg [3:0] a, b;
    reg c_in;
    wire [3:0] result;
    wire c_out;

    integer    i, seed;
    
    initial begin
        seed = 0;
        a = 0;
        b = 0;
        c_in = 0;
        #100
        
        for (i=0; i<40; i=i+1) begin
            seed = seed + 1;
            a = $urandom(seed) % 8;
            seed = seed + 1;
            b = $urandom(seed) % 8;
            seed = seed + 1;
            c_in = $urandom(seed) % 2;
            #10
            
            $display("A %d, B: %d, Cin: %d",a ,b, c_in);
        end
        $finish;
    end
    
    adder_4bit adder_4(
       .in_a(a),
       .in_b(b),
       .carry_in(c_in),
       .out(result),
       .carry_out(c_out)
    );
    
endmodule
