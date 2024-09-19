`timescale 1ns / 1ps
module top (
    input  wire [15:0] SW,
    output wire [ 3:0] LED
);
  MUX4b4to1 d_1 (
      .choose({SW[15], SW[14]}),
      .I({4'b0, SW[11:0]}),
      .O(LED)
  );
endmodule
