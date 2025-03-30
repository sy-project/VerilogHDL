module full_adder (
    in1, in2, cin,
    c, s
);
    input in1, in2, cin;
    output c, s;

    wire h1toh2;
    wire h1c;
    wire h2c;

    half_adder ha1(.in1(in1), .in2(in2), .s(h1toh2), .c(h1c));
    half_adder ha2(.in1(h1toh2), .in2(cin), .s(s), .c(h2c));
    assign c = h1c | h2c;
endmodule