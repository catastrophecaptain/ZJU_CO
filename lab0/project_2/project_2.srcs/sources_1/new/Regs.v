`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 14:21:09
// Design Name: 
// Module Name: Regs
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module Regs(
    input clk,
    input rst,
    input [4:0] Rs1_addr, 
    input [4:0] Rs2_addr, 
    input [4:0] Wt_addr, 
    input [31:0]Wt_data, 
    input RegWrite, 
    output [31:0] Rs1_data, 
    output [31:0] Rs2_data,
    output reg [31:0] Reg00,
    output reg [31:0] Reg01,
    output reg [31:0] Reg02,
    output reg [31:0] Reg03,
    output reg [31:0] Reg04,
    output reg [31:0] Reg05,
    output reg [31:0] Reg06,
    output reg [31:0] Reg07,
    output reg [31:0] Reg08,
    output reg [31:0] Reg09,
    output reg [31:0] Reg10,
    output reg [31:0] Reg11,
    output reg [31:0] Reg12,
    output reg [31:0] Reg13,
    output reg [31:0] Reg14,
    output reg [31:0] Reg15,
    output reg [31:0] Reg16,
    output reg [31:0] Reg17,
    output reg [31:0] Reg18,
    output reg [31:0] Reg19,
    output reg [31:0] Reg20,
    output reg [31:0] Reg21,
    output reg [31:0] Reg22,
    output reg [31:0] Reg23,
    output reg [31:0] Reg24,
    output reg [31:0] Reg25,
    output reg [31:0] Reg26,
    output reg [31:0] Reg27,
    output reg [31:0] Reg28,
    output reg [31:0] Reg29,
    output reg [31:0] Reg30,
    output reg [31:0] Reg31
);
always @(posedge clk,posedge rst) begin
    if (rst==1'b1) begin
        Reg00 <= 32'b0;
        Reg01 <= 32'b0;
        Reg02 <= 32'b0;
        Reg03 <= 32'b0;
        Reg04 <= 32'b0;
        Reg05 <= 32'b0;
        Reg06 <= 32'b0;
        Reg07 <= 32'b0;
        Reg08 <= 32'b0;
        Reg09 <= 32'b0;
        Reg10 <= 32'b0;
        Reg11 <= 32'b0;
        Reg12 <= 32'b0;
        Reg13 <= 32'b0;
        Reg14 <= 32'b0;
        Reg15 <= 32'b0;
        Reg16 <= 32'b0;
        Reg17 <= 32'b0;
        Reg18 <= 32'b0;
        Reg19 <= 32'b0;
        Reg20 <= 32'b0;
        Reg21 <= 32'b0;
        Reg22 <= 32'b0;
        Reg23 <= 32'b0;
        Reg24 <= 32'b0;
        Reg25 <= 32'b0;
        Reg26 <= 32'b0;
        Reg27 <= 32'b0;
        Reg28 <= 32'b0;
        Reg29 <= 32'b0;
        Reg30 <= 32'b0;
        Reg31 <= 32'b0;
    end
    else if(RegWrite==1'b1)begin
        case(Wt_addr)
            5'b00000: Reg00 <= 32'b0;
            5'b00001: Reg01 <= Wt_data;
            5'b00010: Reg02 <= Wt_data;
            5'b00011: Reg03 <= Wt_data;
            5'b00100: Reg04 <= Wt_data;
            5'b00101: Reg05 <= Wt_data;
            5'b00110: Reg06 <= Wt_data;
            5'b00111: Reg07 <= Wt_data;
            5'b01000: Reg08 <= Wt_data;
            5'b01001: Reg09 <= Wt_data;
            5'b01010: Reg10 <= Wt_data;
            5'b01011: Reg11 <= Wt_data;
            5'b01100: Reg12 <= Wt_data;
            5'b01101: Reg13 <= Wt_data;
            5'b01110: Reg14 <= Wt_data;
            5'b01111: Reg15 <= Wt_data;
            5'b10000: Reg16 <= Wt_data;
            5'b10001: Reg17 <= Wt_data;
            5'b10010: Reg18 <= Wt_data;
            5'b10011: Reg19 <= Wt_data;
            5'b10100: Reg20 <= Wt_data;
            5'b10101: Reg21 <= Wt_data;
            5'b10110: Reg22 <= Wt_data;
            5'b10111: Reg23 <= Wt_data;
            5'b11000: Reg24 <= Wt_data;
            5'b11001: Reg25 <= Wt_data;
            5'b11010: Reg26 <= Wt_data;
            5'b11011: Reg27 <= Wt_data;
            5'b11100: Reg28 <= Wt_data;
            5'b11101: Reg29 <= Wt_data;
            5'b11110: Reg30 <= Wt_data;
            5'b11111: Reg31 <= Wt_data;
        endcase
    end
    end
    assign Rs1_data = (Rs1_addr==5'b00000)?Reg00:
                      (Rs1_addr==5'b00001)?Reg01:
                      (Rs1_addr==5'b00010)?Reg02:
                      (Rs1_addr==5'b00011)?Reg03:
                      (Rs1_addr==5'b00100)?Reg04:
                      (Rs1_addr==5'b00101)?Reg05:
                      (Rs1_addr==5'b00110)?Reg06:
                      (Rs1_addr==5'b00111)?Reg07:
                      (Rs1_addr==5'b01000)?Reg08:
                      (Rs1_addr==5'b01001)?Reg09:
                      (Rs1_addr==5'b01010)?Reg10:
                      (Rs1_addr==5'b01011)?Reg11:
                      (Rs1_addr==5'b01100)?Reg12:
                      (Rs1_addr==5'b01101)?Reg13:
                      (Rs1_addr==5'b01110)?Reg14:
                      (Rs1_addr==5'b01111)?Reg15:
                      (Rs1_addr==5'b10000)?Reg16:
                      (Rs1_addr==5'b10001)?Reg17:
                      (Rs1_addr==5'b10010)?Reg18:
                      (Rs1_addr==5'b10011)?Reg19:
                      (Rs1_addr==5'b10100)?Reg20:
                      (Rs1_addr==5'b10101)?Reg21:
                      (Rs1_addr==5'b10110)?Reg22:
                      (Rs1_addr==5'b10111)?Reg23:
                      (Rs1_addr==5'b11000)?Reg24:
                      (Rs1_addr==5'b11001)?Reg25:
                      (Rs1_addr==5'b11010)?Reg26:
                      (Rs1_addr==5'b11011)?Reg27:
                      (Rs1_addr==5'b11100)?Reg28:
                      (Rs1_addr==5'b11101)?Reg29:
                      (Rs1_addr==5'b11110)?Reg30:
                      (Rs1_addr==5'b11111)?Reg31:32'b0;
    assign Rs2_data = (Rs2_addr==5'b00000)?Reg00:
                      (Rs2_addr==5'b00001)?Reg01:
                      (Rs2_addr==5'b00010)?Reg02:
                      (Rs2_addr==5'b00011)?Reg03:
                      (Rs2_addr==5'b00100)?Reg04:
                      (Rs2_addr==5'b00101)?Reg05:
                      (Rs2_addr==5'b00110)?Reg06:
                      (Rs2_addr==5'b00111)?Reg07:
                      (Rs2_addr==5'b01000)?Reg08:
                      (Rs2_addr==5'b01001)?Reg09:
                      (Rs2_addr==5'b01010)?Reg10:
                      (Rs2_addr==5'b01011)?Reg11:
                      (Rs2_addr==5'b01100)?Reg12:
                      (Rs2_addr==5'b01101)?Reg13:
                      (Rs2_addr==5'b01110)?Reg14:
                      (Rs2_addr==5'b01111)?Reg15:
                      (Rs2_addr==5'b10000)?Reg16:
                      (Rs2_addr==5'b10001)?Reg17:
                      (Rs2_addr==5'b10010)?Reg18:
                      (Rs2_addr==5'b10011)?Reg19:
                      (Rs2_addr==5'b10100)?Reg20:
                      (Rs2_addr==5'b10101)?Reg21:
                      (Rs2_addr==5'b10110)?Reg22:
                      (Rs2_addr==5'b10111)?Reg23:
                      (Rs2_addr==5'b11000)?Reg24:
                      (Rs2_addr==5'b11001)?Reg25:
                      (Rs2_addr==5'b11010)?Reg26:
                      (Rs2_addr==5'b11011)?Reg27:
                      (Rs2_addr==5'b11100)?Reg28:
                      (Rs2_addr==5'b11101)?Reg29:
                      (Rs2_addr==5'b11110)?Reg30:
                      (Rs2_addr==5'b11111)?Reg31:32'b0;
endmodule
