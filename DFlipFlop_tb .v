module DFlipFlop_tb ();

//reg for varient values and wire for outputs
reg clk,async_reset,D;
wire Q;

//connecting wires
DFlipFlop ff1(
.D(D),
.clk(clk),
.async_reset(async_reset),
.Q(Q));

//make a clk signal
initial 
begin
    clk = 1'b0;
    forever #10 clk = ~clk;
end

//timing table!
initial 
begin
    D = 0;
    async_reset = 0;
    #20
    D = 1;
    async_reset = 0;
    #20
    D = 0;
    async_reset = 0;
    #20
    D = 1;
    async_reset = 0;
    #20
    D = 1;
    async_reset = 1;
    #20
    D = 1;
    async_reset = 0;
    #80
    $finish;
end


endmodule