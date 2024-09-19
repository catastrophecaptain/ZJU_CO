`timescale 1ns / 1ps
`include "../../../project_1.src/sources_1/new/Lab4.vh"
// module SCPU (
//   `RegFile_Regs_Outputs
//   input clk,
//   input rst,
//   input MIO_ready,
//   input [31:0] inst_in,
//   input [31:0] Data_in,
//   output CPU_MIO,
//   output MemRW,
//   output wire [31:0] PC_out,
//   output [31:0] Data_out,
//   output [31:0] Addr_out,
//   output wire [3:0] wea,
//   output wire ID_pass
// );
//   U2 U2 (
    //   .a  (U1_PC_out[11:2]),
    //   .spo(U2_spo)
//   );
module Pipeline(
    );
    reg clk_fast=0;
    always #1 clk_fast=~clk_fast;
    reg clk=0;
    always #5 clk=~clk;
    reg rst=0;
    reg MIO_ready=0;
    wire [31:0] inst_in;
    wire [31:0] Data_in;
    wire CPU_MIO;
    wire MemRW;
    wire [31:0] PC_out;
    wire [3:0] wea;
    wire ID_pass;
    wire Load_hazard;
    wire[31:0] PC_jump;
    wire [31:0] PC_in;
    wire change;
    wire try;
    wire zero;
    wire Branch_final;
    wire [4:0] Rs1_addr;
    wire [4:0] Rs2_addr;
    wire Rs1_ID_EX_hazard;
wire Rs2_ID_EX_hazard;
wire Rs1_EX_MEM_hazard;
wire Rs2_EX_MEM_hazard;
wire Rs1_EX_WB_hazard;
wire Rs2_EX_WB_hazard;
    `ID_PipelineReg_declaration;
    `EX_PipelineReg_declaration;
    wire [31:0] adder_1;
    wire [31:0] adder_2;
    `MEM_PipelineReg_declaration;
    wire [31:0] Data_out;
    wire [31:0] Addr_out;
    `WB_PipelineReg_declaration;
    `RegFile_Regs_Declaration
    SCPU U0 (
        `RegFile_Regs_Arguments
        .clk(clk),
        .rst(rst),
        .Load_hazard(Load_hazard),
        .MIO_ready(MIO_ready),
        .inst_in(inst_in),
        .Data_in(Data_in),
        .CPU_MIO(CPU_MIO),
        .MemRW(MemRW),
        .PC_out(PC_out),
        .Data_out(Data_out),
        .Addr_out(Addr_out),
        .wea(wea),
        .ID_pass(ID_pass),
        .PC_jump(PC_jump),
        .PC_in(PC_in),
        .change(change),
        .try(try),
        .adder_2(adder_2),
        .adder_1(adder_1),
        .zero(zero),
        .Branch_final(Branch_final),
        .Rs1_addr(Rs1_addr),
        .Rs2_addr(Rs2_addr),
        .Rs1_ID_EX_hazard(Rs1_ID_EX_hazard),
        .Rs2_ID_EX_hazard(Rs2_ID_EX_hazard),
        .Rs1_EX_MEM_hazard(Rs1_EX_MEM_hazard),
        .Rs2_EX_MEM_hazard(Rs2_EX_MEM_hazard),
        .Rs1_EX_WB_hazard(Rs1_EX_WB_hazard),
        .Rs2_EX_WB_hazard(Rs2_EX_WB_hazard),
        `ID_PipelineReg_Input,
        `EX_PipelineReg_Input,
        `MEM_PipelineReg_Input,
        `WB_PipelineReg_Input   
    );
    U2 U1
    (
        .a(PC_out[11:2]),
        .spo(inst_in)
    );
      RAM_B U3 (
      .clka (~clk_fast),
      .wea  (wea),
      .addra(Addr_out[11:2]),
      .dina (Data_out),
      .douta(Data_in)
  );
    initial begin
        #10;
        rst=1;
        #10;
        rst=0;
        #10;
    end
endmodule
