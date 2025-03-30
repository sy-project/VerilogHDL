module GatesModule (
    a, b,
    andout,
    orout,
    xorout,
    nandout,
    norout,
    xnorout
);
    input a,b;
    output andout, orout, xorout;
    output nandout, norout, xnorout;
    
    assign andout = a & b;
    assign orout = a | b;
    assign xorout = a ^ b;

    assign nandout = ~(a & b);
    assign norout = ~(a | b);
    assign xnorout = ~(a ^ b);
endmodule