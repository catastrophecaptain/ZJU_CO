// RISC-V Controler
`include "Lab4.vh"
module Controler (
    input wire [4:0] OPcode,
    input wire MIO_ready,
    input wire [6:0] Fun7,
    input wire [2:0] Fun3,
    output reg CPU_MIO,
    output reg [3:0] wea,
    output reg [`IMM_SEL_WIDTH-1:0] ImmSell,
    output reg [`MEM2REG_WIDTH-1:0] MemtoReg,
    output reg [`ALU_OP_WIDTH-1:0] ALU_Control,
    output reg ALUSrc_B,
    output reg Jump,
    output reg Branch,
    output reg RegWrite,
    output reg sign,
    output reg [1:0] byte_n,
    output reg jump_choose
);
  always @(*) begin
    case (OPcode)
      `OPCODE_ALU: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= 3'b0;
        MemtoReg <= `MEM2REG_ALU;
        case (Fun3)
          `FUNC_ADD: ALU_Control <= Fun7[5] ? `ALU_OP_SUB : `ALU_OP_ADD;
          `FUNC_SL: ALU_Control <= `ALU_OP_SLL;
          `FUNC_SLT: ALU_Control <= `ALU_OP_SLT;
          `FUNC_SLTU: ALU_Control <= `ALU_OP_SLTU;
          `FUNC_XOR: ALU_Control <= `ALU_OP_XOR;
          `FUNC_OR: ALU_Control <= `ALU_OP_OR;
          `FUNC_AND: ALU_Control <= `ALU_OP_AND;
          `FUNC_SR: ALU_Control <= Fun7[5] ? `ALU_OP_SRA : `ALU_OP_SRL;
          default: ALU_Control <= 4'b0;
        endcase
        ALUSrc_B <= 1'b0;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b0;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_ALU_IMM: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_I;
        MemtoReg <= `MEM2REG_ALU;
        case (Fun3)
          `FUNC_ADD: ALU_Control <= `ALU_OP_ADD;
          `FUNC_SL: ALU_Control <= `ALU_OP_SLL;
          `FUNC_SLT: ALU_Control <= `ALU_OP_SLT;
          `FUNC_SLTU: ALU_Control <= `ALU_OP_SLTU;
          `FUNC_XOR: ALU_Control <= `ALU_OP_XOR;
          `FUNC_OR: ALU_Control <= `ALU_OP_OR;
          `FUNC_AND: ALU_Control <= `ALU_OP_AND;
          `FUNC_SR: ALU_Control <= Fun7[5] ? `ALU_OP_SRA : `ALU_OP_SRL;
          default: ALU_Control <= 4'b0;
        endcase
        ALUSrc_B <= 1'b1;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_LOAD: begin
        CPU_MIO <= 1'b1;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_I;
        MemtoReg <= `MEM2REG_MEM;
        ALU_Control <= 4'b0;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= ~(Fun3 == `FUNC_BYTE_UNSIGNED || Fun3 == `FUNC_HALF_UNSIGNED);
        case (Fun3)
          `FUNC_BYTE, `FUNC_BYTE_UNSIGNED: byte_n <= `BYTE;
          `FUNC_HALF, `FUNC_HALF_UNSIGNED: byte_n <= `HALF;
          `FUNC_WORD: byte_n <= `WORD;
          default: byte_n <= `WORD;
        endcase
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_STORE: begin
        CPU_MIO <= 1'b1;
        case (Fun3)
          `FUNC_BYTE: wea <= `WEA_BYTE;
          `FUNC_HALF: wea <= `WEA_HALF;
          `FUNC_WORD: wea <= `WEA_WORD;
          default: wea <= `WEA_READ;
        endcase
        ImmSell <= `IMM_SEL_S;
        MemtoReg <= `MEM2REG_MEM;
        ALU_Control <= 4'b0;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b0;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_BRANCH: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_B;
        MemtoReg <= `MEM2REG_ALU;
        case (Fun3)
          `FUNC_EQ:  ALU_Control <= `ALU_OP_SUB;
          `FUNC_NE:  ALU_Control <= `ALU_OP_EQ;
          `FUNC_LT:  ALU_Control <= `ALU_OP_SGE;
          `FUNC_GE:  ALU_Control <= `ALU_OP_SLT;
          `FUNC_LTU: ALU_Control <= `ALU_OP_SGEU;
          `FUNC_GEU: ALU_Control <= `ALU_OP_SLTU;
          default:   ALU_Control <= 4'b0;
        endcase
        ALUSrc_B <= 1'b0;
        Jump <= 1'b0;
        Branch <= 1'b1;
        RegWrite <= 1'b0;
        sign <= 1'b1;
        byte_n <= `WORD;
      end
      `OPCODE_JAL: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_J;
        jump_choose <= `JUMP_PC_IMM;
        MemtoReg <= `MEM2REG_PC_PLUS;
        ALU_Control <= `ALU_OP_ADD;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b1;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b1;
        byte_n <= `WORD;
      end
      `OPCODE_JALR: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_I;
        MemtoReg <= `MEM2REG_PC_PLUS;
        ALU_Control <= `ALU_OP_ADD;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b1;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_ALU;
      end
      `OPCODE_LUI: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_U;
        MemtoReg <= `MEM2REG_ALU;
        ALU_Control <= `ALU_OP_R2;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_AUIPC: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_U;
        MemtoReg <= `MEM2REG_IMM_PC;
        ALU_Control <= `ALU_OP_ADD;
        ALUSrc_B <= 1'b1;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b1;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
      `OPCODE_PASS: begin
        CPU_MIO <= 1'b0;
        wea <= `WEA_READ;
        ImmSell <= `IMM_SEL_I;
        MemtoReg <= `MEM2REG_ALU;
        ALU_Control <= 4'b0;
        ALUSrc_B <= 1'b0;
        Jump <= 1'b0;
        Branch <= 1'b0;
        RegWrite <= 1'b0;
        sign <= 1'b1;
        byte_n <= `WORD;
        jump_choose <= `JUMP_PC_IMM;
      end
    endcase
  end
endmodule
