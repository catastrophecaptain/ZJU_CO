`timescale 1ns / 1ps
module ALU (
    input  [31:0] A,
    input  [31:0] B,
    input  [ 3:0] ALU_operation,
    output [31:0] res,
    output        zero
);
  wire signed [31:0] A_s = $signed(A);
  wire signed [31:0] B_s = $signed(B);
  wire [31:0] A_u = $unsigned(A);
  wire [31:0] B_u = $unsigned(B);
  wire [31:0] result0= A_s+B_s;
  wire [31:0] result1= A_s-B_s;
  wire [31:0] result2= A<<B[4:0];
  wire [31:0] result3= (A_s<B_s)?32'b1:32'b0;
  wire [31:0] result4= (A_u<B_u)?32'b1:32'b0;
  wire [31:0] result5= A^B;
  wire [31:0] result6= A>>B[4:0];
  wire [31:0] result7= A_s>>>B_s[4:0];
  wire [31:0] result8= A|B;
  wire [31:0] result9= A&B;
    assign res = (ALU_operation==4'b0000)?result0:
                 (ALU_operation==4'b0001)?result1:
                 (ALU_operation==4'b0010)?result2:
                 (ALU_operation==4'b0011)?result3:
                 (ALU_operation==4'b0100)?result4:
                 (ALU_operation==4'b0101)?result5:
                 (ALU_operation==4'b0110)?result6:
                 (ALU_operation==4'b0111)?result7:
                 (ALU_operation==4'b1000)?result8:
                 (ALU_operation==4'b1001)?result9:0;
  assign zero = ~(|res)?1'b1:1'b0;
endmodule
