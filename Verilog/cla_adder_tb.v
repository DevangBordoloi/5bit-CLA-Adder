`timescale 1ns / 1ps

module cla_adder_tb;
    // Inputs
    reg clk;
    reg [4:0] a;
    reg [4:0] b;
    // Outputs
    wire [4:0] sum;
    wire cout;
    // Instantiate the DUT
    cla_adder uut (
        .clk(clk),
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );
    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;
    // Stimulus
    initial begin
        a = 0; b = 0;
        #10;  a = 5'b00000;  b = 5'b00000;
        #10;  a = 5'b00101;  b = 5'b00011;
        #10;  a = 5'b01111;  b = 5'b00001;
        #10;  a = 5'b11111;  b = 5'b00001;
        #10;  a = 5'b10101;  b = 5'b01011;
        #20;
        $finish;
    end
    // Waveform + Monitor
    initial begin
        $dumpfile("cla_adder.vcd");
        $dumpvars(0, cla_adder_tb);
        $monitor("Time=%0t a=%05b b=%05b sum=%05b cout=%b",
                  $time, a, b, sum, cout);
    end

endmodule
