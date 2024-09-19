`timescale 1ns / 1ps
`include "Lab4.vh"
module SCPU (
  `RegFile_Regs_Outputs
  input clk,
  input rst,
  input MIO_ready,
  input [31:0] inst_in,
  input [31:0] Data_in,
  output CPU_MIO,
  output MemRW,
  output wire [31:0] PC_out,
  output [31:0] Data_out,
  output [31:0] Addr_out,
  output wire [3:0] wea,
  output wire ID_pass,
  output wire Load_hazard,
  output wire [31:0] PC_jump,
  output wire change,
  output wire [31:0] PC_in,
  output wire try,
  output wire [31:0] adder_2,
  output wire [31:0] adder_1,
  output wire zero,
  output wire Branch_final,
  output wire[4:0] Rs1_addr,
  output wire[4:0] Rs2_addr,
  output wire Rs1_ID_EX_hazard,
  output wire Rs2_ID_EX_hazard,
  output wire Rs1_EX_MEM_hazard,
  output wire Rs2_EX_MEM_hazard,
  output wire Rs1_EX_WB_hazard,
  output wire Rs2_EX_WB_hazard,
  `ID_PipelineReg_Output,
    `EX_PipelineReg_Output,
    `MEM_PipelineReg_Output,
    `WB_PipelineReg_Output
);
// `ID_PipelineReg_declaration;
// `EX_PipelineReg_declaration;
// `MEM_PipelineReg_declaration;
// `WB_PipelineReg_declaration;
`ID_PipelineReg_Module;
`EX_PipelineReg_Module;
`MEM_PipelineReg_Module;
`WB_PipelineReg_Module;
assign MEM_PC_in = EX_PC;
assign WB_PC_in = MEM_PC;
reg [31:0] PC;
assign PC_out = PC;
// wire [31:0] PC_in;
always@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        PC<=32'h00000000;
    end
    else
    begin
        PC<=PC_in;
    end
end
// wire ID_pass;
// wire Load_hazard;
// wire [31:0]PC_jump;
// PC_control U0(
//     .PC(PC+4),
//     .ID_PC(ID_PC),
//     .PC_jump(PC_jump),
//     .Load_hazard(Load_hazard),
//     .PC_out(PC_in),
//     .ID_pass(ID_pass));
  assign MemRW = |wea;
  assign wea = MEM_wea << (MEM_Addr_out % 4);
  assign Data_out = MemRW ? (MEM_Data_out << ((MEM_Addr_out % 4) << 3)) : MEM_Data_out;
  // reg [31:0] inst;
  // always @(posedge ~clk or posedge rst) begin
  //   if (rst) begin
  //     inst <= 32'h00000033;
  //   end else begin
  //     inst <= inst_in;
  //   end
  // end
  assign CPU_MIO = MIO_ready;
  assign ID_PC_in = PC;
  assign ID_inst_in = inst_in;

  assign EX_PC_in = ID_PC;
  wire [3:0] EX_wea_in_temp;
  wire EX_RegWrite_in_temp;
  wire EX_Jump_in_temp;
  wire EX_Branch_in_temp;
//   assign EX_inst_in = ID_inst;
  Controler v1 (
      .OPcode(ID_inst[6:2]),
      .Fun7(ID_inst[31:25]),
      .Fun3(ID_inst[14:12]),

      .wea(EX_wea_in_temp),//
      .ImmSell(EX_ImmSell_in),
      .ALUSrc_B(EX_ALUSrc_B_in),
      .MemtoReg(EX_MemtoReg_in),
      .Jump(EX_Jump_in_temp),
      .Branch(EX_Branch_in_temp),
      .RegWrite(EX_RegWrite_in_temp),//
      .ALU_Control(EX_ALU_Control_in),
      .sign(EX_sign_in),
      .byte_n(EX_byte_n_in),
      .jump_choose(EX_jump_choose_in)
  );
  ImmGen U1 (
    .ImmSell(EX_ImmSell_in),
    .inst_field(ID_inst),
    .sign(1'b1),
    .Imm(EX_Imm_in)
);
wire [31:0] Rs1_data, Rs2_data;
// wire [4:0] Rs1_addr, Rs2_addr;
wire [4:0] W_addr;
assign Rs1_addr = ID_inst[19:15];
assign Rs2_addr = ID_inst[24:20];
assign W_addr = WB_Rd_addr;
assign RegWrite = WB_RegWrite;
assign EX_Rd_addr_in = ID_inst[11:7];
assign EX_Data_out_in = Rs2_data;
Regs U2 (
    `RegFile_Regs_Arguments
    .clk(clk),
    .rst(rst),
    .Rs1_addr(Rs1_addr),
    .Rs2_addr(Rs2_addr),
    .Wt_addr(W_addr),
    .Wt_data(WB_Rd_data),
    .RegWrite(WB_RegWrite),
    .Rs1_data(Rs1_data),
    .Rs2_data(Rs2_data)
);
// wire Rs1_ID_EX_hazard;
// wire Rs2_ID_EX_hazard;
// wire Rs1_ID_MEM_hazard;
// wire Rs2_ID_MEM_hazard;
// wire Rs1_ID_WB_hazard;
// wire Rs2_ID_WB_hazard;
assign Rs1_ID_EX_hazard=Rs1_addr==EX_Rd_addr&&EX_RegWrite&&EX_Rd_addr!=32'h0;
assign Rs2_ID_EX_hazard=Rs2_addr==EX_Rd_addr&&EX_RegWrite&&EX_Rd_addr!=32'h0;
assign Load_hazard=(EX_MemtoReg==`MEM2REG_MEM&&(Rs1_ID_EX_hazard||Rs2_ID_EX_hazard));
assign EX_wea_in = ID_pass?4'b0:EX_wea_in_temp;
assign EX_RegWrite_in = ID_pass?1'b0:EX_RegWrite_in_temp;
assign EX_Jump_in = ID_pass?1'b0:EX_Jump_in_temp;
assign EX_Branch_in = ID_pass?1'b0:EX_Branch_in_temp;
assign EX_Rs1_data_in = Rs1_data;
assign EX_Rs2_data_in = Rs2_data;
assign EX_Rs1_addr_in = Rs1_addr;
assign EX_Rs2_addr_in = Rs2_addr;


// assign MEM_PC_in = EX_PC;
// assign MEM_inst_in = EX_inst;
// wire[31:0] adder_2;
wire [31:0] ALU_out;
// wire zero;
// wire Rs1_EX_MEM_hazard, Rs2_EX_MEM_hazard, Rs1_EX_WB_hazard, Rs2_EX_WB_hazard;
assign Rs1_EX_MEM_hazard=EX_Rs1_addr==MEM_Rd_addr&&MEM_RegWrite&&MEM_Rd_addr!=32'h0;
assign Rs2_EX_MEM_hazard=EX_Rs2_addr==MEM_Rd_addr&&MEM_RegWrite&&MEM_Rd_addr!=32'h0;
assign Rs1_EX_WB_hazard=EX_Rs1_addr==WB_Rd_addr&&WB_RegWrite&&WB_Rd_addr!=32'h0;
assign Rs2_EX_WB_hazard=EX_Rs2_addr==WB_Rd_addr&&WB_RegWrite&&WB_Rd_addr!=32'h0;
// wire [31:0] Rs1_hazard_data, Rs2_hazard_data;
// assign Rs1_hazard_data=Rs1_EX_MEM_hazard?MEM_Rd_data:Rs1_EX_WB_hazard?WB_Rd_data:Rs1_data;
// assign Rs2_hazard_data=Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:Rs2_data;
// assign EX_Rs1_data_in = Rs1_EX_MEM_hazard?MEM_Rd_data:Rs1_EX_WB_hazard?WB_Rd_data:Rs1_data;
// assign EX_Rs2_data_in = Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:Rs2_data;
// wire [31:0] adder_1;
assign adder_1=Rs1_EX_MEM_hazard?MEM_Rd_data:Rs1_EX_WB_hazard?WB_Rd_data:EX_Rs1_data;
ALU U3 (
    .A(adder_1),
    .B(adder_2),
    .ALU_operation(EX_ALU_Control),
    .res(ALU_out),
    .zero(zero)
);
assign MEM_Addr_out_in=ALU_out;

assign adder_2=EX_ALUSrc_B?EX_Imm:Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:EX_Rs2_data; 

wire[31:0] PC_add_4=EX_PC+4;
wire[31:0] PC_imm=EX_Imm+EX_PC;
// wire Branch_final;
assign Branch_final=EX_Branch&zero;
wire[31:0] PC_branch=Branch_final?PC_imm:PC_add_4;
assign PC_jump=EX_Jump?((EX_jump_choose==`JUMP_ALU)?ALU_out:PC_imm):PC_branch;
assign MEM_Rd_data_in=
            EX_MemtoReg==`MEM2REG_ALU?ALU_out:
            EX_MemtoReg==`MEM2REG_PC_PLUS?PC_add_4:
            EX_MemtoReg==`MEM2REG_IMM_PC?PC_imm:32'b0;

assign MEM_MemtoReg_in=EX_MemtoReg;
assign MEM_RegWrite_in=EX_RegWrite;
assign MEM_sign_in=EX_sign;
assign MEM_byte_n_in=EX_byte_n;
assign MEM_Rd_addr_in=EX_Rd_addr;
assign MEM_wea_in=EX_wea;
assign MEM_Data_out_in=Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:EX_Data_out;



wire [31:0] mem_out;
extend U4(
    .byte_n(MEM_byte_n),
    .in(Data_in>>((MEM_Addr_out%4)<<3)),
    .sign(MEM_sign),
    .mem_data(mem_out)
);
assign Addr_out=MEM_Addr_out;
assign WB_Rd_data_in=MEM_MemtoReg==`MEM2REG_MEM?mem_out:MEM_Rd_data;
assign WB_Rd_addr_in=MEM_Rd_addr;
assign WB_RegWrite_in=MEM_RegWrite;

PC_control U0(
    .PC(PC+4),
    .ID_PC(ID_PC),
    .PC_jump(PC_jump),
    .Load_hazard(Load_hazard),
    .PC_out(PC_in),
    .ID_pass(ID_pass),
    .change(EX_Jump||Branch_final));
assign change=EX_Jump||Branch_final;
assign try=PC_jump!=ID_PC;



endmodule
