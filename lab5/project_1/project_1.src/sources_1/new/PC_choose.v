`include "Lab4.vh"
module PC_choose(
input wire[31:0] EX_PC,
input wire[31:0] EX_Imm,
input wire[31:0] ALU_out,
input wire zero,
input wire EX_Branch,
input wire EX_Jump,
input wire EX_jump_choose,
output wire change,
output wire[31:0] PC_jump
);
wire[31:0] PC_add_4=EX_PC+4;
wire[31:0] PC_imm=EX_Imm+EX_PC;
wire Branch_final;
assign Branch_final=EX_Branch&zero;
wire[31:0] PC_branch=Branch_final?PC_imm:PC_add_4;
assign PC_jump=EX_Jump?((EX_jump_choose==`JUMP_ALU)?ALU_out:PC_imm):PC_branch;
assign change=EX_Jump||Branch_final;
endmodule