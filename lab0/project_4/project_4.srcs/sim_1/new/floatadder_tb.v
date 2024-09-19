`timescale 1ns / 1ps
module floatadder_tb ();
  reg clk;
  reg [31:0] adder1;
  reg [31:0] adder2;
  reg start;
  wire [31:0] sum;
  wire finish;
  wire overflow;
  wire error;
  wire [10:0] res;
  wire [10:0] adder1_ext;
  wire [10:0] adder2_ext;
  wire [10:0] adder1_rl;
  wire [10:0] adder2_rl;
  always begin
    #5 clk = ~clk;
  end
  floatadder floatadder_0 (
      .clk(clk),
      .adder1(adder1),
      .adder2(adder2),
      .start(start),
      .sum(sum),
      .finish(finish),
      .overflow(overflow),
      .error(error)
  );
  initial begin
    clk = 0;
    adder1 = 32'b0;
    adder2 = 32'b0;
    start = 0;
    #10 adder1 = 32'h3f8ccccd;
    adder2 = 32'h400ccccd;
    start  = 1;
    #10 start = 0;
    #3000;
    #10 adder1 = 32'h40d66666;
    adder2 = 32'hc059999a;
    start  = 1;
    #10 start = 0;
    #3000;
    #10 adder1 = 32'h7f7fffff;
    adder2 = 32'h7f7ff666;
    start  = 1;
    #10 start = 0;
    #3000;
    #10 adder1 = 32'h7fffffff;
    adder2 = 32'h7f7ff666;
    start  = 1;
    #10 start = 0;
    #3000;
    #10 adder1 = 32'h0000ffff;
    adder2 = 32'h0000ffff;
    start  = 1;
    #10 start = 0;
    #3000;
    #10 adder1 = 32'h7f00ffff;
    adder2 = 32'hff00ffff;
    start  = 1;
    #10 start = 0;
    #3000;
    $finish;
  end
endmodule
