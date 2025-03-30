`timescale 1ns/1ns
module testbench;
  
  reg a, b;
  wire andout, orout, xorout, nandout, norout, xnorout;
  
  GatesModule GatesModule_a(.a(a), .b(b), .andout(andout), .orout(orout), .xorout(xorout), .nandout(nandout), .norout(norout), .xnorout(xnorout));
  
  initial begin
    $dumpfile("Gates.vcd");
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
