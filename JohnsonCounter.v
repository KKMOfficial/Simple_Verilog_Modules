//module that describes johnson counter : ~Q of last flipflop connected to first one
module JohnsonCounter (
    input clk,async_reset, output [3:0] Q
);

    DFlipFlop Q3(~Q[0], clk, async_reset, Q[3]);
    DFlipFlop Q2( Q[3], clk, async_reset, Q[2]);
    DFlipFlop Q1( Q[2], clk, async_reset, Q[1]);
    DFlipFlop Q0( Q[1], clk, async_reset, Q[0]);

endmodule