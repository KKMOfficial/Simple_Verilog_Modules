module JohnsonCounter_tb ();

reg clk,async_reset;
wire [3:0]Q;

JohnsonCounter jc1(
.clk(clk),
.async_reset(async_reset),
.Q(Q)
);

initial 
begin
    clk = 1'b0;
    forever #10 clk = ~clk;
end

initial 
begin
    async_reset = 1;
    #20
    async_reset = 0;
    #160
    async_reset = 1;
    #20
    async_reset = 0;
    #160
    $finish;
end

endmodule