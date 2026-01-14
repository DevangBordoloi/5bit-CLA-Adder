module cla_adder (
    input wire clk,
    input wire [4:0] a,
    input wire [4:0] b,
    output reg [4:0] sum,
    output reg cout
);

    reg [4:0] a_reg, b_reg;
    
    wire [4:0] p, g; 
    wire [5:0] c; 
    wire [4:0] sum_wire;
    
    always @(posedge clk) begin
        a_reg <= a;
        b_reg <= b;
    end
    
    assign p = a_reg ^ b_reg; 
    assign g = a_reg & b_reg; 
    
    assign c[0] = 1'b0; 
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
    assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
    
    assign c[5] = g[4] | 
                  (p[4] & g[3]) | 
                  (p[4] & p[3] & g[2]) | 
                  (p[4] & p[3] & p[2] & g[1]) | 
                  (p[4] & p[3] & p[2] & p[1] & g[0]) | 
                  (p[4] & p[3] & p[2] & p[1] & p[0] & c[0]);
    
    assign sum_wire = p ^ c[4:0]; 
    
    always @(posedge clk) begin
        sum <= sum_wire;
        cout <= c[5];
    end
    
endmodule