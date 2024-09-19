`timescale 1ns / 1ps
`include "Lab4.vh"
module SCPU (
    `RegFile_Regs_Outputs
    input clk,
    input rst,
    input MIO_ready,
    input [31:0] inst_in,
    input [31:0] Data_in,
    input INT,
    output CPU_MIO,
    output MemRW,
    output wire [31:0] PC_out,
    output [31:0] Data_out,
    output [31:0] Addr_out,
    output wire [3:0] wea,
    `CSR_OUTPUTS,
    output wire [`CSR_CHANGE_MODE_WIDTH-1:0] csr_wsc_mode,
    output wire ecall,
    output wire mret,
    output wire trap_normal_change
);
  wire [`IMM_SEL_WIDTH-1:0] ImmSell;
  wire ALUSrc_B;
  wire [`MEM2REG_WIDTH-1:0] MemtoReg;
  wire Jump;
  wire Branch;
  wire RegWrite;
  wire sign;
  wire jump_choose;
  // 0 1byte,1 2byte,2 4byte
  wire [1:0] byte_n;
  assign MemRW = |wea;
  wire [ 3:0] wea_temp;
  wire [31:0] Data_out_temp;
  assign wea = trap_normal_change ? 4'b0 : wea_temp << (Addr_out % 4);
  assign Data_out = MemRW ? (Data_out_temp << ((Addr_out % 4) << 3)) : Data_out_temp;
  wire [`ALU_OP_WIDTH-1:0] ALU_Control;
  reg [31:0] inst;
  wire illegal_inst;
  wire csr_w;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      inst <= 32'h00000033;
    end else begin
      inst <= inst_in;
    end
  end

  Controler v1 (
      .OPcode(inst[6:2]),
      .MIO_ready(MIO_ready),
      .Fun7(inst[31:25]),
      .Fun3(inst[14:12]),

      .wea(wea_temp),
      .CPU_MIO(CPU_MIO),
      .ImmSell(ImmSell),
      .ALUSrc_B(ALUSrc_B),
      .MemtoReg(MemtoReg),
      .Jump(Jump),
      .Branch(Branch),
      .RegWrite(RegWrite),
      .ALU_Control(ALU_Control),
      .sign(sign),
      .byte_n(byte_n),
      .jump_choose(jump_choose),
      .illegal_inst(illegal_inst),
      .csr_w(csr_w),
      .csr_wsc_mode(csr_wsc_mode),
      .ecall(ecall),
      .mret(mret)
  );
  DataPath v2 (
      `RegFile_Regs_Arguments
      .clk(clk),
      .rst(rst),
      .inst_field(inst),
      .Data_in(Data_in),
      .ImmSell(ImmSell),
      .ALUSrc_B(ALUSrc_B),
      .MemtoReg(MemtoReg),
      .Jump(Jump),
      .Branch(Branch),
      .RegWrite(RegWrite),
      .ALU_Control(ALU_Control),
      .sign(sign),
      .byte_n(byte_n),
      .jump_choose(jump_choose),
      .illegal_inst(illegal_inst),
      .csr_w(csr_w),
      .csr_wsc_mode(csr_wsc_mode),
      .ecall(ecall),
      .mret(mret),
      .INT(INT),

      .PC_out(PC_out),
      .Data_out(Data_out_temp),
      .Addr_out(Addr_out),
      .trap_normal_change(trap_normal_change),
      `CSR_ARGUMENTS
  );
endmodule
