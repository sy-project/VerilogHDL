`timescale 1ns/1ns
module testbench;
  
  reg a, b;
  wire o;
  
  and_module mod_and(.a(a), .b(b), .o(o));
  
  initial begin
    $dumpfile("graph.vcd");
    $dumpvars(1);
  end

  initial begin
    #10 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=1;
    #10 a=1; b=1;
    #10 $finish;
  end
endmodule
