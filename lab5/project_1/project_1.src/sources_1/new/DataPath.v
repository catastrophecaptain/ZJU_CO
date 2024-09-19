
`include "Lab4.vh"
module DataPath (
    `RegFile_Regs_Outputs
    input  wire clk,
    input  wire rst,
    input  wire [31:0] inst_field,
    input  wire [31:0] Data_in,
    input  wire [`IMM_SEL_WIDTH-1:0] ImmSell,
    input  wire ALUSrc_B,
    input  wire [`MEM2REG_WIDTH-1:0] MemtoReg,
    input  wire Jump,
    input  wire Branch,
    input  wire RegWrite,
    input  wire [`ALU_OP_WIDTH-1:0] ALU_Control,
    input wire sign,
    input wire[1:0] byte_n,
    input wire jump_choose,
    output wire [31:0] PC_out,
    output wire [31:0] Data_out,
    output wire [31:0] Addr_out
);
reg[31:0] PC=32'h4;
wire[31:0] imm;
ImmGen U1 (
    .ImmSell(ImmSell),
    .inst_field(inst_field),
    .sign(1'b1),
    .Imm(imm)
);
wire [31:0] Rs1_data, Rs2_data;
wire [4:0] Rs1_addr, Rs2_addr, W_addr;
wire[31:0]W_data;
assign Rs1_addr = inst_field[19:15];
assign Rs2_addr = inst_field[24:20];
assign W_addr = inst_field[11:7];
Regs U2 (
    `RegFile_Regs_Arguments
    .clk(clk),
    .rst(rst),
    .Rs1_addr(Rs1_addr),
    .Rs2_addr(Rs2_addr),
    .Wt_addr(W_addr),
    .Wt_data(W_data),
    .RegWrite(RegWrite),
    .Rs1_data(Rs1_data),
    .Rs2_data(Rs2_data)
);
wire[31:0] adder_2;
wire [31:0] ALU_out;
wire zero;
ALU U3 (
    .A(Rs1_data),
    .B(adder_2),
    .ALU_operation(ALU_Control),
    .res(ALU_out),
    .zero(zero)
);
assign Addr_out=ALU_out;
assign Data_out=Rs2_data;
wire [31:0] mem_out;
extend U4(
    .byte_n(byte_n),
    .in(Data_in>>((Addr_out%4)<<3)),
    .sign(sign),
    .mem_data(mem_out)
);

assign adder_2=ALUSrc_B?imm:Rs2_data;

wire[31:0] PC_temp;
wire[31:0] PC_add_4=PC_temp+4;
wire[31:0] PC_imm=imm+PC_temp;
wire Branch_final=Branch&zero;
wire[31:0] PC_branch=Branch_final?PC_imm:PC_add_4;
wire[31:0] PC_jump=Jump?((jump_choose==`JUMP_ALU)?ALU_out:PC_imm):PC_branch;
always@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        PC<=32'hFFFFFFFC;
    end
    else
    begin
        PC<=PC_jump;
    end
end
assign PC_temp=PC;
assign PC_out=PC_jump;

assign W_data=MemtoReg==`MEM2REG_MEM?mem_out:
            MemtoReg==`MEM2REG_ALU?ALU_out:
            MemtoReg==`MEM2REG_PC_PLUS?PC_add_4:
            MemtoReg==`MEM2REG_IMM_PC?PC_imm:32'b0;
            
endmodule
