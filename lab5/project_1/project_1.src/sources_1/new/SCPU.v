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
  output wire [31:0] rs1_val,
  output wire [31:0] rs2_val,
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
wire [31:0] PC_in;
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
wire ID_pass;
wire [31:0]PC_jump;
  assign CPU_MIO = MIO_ready;
  assign ID_PC_in = PC;
  assign ID_inst_in = inst_in;

  assign EX_PC_in = ID_PC;
  wire [3:0] EX_wea_in_temp;
  wire EX_RegWrite_in_temp;
  wire EX_Jump_in_temp;
  wire EX_Branch_in_temp;
  Controler v1 (
      .OPcode(ID_inst[6:2]),
      .Fun7(ID_inst[31:25]),
      .Fun3(ID_inst[14:12]),

      .wea(EX_wea_in_temp),
      .ImmSell(EX_ImmSell_in),
      .ALUSrc_B(EX_ALUSrc_B_in),
      .MemtoReg(EX_MemtoReg_in),
      .Jump(EX_Jump_in_temp),
      .Branch(EX_Branch_in_temp),
      .RegWrite(EX_RegWrite_in_temp),
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
wire [4:0] Rs1_addr;
wire [4:0] Rs2_addr;
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
wire Load_hazard;
load_hazard U6(
    .Rs1_addr(Rs1_addr),
    .Rs2_addr(Rs2_addr),
    .EX_Rd_addr(EX_Rd_addr),
    .EX_RegWrite(EX_RegWrite),
    .EX_MemtoReg(EX_MemtoReg),
    .Load_hazard(Load_hazard)
);
bubble U11(
    .ID_pass(ID_pass),
    .EX_wea_in_temp(EX_wea_in_temp),
    .EX_RegWrite_in_temp(EX_RegWrite_in_temp),
    .EX_Jump_in_temp(EX_Jump_in_temp),
    .EX_Branch_in_temp(EX_Branch_in_temp),
    .EX_wea_in(EX_wea_in),
    .EX_RegWrite_in(EX_RegWrite_in),
    .EX_Jump_in(EX_Jump_in),
    .EX_Branch_in(EX_Branch_in)
);
assign EX_Rs1_data_in = Rs1_data;
assign EX_Rs2_data_in = Rs2_data;
assign EX_Rs1_addr_in = Rs1_addr;
assign EX_Rs2_addr_in = Rs2_addr;


wire [31:0] ALU_out;
wire zero;
wire [31:0] adder_1;
wire[31:0] adder_2;
forwarding U5(
    .EX_Rs1_data(EX_Rs1_data),
    .EX_Rs2_data(EX_Rs2_data),
    .EX_Rs1_addr(EX_Rs1_addr),
    .EX_Rs2_addr(EX_Rs2_addr),
    .EX_Data_out(EX_Data_out),
    .EX_Imm(EX_Imm),
    .EX_ALUSrc_B(EX_ALUSrc_B),
    .MEM_Rd_addr(MEM_Rd_addr),
    .MEM_RegWrite(MEM_RegWrite),
    .MEM_Rd_data(MEM_Rd_data),
    .WB_Rd_addr(WB_Rd_addr),
    .WB_RegWrite(WB_RegWrite),
    .WB_Rd_data(WB_Rd_data),
    .MEM_Data_out_in(MEM_Data_out_in),
    .adder_1(adder_1),
    .adder_2(adder_2)
);
assign rs1_val=adder_1;
assign rs2_val=adder_2;
ALU U3 (
    .A(adder_1),
    .B(adder_2),
    .ALU_operation(EX_ALU_Control),
    .res(ALU_out),
    .zero(zero)
);
assign MEM_Addr_out_in=ALU_out;

wire change;
PC_choose U7(
    .EX_PC(EX_PC),
    .EX_Imm(EX_Imm),
    .ALU_out(ALU_out),
    .zero(zero),
    .EX_Branch(EX_Branch),
    .EX_Jump(EX_Jump),
    .EX_jump_choose(EX_jump_choose),
    .PC_jump(PC_jump),
    .change(change)
);


wire [31:0] mem_out;
Rd_choose U8(
    .EX_PC(EX_PC),
    .EX_Imm(EX_Imm),
    .ALU_out(ALU_out),
    .mem_out(mem_out),
    .MEM_Rd_data(MEM_Rd_data),
    .EX_MemtoReg(EX_MemtoReg),
    .MEM_MemtoReg(MEM_MemtoReg),
    .MEM_Rd_data_in(MEM_Rd_data_in),
    .WB_Rd_data_in(WB_Rd_data_in)
);


assign MEM_MemtoReg_in=EX_MemtoReg;
assign MEM_RegWrite_in=EX_RegWrite;
assign MEM_sign_in=EX_sign;
assign MEM_byte_n_in=EX_byte_n;
assign MEM_Rd_addr_in=EX_Rd_addr;
assign MEM_wea_in=EX_wea;

wire[31:0] Data_in_shift;
extend U4(
    .byte_n(MEM_byte_n),
    .in(Data_in_shift),
    .sign(MEM_sign),
    .mem_data(mem_out)
);

assign WB_Rd_addr_in=MEM_Rd_addr;
assign WB_RegWrite_in=MEM_RegWrite;


RAM_shift U9(
    .MEM_Addr_out(MEM_Addr_out),
    .MEM_Data_out(MEM_Data_out),
    .MEM_wea(MEM_wea),
    .Data_in(Data_in),
    .Data_out(Data_out),
    .Data_in_shift(Data_in_shift),
    .Addr_out(Addr_out),
    .MemRW(MemRW),
    .wea(wea)
);

PC_control U0(
    .PC(PC),
    .ID_PC(ID_PC),
    .PC_jump(PC_jump),
    .Load_hazard(Load_hazard),
    .PC_out(PC_in),
    .ID_pass(ID_pass),
    .change(change)
    );

endmodule
