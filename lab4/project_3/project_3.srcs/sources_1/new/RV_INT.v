`include "Lab4.vh"
module RV_INT (
    input clk,
    input rst,
    input INT,  // 外部中断信号
    input ecall,  // ECALL 指令
    input mret,  // MRET 指令
    input illegal_inst,  // 非法指令信号
    // input l_access_fault,  // 数据访存不对齐
    // input j_access_fault,  // 跳转地址不对齐
    input [31:0] PC,  // PC
    input [11:0] raddr,
    input [11:0] waddr,
    input [31:0] wdata,
    input csr_w,
    input wire [31:0] inst_field,
    input [`CSR_CHANGE_MODE_WIDTH-1:0] csr_wsc_mode,
    output trap_normal_change,  // 用于指示trap和正常流程的转换
    output [31:0] PC_change,  // 用于指示PC流程的切换的PC
    output [31:0] rdata,  //CSR的值
    `CSR_OUTPUTS
);
  wire [31:0] mepc_bypasss_in;
  wire [31:0] mcause_bypass_in;
  wire [31:0] mtval_bypass_in;
  wire [31:0] mstatus_bypass_in;
  wire [11:0] csr_wsc_mode_real;
  wire csr_w_real;
  CSRRegs U1 (
      .clk(clk),
      .rst(rst),
      .raddr(raddr),
      .waddr(waddr),
      .wdata(wdata),
      .csr_w(csr_w_real),
      .csr_wsc_mode(csr_wsc_mode_real),
      .mepc_bypasss_in(mepc_bypasss_in),
      .mcause_bypass_in(mcause_bypass_in),
      .mtval_bypass_in(mtval_bypass_in),
      .mstatus_bypass_in(mstatus_bypass_in),
      .rdata(rdata),
      .mepc(mepc),
      .mcause(mcause),
      .mtval(mtval),
      .mtvec(mtvec),
      .mstatus(mstatus)
  );
  wire trap_start=mstatus[`MSTATUS_MIE]&&(INT||ecall||illegal_inst);//||l_access_fault||j_access_fault);
  wire trap_exit = mret;
  assign trap_normal_change = trap_exit || trap_start;
  assign csr_wsc_mode_real = trap_start || trap_exit ? `CSR_BYPASS : csr_wsc_mode;
  assign csr_w_real = trap_start || trap_exit || csr_w;
  assign PC_change = trap_start ? {mtvec[31:2], 2'b00} : trap_exit ? mepc : PC;
  assign mepc_bypasss_in = trap_start ? PC : mepc;
  assign mcause_bypass_in = trap_start ? (INT ? `MCAUSE_INT : ecall ? `MCAUSE_ECALL :illegal_inst? `MCAUSE_ILL_INST:32'h0) : mcause;
  assign mtval_bypass_in = trap_start ? (illegal_inst ? inst_field : 32'h0) : mtval;
  assign mstatus_bypass_in = trap_start ? 
  {mstatus[31:`MSTATUS_MPIE+1], mstatus[`MSTATUS_MIE], mstatus[`MSTATUS_MPIE-1:`MSTATUS_MIE+1], 1'b0, mstatus[`MSTATUS_MIE-1:0]}:
  trap_exit?
  {mstatus[31:`MSTATUS_MPIE+1], mstatus[`MSTATUS_MPIE], mstatus[`MSTATUS_MPIE-1:`MSTATUS_MIE+1], 1'b1, mstatus[`MSTATUS_MIE-1:0]}:
  mstatus;

endmodule
