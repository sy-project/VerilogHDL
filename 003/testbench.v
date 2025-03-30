`timescale 1ns/1ns
module testbench;
  
  reg a, b, c;
  wire cout, sum;
  
  full_adder fa(.in1(a), .in2(b), .cin(c), .c(cout), .s(sum));
  
  initial begin
    $dumpfile("Adder.vcd");
    $dumpvars(1);
  end

  initial begin
    #10 a=0; b=0; c=0;
    #10 a=1; b=0; c=0;
    #10 a=0; b=1; c=0;
    #10 a=1; b=1; c=0;
    #10 a=0; b=0; c=1;
    #10 a=1; b=0; c=1;
    #10 a=0; b=1; c=1;
    #10 a=1; b=1; c=1;
    #10 $finish;
  end
endmodule
