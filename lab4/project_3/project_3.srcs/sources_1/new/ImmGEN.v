`include "Lab4.vh"
module ImmGen (
    input wire [`IMM_SEL_WIDTH-1:0] ImmSell,
    input wire [31:0] inst_field,
    input wire sign,
    output wire [31:0] Imm
);
  wire [31:0] I_Imm, S_Imm, B_Imm, J_Imm, U_Imm,CSR_Imm;
  assign I_Imm = sign ? {{20{inst_field[31]}}, inst_field[31:20]} : {20'b0, inst_field[31:20]};
  assign S_Imm = sign?{{20{inst_field[31]}}, inst_field[31:25], inst_field[11:7]}:{20'b0, inst_field[31:25], inst_field[11:7]};
  assign B_Imm = sign?{{19{inst_field[31]}}, inst_field[31], inst_field[7], inst_field[30:25], inst_field[11:8], 1'b0}:{19'b0, inst_field[31], inst_field[7], inst_field[30:25], inst_field[11:8], 1'b0};

  assign J_Imm = sign?{{11{inst_field[31]}}, inst_field[19:12], inst_field[20], inst_field[30:21], 1'b0}:{10'b0,inst_field[31],inst_field[19:12], inst_field[20], inst_field[30:21], 1'b0};
  assign U_Imm = {inst_field[31:12], 12'b0};
  assign CSR_Imm = {27'h0,inst_field[19:15]};
  assign Imm = (ImmSell == `IMM_SEL_I) ? I_Imm :
                (ImmSell == `IMM_SEL_S) ? S_Imm :
                (ImmSell == `IMM_SEL_B) ? B_Imm :
                (ImmSell == `IMM_SEL_J) ? J_Imm :
                (ImmSell == `IMM_SEL_U) ? U_Imm :
                (ImmSell == `IMM_SEL_CSR) ? CSR_Imm : 32'b0;
endmodule
