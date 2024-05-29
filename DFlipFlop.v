module DFlipFlop(D,clk,async_reset,Q);
    //flip flop inputs
    input D;
    input clk;
    input async_reset;
    //flip flop output(just Q)
    output reg Q;
    //describe flipflop behaviour!
    always @(posedge clk or posedge async_reset) 
    begin
        if(async_reset==1'b1)
            Q <= 1'b0; 
        else 
            Q <= D; 
    end 
endmodule 