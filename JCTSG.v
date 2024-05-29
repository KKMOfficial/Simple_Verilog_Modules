//module for describing Jahnson counter tsg
module JCTSG (
    input clk,async_reset, output [7:0] T
);

    wire [3:0] Q;
    wire [3:0] Q_N;

    JohnsonCounter jc1(clk, async_reset, Q);

    //making not wires from johnson outputs
    not(Q_N[0], Q[0]);
    not(Q_N[1], Q[1]);
    not(Q_N[2], Q[2]);
    not(Q_N[3], Q[3]);

    //and outputs to make final tsg output
    and(T[0] , Q_N[3] , Q_N[0]);
    and(T[1] , Q_N[1] , Q[0]);
    and(T[2] , Q_N[2] , Q[1]);
    and(T[3] , Q_N[3] , Q[2]);
    and(T[4] , Q[3] , Q[0]);
    and(T[5] , Q[1] , Q_N[0]);
    and(T[6] , Q[2] , Q_N[1]);
    and(T[7] , Q[3] , Q_N[2]);

    
endmodule