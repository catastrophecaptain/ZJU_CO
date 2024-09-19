
`include "Lab4.vh"
module DataPath (
    `RegFile_Regs_Outputs
    input wire clk,
    input wire rst,
    input wire [31:0] inst_field,
    input wire [31:0] Data_in,
    input wire [`IMM_SEL_WIDTH-1:0] ImmSell,
    input wire ALUSrc_B,
    input wire [`MEM2REG_WIDTH-1:0] MemtoReg,
    input wire Jump,
    input wire Branch,
    input wire RegWrite,
    input wire [`ALU_OP_WIDTH-1:0] ALU_Control,
    input wire sign,
    input wire [1:0] byte_n,
    input wire jump_choose,
    input wire illegal_inst,
    input wire csr_w,
    input wire [`CSR_CHANGE_MODE_WIDTH-1:0] csr_wsc_mode,
    input wire ecall,
    input wire mret,
    input wire INT,
    output wire [31:0] PC_out,
    output wire [31:0] Data_out,
    output wire [31:0] Addr_out,
    output wire trap_normal_change,
    `CSR_OUTPUTS
);
  reg  [31:0] PC = 32'h4;
  wire [31:0] imm;
  ImmGen U1 (
      .ImmSell(ImmSell),
      .inst_field(inst_field),
      .sign(1'b1),
      .Imm(imm)
  );
  wire [31:0] Rs1_data, Rs2_data;
  wire [4:0] Rs1_addr, Rs2_addr, W_addr;
  wire [31:0] W_data;

  wire [31:0] ALU_out;
  wire [11:0] CSR_raddr = inst_field[31:20];
  wire [31:0] CSR_wdata = ALU_out;
  wire [31:0] CSR_waddr = inst_field[31:20];
  wire [31:0] PC_change;
  wire [31:0] CSR_rdata;

  RV_INT U5 (
      .clk(clk),
      .rst(rst),
      .INT(INT),
      .ecall(ecall),
      .mret(mret),
      .illegal_inst(illegal_inst),
      .PC(PC),
      .raddr(CSR_raddr),
      .waddr(CSR_waddr),
      .wdata(CSR_wdata),
      .csr_w(csr_w),
      .csr_wsc_mode(csr_wsc_mode),
      .trap_normal_change(trap_normal_change),
      .PC_change(PC_change),
      .rdata(CSR_rdata),
      .inst_field(inst_field),
      `CSR_ARGUMENTS
  );
  assign Rs1_addr = inst_field[19:15];
  assign Rs2_addr = inst_field[24:20];
  assign W_addr   = inst_field[11:7];
  Regs U2 (
      `RegFile_Regs_Arguments
      .clk(clk),
      .rst(rst),
      .Rs1_addr(Rs1_addr),
      .Rs2_addr(Rs2_addr),
      .Wt_addr(W_addr),
      .Wt_data(W_data),
      .RegWrite(RegWrite & !trap_normal_change),
      .Rs1_data(Rs1_data),
      .Rs2_data(Rs2_data)
  );
  wire [31:0] adder_2;
  wire zero;
  ALU U3 (
      .A(Rs1_data),
      .B(adder_2),
      .ALU_operation(ALU_Control),
      .res(ALU_out),
      .zero(zero)
  );
  assign Addr_out = ALU_out;
  assign Data_out = Rs2_data;
  wire [31:0] mem_out;
  extend U4 (
      .byte_n(byte_n),
      .in(Data_in >> ((Addr_out % 4) << 3)),
      .sign(sign),
      .mem_data(mem_out)
  );

  assign adder_2 = ALUSrc_B ? imm : Rs2_data;

  wire [31:0] PC_add_4 = PC + 4;
  wire [31:0] PC_imm = imm + PC;
  wire Branch_final = Branch & zero;
  wire [31:0] PC_branch = Branch_final ? PC_imm : PC_add_4;
  wire [31:0] PC_jump = Jump ? ((jump_choose == `JUMP_ALU) ? ALU_out : PC_imm) : PC_branch;
  assign PC_out = trap_normal_change ? PC_change : PC_jump;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      PC <= 32'hFFFFFFFC;
    end else begin
      PC <= PC_out;
    end
  end

  assign W_data=MemtoReg==`MEM2REG_MEM?mem_out:
            MemtoReg==`MEM2REG_ALU?ALU_out:
            MemtoReg==`MEM2REG_PC_PLUS?PC_add_4:
            MemtoReg==`MEM2REG_IMM_PC?PC_imm:
            MemtoReg==`MEM2REG_CSR?CSR_rdata:32'b0;

endmodule
