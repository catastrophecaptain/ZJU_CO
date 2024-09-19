`include "Lab4.vh"
module Rd_choose (
    input  wire [31:0] EX_PC,
    input  wire [31:0] EX_Imm,
    input  wire [31:0] ALU_out,
    input  wire [31:0] mem_out,
    input  wire [31:0] MEM_Rd_data,
    input  wire [ 1:0] EX_MemtoReg,
    input  wire [ 1:0] MEM_MemtoReg,
    output wire [31:0] MEM_Rd_data_in,
    output wire [31:0] WB_Rd_data_in
);
  wire [31:0] PC_add_4 = EX_PC + 4;
  wire [31:0] PC_imm = EX_Imm + EX_PC;
  assign MEM_Rd_data_in=
            EX_MemtoReg==`MEM2REG_ALU?ALU_out:
            EX_MemtoReg==`MEM2REG_PC_PLUS?PC_add_4:
            EX_MemtoReg==`MEM2REG_IMM_PC?PC_imm:32'b0;
  assign WB_Rd_data_in = MEM_MemtoReg == `MEM2REG_MEM ? mem_out : MEM_Rd_data;
endmodule
