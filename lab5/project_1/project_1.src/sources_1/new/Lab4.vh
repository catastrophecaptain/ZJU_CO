/* WHAT'S THIS HEADERFILE FOR? */
/*
 * Reffered to code written by PanZiyue, TA of 2020_CO 
 * Macro for opcode/func3 for RV32I
 * declaration, inputs/outputs, assignment for debug signals(RegFile)
*/
/*PipelineReg IF ID EX MEM WB*/
`define ID_PipelineReg_declaration \
wire [31:0] ID_PC_in; \
wire [31:0] ID_inst_in; \
wire [31:0] ID_Imm_in; \
wire [31:0] ID_Rd_data_in; \
wire [`IMM_SEL_WIDTH-1:0] ID_ImmSell_in; \
wire [`MEM2REG_WIDTH-1:0] ID_MemtoReg_in; \
wire ID_ALUSrc_B_in; \
wire ID_Jump_in; \
wire ID_Branch_in; \
wire ID_RegWrite_in; \
wire [`ALU_OP_WIDTH-1:0] ID_ALU_Control_in; \
wire ID_sign_in; \
wire [1:0] ID_byte_n_in; \
wire ID_jump_choose_in; \
wire [31:0] ID_Rs1_data_in; \
wire [31:0] ID_Rs2_data_in; \
wire [4:0] ID_Rd_addr_in; \
wire [3:0] ID_wea_in; \
wire [31:0] ID_Data_out_in; \
wire [31:0] ID_Addr_out_in; \
wire [31:0] ID_PC; \
wire [31:0] ID_inst; \
wire [31:0] ID_Imm; \
wire [31:0] ID_Rd_data; \
wire [`IMM_SEL_WIDTH-1:0] ID_ImmSell; \
wire [`MEM2REG_WIDTH-1:0] ID_MemtoReg; \
wire ID_ALUSrc_B; \
wire ID_Jump; \
wire ID_Branch; \
wire ID_RegWrite; \
wire [`ALU_OP_WIDTH-1:0] ID_ALU_Control; \
wire ID_sign; \
wire [1:0] ID_byte_n; \
wire ID_jump_choose; \
wire [31:0] ID_Rs1_data; \
wire [31:0] ID_Rs2_data; \
wire [4:0] ID_Rd_addr; \
wire [3:0] ID_wea; \
wire [31:0] ID_Data_out; \
wire [31:0] ID_Addr_out; \
wire [4:0] ID_Rs1_addr_in; \
wire [4:0] ID_Rs2_addr_in; \
wire [4:0] ID_Rs1_addr; \
wire [4:0] ID_Rs2_addr
`define ID_PipelineReg_Module \
PipelineReg ID_PipelineReg( \
    .clk(~clk), \
    .rst(rst), \
    .inst_in(ID_inst_in), \
    .PC_in(ID_PC_in), \
    .Imm_in(ID_Imm_in), \
    .Rd_data_in(ID_Rd_data_in), \
    .ImmSell_in(ID_ImmSell_in), \
    .MemtoReg_in(ID_MemtoReg_in), \
    .ALUSrc_B_in(ID_ALUSrc_B_in), \
    .Jump_in(ID_Jump_in), \
    .Branch_in(ID_Branch_in), \
    .RegWrite_in(ID_RegWrite_in), \
    .ALU_Control_in(ID_ALU_Control_in), \
    .sign_in(ID_sign_in), \
    .byte_n_in(ID_byte_n_in), \
    .jump_choose_in(ID_jump_choose_in), \
    .Rs1_data_in(ID_Rs1_data_in), \
    .Rs2_data_in(ID_Rs2_data_in), \
    .Rd_addr_in(ID_Rd_addr_in), \
    .wea_in(ID_wea_in), \
    .Data_out_in(ID_Data_out_in), \
    .Addr_out_in(ID_Addr_out_in), \
    .inst(ID_inst), \
    .PC(ID_PC), \
    .Imm(ID_Imm), \
    .Rd_data(ID_Rd_data), \
    .ImmSell(ID_ImmSell), \
    .MemtoReg(ID_MemtoReg), \
    .ALUSrc_B(ID_ALUSrc_B), \
    .Jump(ID_Jump), \
    .Branch(ID_Branch), \
    .RegWrite(ID_RegWrite), \
    .ALU_Control(ID_ALU_Control), \
    .sign(ID_sign), \
    .byte_n(ID_byte_n), \
    .jump_choose(ID_jump_choose), \
    .Rs1_data(ID_Rs1_data), \
    .Rs2_data(ID_Rs2_data), \
    .Rd_addr(ID_Rd_addr), \
    .wea(ID_wea), \
    .Data_out(ID_Data_out), \
    .Addr_out(ID_Addr_out), \
    .Rs1_addr_in(ID_Rs1_addr_in), \
    .Rs2_addr_in(ID_Rs2_addr_in), \
    .Rs1_addr(ID_Rs1_addr), \
    .Rs2_addr(ID_Rs2_addr) \
)
`define EX_PipelineReg_declaration \
wire [31:0] EX_PC_in; \
wire [31:0] EX_inst_in; \
wire [31:0] EX_Imm_in; \
wire [31:0] EX_Rd_data_in; \
wire [`IMM_SEL_WIDTH-1:0] EX_ImmSell_in; \
wire [`MEM2REG_WIDTH-1:0] EX_MemtoReg_in; \
wire EX_ALUSrc_B_in; \
wire EX_Jump_in; \
wire EX_Branch_in; \
wire EX_RegWrite_in; \
wire [`ALU_OP_WIDTH-1:0] EX_ALU_Control_in; \
wire EX_sign_in; \
wire [1:0] EX_byte_n_in; \
wire EX_jump_choose_in; \
wire [31:0] EX_Rs1_data_in; \
wire [31:0] EX_Rs2_data_in; \
wire [4:0] EX_Rd_addr_in; \
wire [3:0] EX_wea_in; \
wire [31:0] EX_Data_out_in; \
wire [31:0] EX_Addr_out_in; \
wire [31:0] EX_PC; \
wire [31:0] EX_inst; \
wire [31:0] EX_Imm; \
wire [31:0] EX_Rd_data; \
wire [`IMM_SEL_WIDTH-1:0] EX_ImmSell; \
wire [`MEM2REG_WIDTH-1:0] EX_MemtoReg; \
wire EX_ALUSrc_B; \
wire EX_Jump; \
wire EX_Branch; \
wire EX_RegWrite; \
wire [`ALU_OP_WIDTH-1:0] EX_ALU_Control; \
wire EX_sign; \
wire [1:0] EX_byte_n; \
wire EX_jump_choose; \
wire [31:0] EX_Rs1_data; \
wire [31:0] EX_Rs2_data; \
wire [4:0] EX_Rd_addr; \
wire [3:0] EX_wea; \
wire [31:0] EX_Data_out; \
wire [31:0] EX_Addr_out; \
wire [4:0] EX_Rs1_addr_in; \
wire [4:0] EX_Rs2_addr_in; \
wire [4:0] EX_Rs1_addr; \
wire [4:0] EX_Rs2_addr
`define EX_PipelineReg_Module \
PipelineReg EX_PipelineReg( \
    .clk(~clk), \
    .rst(rst), \
    .inst_in(EX_inst_in), \
    .PC_in(EX_PC_in), \
    .Imm_in(EX_Imm_in), \
    .Rd_data_in(EX_Rd_data_in), \
    .ImmSell_in(EX_ImmSell_in), \
    .MemtoReg_in(EX_MemtoReg_in), \
    .ALUSrc_B_in(EX_ALUSrc_B_in), \
    .Jump_in(EX_Jump_in), \
    .Branch_in(EX_Branch_in), \
    .RegWrite_in(EX_RegWrite_in), \
    .ALU_Control_in(EX_ALU_Control_in), \
    .sign_in(EX_sign_in), \
    .byte_n_in(EX_byte_n_in), \
    .jump_choose_in(EX_jump_choose_in), \
    .Rs1_data_in(EX_Rs1_data_in), \
    .Rs2_data_in(EX_Rs2_data_in), \
    .Rd_addr_in(EX_Rd_addr_in), \
    .wea_in(EX_wea_in), \
    .Data_out_in(EX_Data_out_in), \
    .Addr_out_in(EX_Addr_out_in), \
    .inst(EX_inst), \
    .PC(EX_PC), \
    .Imm(EX_Imm), \
    .Rd_data(EX_Rd_data), \
    .ImmSell(EX_ImmSell), \
    .MemtoReg(EX_MemtoReg), \
    .ALUSrc_B(EX_ALUSrc_B), \
    .Jump(EX_Jump), \
    .Branch(EX_Branch), \
    .RegWrite(EX_RegWrite), \
    .ALU_Control(EX_ALU_Control), \
    .sign(EX_sign), \
    .byte_n(EX_byte_n), \
    .jump_choose(EX_jump_choose), \
    .Rs1_data(EX_Rs1_data), \
    .Rs2_data(EX_Rs2_data), \
    .Rd_addr(EX_Rd_addr), \
    .wea(EX_wea), \
    .Data_out(EX_Data_out), \
    .Addr_out(EX_Addr_out), \
    .Rs1_addr_in(EX_Rs1_addr_in), \
    .Rs2_addr_in(EX_Rs2_addr_in), \
    .Rs1_addr(EX_Rs1_addr), \
    .Rs2_addr(EX_Rs2_addr) \
)
 `define MEM_PipelineReg_declaration \
wire [31:0] MEM_PC_in; \
wire [31:0] MEM_inst_in; \
wire [31:0] MEM_Imm_in; \
wire [31:0] MEM_Rd_data_in; \
wire [`IMM_SEL_WIDTH-1:0] MEM_ImmSell_in; \
wire [`MEM2REG_WIDTH-1:0] MEM_MemtoReg_in; \
wire MEM_ALUSrc_B_in; \
wire MEM_Jump_in; \
wire MEM_Branch_in; \
wire MEM_RegWrite_in; \
wire [`ALU_OP_WIDTH-1:0] MEM_ALU_Control_in; \
wire MEM_sign_in; \
wire [1:0] MEM_byte_n_in; \
wire MEM_jump_choose_in; \
wire [31:0] MEM_Rs1_data_in; \
wire [31:0] MEM_Rs2_data_in; \
wire [4:0] MEM_Rd_addr_in; \
wire [3:0] MEM_wea_in; \
wire [31:0] MEM_Data_out_in; \
wire [31:0] MEM_Addr_out_in; \
wire [31:0] MEM_PC; \
wire [31:0] MEM_inst; \
wire [31:0] MEM_Imm; \
wire [31:0] MEM_Rd_data; \
wire [`IMM_SEL_WIDTH-1:0] MEM_ImmSell; \
wire [`MEM2REG_WIDTH-1:0] MEM_MemtoReg; \
wire MEM_ALUSrc_B; \
wire MEM_Jump; \
wire MEM_Branch; \
wire MEM_RegWrite; \
wire [`ALU_OP_WIDTH-1:0] MEM_ALU_Control; \
wire MEM_sign; \
wire [1:0] MEM_byte_n; \
wire MEM_jump_choose; \
wire [31:0] MEM_Rs1_data; \
wire [31:0] MEM_Rs2_data; \
wire [4:0] MEM_Rd_addr; \
wire [3:0] MEM_wea; \
wire [31:0] MEM_Data_out; \
wire [31:0] MEM_Addr_out; \
wire [4:0] MEM_Rs1_addr_in; \
wire [4:0] MEM_Rs2_addr_in; \
wire [4:0] MEM_Rs1_addr; \
wire [4:0] MEM_Rs2_addr
`define MEM_PipelineReg_Module \
PipelineReg MEM_PipelineReg( \
    .clk(~clk), \
    .rst(rst), \
    .inst_in(MEM_inst_in), \
    .PC_in(MEM_PC_in), \
    .Imm_in(MEM_Imm_in), \
    .Rd_data_in(MEM_Rd_data_in), \
    .ImmSell_in(MEM_ImmSell_in), \
    .MemtoReg_in(MEM_MemtoReg_in), \
    .ALUSrc_B_in(MEM_ALUSrc_B_in), \
    .Jump_in(MEM_Jump_in), \
    .Branch_in(MEM_Branch_in), \
    .RegWrite_in(MEM_RegWrite_in), \
    .ALU_Control_in(MEM_ALU_Control_in), \
    .sign_in(MEM_sign_in), \
    .byte_n_in(MEM_byte_n_in), \
    .jump_choose_in(MEM_jump_choose_in), \
    .Rs1_data_in(MEM_Rs1_data_in), \
    .Rs2_data_in(MEM_Rs2_data_in), \
    .Rd_addr_in(MEM_Rd_addr_in), \
    .wea_in(MEM_wea_in), \
    .Data_out_in(MEM_Data_out_in), \
    .Addr_out_in(MEM_Addr_out_in), \
    .inst(MEM_inst), \
    .PC(MEM_PC), \
    .Imm(MEM_Imm), \
    .Rd_data(MEM_Rd_data), \
    .ImmSell(MEM_ImmSell), \
    .MemtoReg(MEM_MemtoReg), \
    .ALUSrc_B(MEM_ALUSrc_B), \
    .Jump(MEM_Jump), \
    .Branch(MEM_Branch), \
    .RegWrite(MEM_RegWrite), \
    .ALU_Control(MEM_ALU_Control), \
    .sign(MEM_sign), \
    .byte_n(MEM_byte_n), \
    .jump_choose(MEM_jump_choose), \
    .Rs1_data(MEM_Rs1_data), \
    .Rs2_data(MEM_Rs2_data), \
    .Rd_addr(MEM_Rd_addr), \
    .wea(MEM_wea), \
    .Data_out(MEM_Data_out), \
    .Addr_out(MEM_Addr_out), \
    .Rs1_addr_in(MEM_Rs1_addr_in), \
    .Rs2_addr_in(MEM_Rs2_addr_in), \
    .Rs1_addr(MEM_Rs1_addr), \
    .Rs2_addr(MEM_Rs2_addr) \
)
`define WB_PipelineReg_declaration \
wire [31:0] WB_PC_in; \
wire [31:0] WB_inst_in; \
wire [31:0] WB_Imm_in; \
wire [31:0] WB_Rd_data_in; \
wire [`IMM_SEL_WIDTH-1:0] WB_ImmSell_in; \
wire [`MEM2REG_WIDTH-1:0] WB_MemtoReg_in; \
wire WB_ALUSrc_B_in; \
wire WB_Jump_in; \
wire WB_Branch_in; \
wire WB_RegWrite_in; \
wire [`ALU_OP_WIDTH-1:0] WB_ALU_Control_in; \
wire WB_sign_in; \
wire [1:0] WB_byte_n_in; \
wire WB_jump_choose_in; \
wire [31:0] WB_Rs1_data_in; \
wire [31:0] WB_Rs2_data_in; \
wire [4:0] WB_Rd_addr_in; \
wire [3:0] WB_wea_in; \
wire [31:0] WB_Data_out_in; \
wire [31:0] WB_Addr_out_in; \
wire [31:0] WB_PC; \
wire [31:0] WB_inst; \
wire [31:0] WB_Imm; \
wire [31:0] WB_Rd_data; \
wire [`IMM_SEL_WIDTH-1:0] WB_ImmSell; \
wire [`MEM2REG_WIDTH-1:0] WB_MemtoReg; \
wire WB_ALUSrc_B; \
wire WB_Jump; \
wire WB_Branch; \
wire WB_RegWrite; \
wire [`ALU_OP_WIDTH-1:0] WB_ALU_Control; \
wire WB_sign; \
wire [1:0] WB_byte_n; \
wire WB_jump_choose; \
wire [31:0] WB_Rs1_data; \
wire [31:0] WB_Rs2_data; \
wire [4:0] WB_Rd_addr; \
wire [3:0] WB_wea; \
wire [31:0] WB_Data_out; \
wire [31:0] WB_Addr_out; \
wire [4:0] WB_Rs1_addr_in; \
wire [4:0] WB_Rs2_addr_in; \
wire [4:0] WB_Rs1_addr; \
wire [4:0] WB_Rs2_addr
`define WB_PipelineReg_Module \
PipelineReg WB_PipelineReg( \
    .clk(~clk), \
    .rst(rst), \
    .inst_in(WB_inst_in), \
    .PC_in(WB_PC_in), \
    .Imm_in(WB_Imm_in), \
    .Rd_data_in(WB_Rd_data_in), \
    .ImmSell_in(WB_ImmSell_in), \
    .MemtoReg_in(WB_MemtoReg_in), \
    .ALUSrc_B_in(WB_ALUSrc_B_in), \
    .Jump_in(WB_Jump_in), \
    .Branch_in(WB_Branch_in), \
    .RegWrite_in(WB_RegWrite_in), \
    .ALU_Control_in(WB_ALU_Control_in), \
    .sign_in(WB_sign_in), \
    .byte_n_in(WB_byte_n_in), \
    .jump_choose_in(WB_jump_choose_in), \
    .Rs1_data_in(WB_Rs1_data_in), \
    .Rs2_data_in(WB_Rs2_data_in), \
    .Rd_addr_in(WB_Rd_addr_in), \
    .wea_in(WB_wea_in), \
    .Data_out_in(WB_Data_out_in), \
    .Addr_out_in(WB_Addr_out_in), \
    .inst(WB_inst), \
    .PC(WB_PC), \
    .Imm(WB_Imm), \
    .Rd_data(WB_Rd_data), \
    .ImmSell(WB_ImmSell), \
    .MemtoReg(WB_MemtoReg), \
    .ALUSrc_B(WB_ALUSrc_B), \
    .Jump(WB_Jump), \
    .Branch(WB_Branch), \
    .RegWrite(WB_RegWrite), \
    .ALU_Control(WB_ALU_Control), \
    .sign(WB_sign), \
    .byte_n(WB_byte_n), \
    .jump_choose(WB_jump_choose), \
    .Rs1_data(WB_Rs1_data), \
    .Rs2_data(WB_Rs2_data), \
    .Rd_addr(WB_Rd_addr), \
    .wea(WB_wea), \
    .Data_out(WB_Data_out), \
    .Addr_out(WB_Addr_out), \
    .Rs1_addr_in(WB_Rs1_addr_in), \
    .Rs2_addr_in(WB_Rs2_addr_in), \
    .Rs1_addr(WB_Rs1_addr), \
    .Rs2_addr(WB_Rs2_addr) \
)
`define ID_PipelineReg_Output \
output wire [31:0] ID_PC_in, \
output wire [31:0] ID_inst_in, \
output wire [31:0] ID_Imm_in, \
output wire [31:0] ID_Rd_data_in, \
output wire [`IMM_SEL_WIDTH-1:0] ID_ImmSell_in, \
output wire [`MEM2REG_WIDTH-1:0] ID_MemtoReg_in, \
output wire ID_ALUSrc_B_in, \
output wire ID_Jump_in, \
output wire ID_Branch_in, \
output wire ID_RegWrite_in, \
output wire [`ALU_OP_WIDTH-1:0] ID_ALU_Control_in, \
output wire ID_sign_in, \
output wire [1:0] ID_byte_n_in, \
output wire ID_jump_choose_in, \
output wire [31:0] ID_Rs1_data_in, \
output wire [31:0] ID_Rs2_data_in, \
output wire [4:0] ID_Rd_addr_in, \
output wire [3:0] ID_wea_in, \
output wire [31:0] ID_Data_out_in, \
output wire [31:0] ID_Addr_out_in, \
output wire [31:0] ID_PC, \
output wire [31:0] ID_inst, \
output wire [31:0] ID_Imm, \
output wire [31:0] ID_Rd_data, \
output wire [`IMM_SEL_WIDTH-1:0] ID_ImmSell, \
output wire [`MEM2REG_WIDTH-1:0] ID_MemtoReg, \
output wire ID_ALUSrc_B, \
output wire ID_Jump, \
output wire ID_Branch, \
output wire ID_RegWrite, \
output wire [`ALU_OP_WIDTH-1:0] ID_ALU_Control, \
output wire ID_sign, \
output wire [1:0] ID_byte_n, \
output wire ID_jump_choose, \
output wire [31:0] ID_Rs1_data, \
output wire [31:0] ID_Rs2_data, \
output wire [4:0] ID_Rd_addr, \
output wire [3:0] ID_wea, \
output wire [31:0] ID_Data_out, \
output wire [31:0] ID_Addr_out, \
output wire [4:0] ID_Rs1_addr_in, \
output wire [4:0] ID_Rs2_addr_in, \
output wire [4:0] ID_Rs1_addr, \
output wire [4:0] ID_Rs2_addr
`define EX_PipelineReg_Output \
output wire [31:0] EX_PC_in, \
output wire [31:0] EX_inst_in, \
output wire [31:0] EX_Imm_in, \
output wire [31:0] EX_Rd_data_in, \
output wire [`IMM_SEL_WIDTH-1:0] EX_ImmSell_in, \
output wire [`MEM2REG_WIDTH-1:0] EX_MemtoReg_in, \
output wire EX_ALUSrc_B_in, \
output wire EX_Jump_in, \
output wire EX_Branch_in, \
output wire EX_RegWrite_in, \
output wire [`ALU_OP_WIDTH-1:0] EX_ALU_Control_in, \
output wire EX_sign_in, \
output wire [1:0] EX_byte_n_in, \
output wire EX_jump_choose_in, \
output wire [31:0] EX_Rs1_data_in, \
output wire [31:0] EX_Rs2_data_in, \
output wire [4:0] EX_Rd_addr_in, \
output wire [3:0] EX_wea_in, \
output wire [31:0] EX_Data_out_in, \
output wire [31:0] EX_Addr_out_in, \
output wire [31:0] EX_PC, \
output wire [31:0] EX_inst, \
output wire [31:0] EX_Imm, \
output wire [31:0] EX_Rd_data, \
output wire [`IMM_SEL_WIDTH-1:0] EX_ImmSell, \
output wire [`MEM2REG_WIDTH-1:0] EX_MemtoReg, \
output wire EX_ALUSrc_B, \
output wire EX_Jump, \
output wire EX_Branch, \
output wire EX_RegWrite, \
output wire [`ALU_OP_WIDTH-1:0] EX_ALU_Control, \
output wire EX_sign, \
output wire [1:0] EX_byte_n, \
output wire EX_jump_choose, \
output wire [31:0] EX_Rs1_data, \
output wire [31:0] EX_Rs2_data, \
output wire [4:0] EX_Rd_addr, \
output wire [3:0] EX_wea, \
output wire [31:0] EX_Data_out, \
output wire [31:0] EX_Addr_out, \
output wire [4:0] EX_Rs1_addr_in, \
output wire [4:0] EX_Rs2_addr_in, \
output wire [4:0] EX_Rs1_addr, \
output wire [4:0] EX_Rs2_addr
`define MEM_PipelineReg_Output \
output wire [31:0] MEM_PC_in, \
output wire [31:0] MEM_inst_in, \
output wire [31:0] MEM_Imm_in, \
output wire [31:0] MEM_Rd_data_in, \
output wire [`IMM_SEL_WIDTH-1:0] MEM_ImmSell_in, \
output wire [`MEM2REG_WIDTH-1:0] MEM_MemtoReg_in, \
output wire MEM_ALUSrc_B_in, \
output wire MEM_Jump_in, \
output wire MEM_Branch_in, \
output wire MEM_RegWrite_in, \
output wire [`ALU_OP_WIDTH-1:0] MEM_ALU_Control_in, \
output wire MEM_sign_in, \
output wire [1:0] MEM_byte_n_in, \
output wire MEM_jump_choose_in, \
output wire [31:0] MEM_Rs1_data_in, \
output wire [31:0] MEM_Rs2_data_in, \
output wire [4:0] MEM_Rd_addr_in, \
output wire [3:0] MEM_wea_in, \
output wire [31:0] MEM_Data_out_in, \
output wire [31:0] MEM_Addr_out_in, \
output wire [31:0] MEM_PC, \
output wire [31:0] MEM_inst, \
output wire [31:0] MEM_Imm, \
output wire [31:0] MEM_Rd_data, \
output wire [`IMM_SEL_WIDTH-1:0] MEM_ImmSell, \
output wire [`MEM2REG_WIDTH-1:0] MEM_MemtoReg, \
output wire MEM_ALUSrc_B, \
output wire MEM_Jump, \
output wire MEM_Branch, \
output wire MEM_RegWrite, \
output wire [`ALU_OP_WIDTH-1:0] MEM_ALU_Control, \
output wire MEM_sign, \
output wire [1:0] MEM_byte_n, \
output wire MEM_jump_choose, \
output wire [31:0] MEM_Rs1_data, \
output wire [31:0] MEM_Rs2_data, \
output wire [4:0] MEM_Rd_addr, \
output wire [3:0] MEM_wea, \
output wire [31:0] MEM_Data_out, \
output wire [31:0] MEM_Addr_out, \
output wire [4:0] MEM_Rs1_addr_in, \
output wire [4:0] MEM_Rs2_addr_in, \
output wire [4:0] MEM_Rs1_addr, \
output wire [4:0] MEM_Rs2_addr
`define WB_PipelineReg_Output \
output wire [31:0] WB_PC_in, \
output wire [31:0] WB_inst_in, \
output wire [31:0] WB_Imm_in, \
output wire [31:0] WB_Rd_data_in, \
output wire [`IMM_SEL_WIDTH-1:0] WB_ImmSell_in, \
output wire [`MEM2REG_WIDTH-1:0] WB_MemtoReg_in, \
output wire WB_ALUSrc_B_in, \
output wire WB_Jump_in, \
output wire WB_Branch_in, \
output wire WB_RegWrite_in, \
output wire [`ALU_OP_WIDTH-1:0] WB_ALU_Control_in, \
output wire WB_sign_in, \
output wire [1:0] WB_byte_n_in, \
output wire WB_jump_choose_in, \
output wire [31:0] WB_Rs1_data_in, \
output wire [31:0] WB_Rs2_data_in, \
output wire [4:0] WB_Rd_addr_in, \
output wire [3:0] WB_wea_in, \
output wire [31:0] WB_Data_out_in, \
output wire [31:0] WB_Addr_out_in, \
output wire [31:0] WB_PC, \
output wire [31:0] WB_inst, \
output wire [31:0] WB_Imm, \
output wire [31:0] WB_Rd_data, \
output wire [`IMM_SEL_WIDTH-1:0] WB_ImmSell, \
output wire [`MEM2REG_WIDTH-1:0] WB_MemtoReg, \
output wire WB_ALUSrc_B, \
output wire WB_Jump, \
output wire WB_Branch, \
output wire WB_RegWrite, \
output wire [`ALU_OP_WIDTH-1:0] WB_ALU_Control, \
output wire WB_sign, \
output wire [1:0] WB_byte_n, \
output wire WB_jump_choose, \
output wire [31:0] WB_Rs1_data, \
output wire [31:0] WB_Rs2_data, \
output wire [4:0] WB_Rd_addr, \
output wire [3:0] WB_wea, \
output wire [31:0] WB_Data_out, \
output wire [31:0] WB_Addr_out, \
output wire [4:0] WB_Rs1_addr_in, \
output wire [4:0] WB_Rs2_addr_in, \
output wire [4:0] WB_Rs1_addr, \
output wire [4:0] WB_Rs2_addr
`define ID_PipelineReg_Input \
.ID_PC_in(ID_PC_in), \
.ID_inst_in(ID_inst_in), \
.ID_Imm_in(ID_Imm_in), \
.ID_Rd_data_in(ID_Rd_data_in), \
.ID_ImmSell_in(ID_ImmSell_in), \
.ID_MemtoReg_in(ID_MemtoReg_in), \
.ID_ALUSrc_B_in(ID_ALUSrc_B_in), \
.ID_Jump_in(ID_Jump_in), \
.ID_Branch_in(ID_Branch_in), \
.ID_RegWrite_in(ID_RegWrite_in), \
.ID_ALU_Control_in(ID_ALU_Control_in), \
.ID_sign_in(ID_sign_in), \
.ID_byte_n_in(ID_byte_n_in), \
.ID_jump_choose_in(ID_jump_choose_in), \
.ID_Rs1_data_in(ID_Rs1_data_in), \
.ID_Rs2_data_in(ID_Rs2_data_in), \
.ID_Rd_addr_in(ID_Rd_addr_in), \
.ID_wea_in(ID_wea_in), \
.ID_Data_out_in(ID_Data_out_in), \
.ID_Addr_out_in(ID_Addr_out_in), \
.ID_PC(ID_PC), \
.ID_inst(ID_inst), \
.ID_Imm(ID_Imm), \
.ID_Rd_data(ID_Rd_data), \
.ID_ImmSell(ID_ImmSell), \
.ID_MemtoReg(ID_MemtoReg), \
.ID_ALUSrc_B(ID_ALUSrc_B), \
.ID_Jump(ID_Jump), \
.ID_Branch(ID_Branch), \
.ID_RegWrite(ID_RegWrite), \
.ID_ALU_Control(ID_ALU_Control), \
.ID_sign(ID_sign), \
.ID_byte_n(ID_byte_n), \
.ID_jump_choose(ID_jump_choose), \
.ID_Rs1_data(ID_Rs1_data), \
.ID_Rs2_data(ID_Rs2_data), \
.ID_Rd_addr(ID_Rd_addr), \
.ID_wea(ID_wea), \
.ID_Data_out(ID_Data_out), \
.ID_Addr_out(ID_Addr_out), \
.ID_Rs1_addr_in(ID_Rs1_addr_in), \
.ID_Rs2_addr_in(ID_Rs2_addr_in), \
.ID_Rs1_addr(ID_Rs1_addr), \
.ID_Rs2_addr(ID_Rs2_addr)
`define EX_PipelineReg_Input \
    .EX_PC_in(EX_PC_in), \
    .EX_inst_in(EX_inst_in), \
    .EX_Imm_in(EX_Imm_in), \
    .EX_Rd_data_in(EX_Rd_data_in), \
    .EX_ImmSell_in(EX_ImmSell_in), \
    .EX_MemtoReg_in(EX_MemtoReg_in), \
    .EX_ALUSrc_B_in(EX_ALUSrc_B_in), \
    .EX_Jump_in(EX_Jump_in), \
    .EX_Branch_in(EX_Branch_in), \
    .EX_RegWrite_in(EX_RegWrite_in), \
    .EX_ALU_Control_in(EX_ALU_Control_in), \
    .EX_sign_in(EX_sign_in), \
    .EX_byte_n_in(EX_byte_n_in), \
    .EX_jump_choose_in(EX_jump_choose_in), \
    .EX_Rs1_data_in(EX_Rs1_data_in), \
    .EX_Rs2_data_in(EX_Rs2_data_in), \
    .EX_Rd_addr_in(EX_Rd_addr_in), \
    .EX_wea_in(EX_wea_in), \
    .EX_Data_out_in(EX_Data_out_in), \
    .EX_Addr_out_in(EX_Addr_out_in), \
    .EX_PC(EX_PC), \
    .EX_inst(EX_inst), \
    .EX_Imm(EX_Imm), \
    .EX_Rd_data(EX_Rd_data), \
    .EX_ImmSell(EX_ImmSell), \
    .EX_MemtoReg(EX_MemtoReg), \
    .EX_ALUSrc_B(EX_ALUSrc_B), \
    .EX_Jump(EX_Jump), \
    .EX_Branch(EX_Branch), \
    .EX_RegWrite(EX_RegWrite), \
    .EX_ALU_Control(EX_ALU_Control), \
    .EX_sign(EX_sign), \
    .EX_byte_n(EX_byte_n), \
    .EX_jump_choose(EX_jump_choose), \
    .EX_Rs1_data(EX_Rs1_data), \
    .EX_Rs2_data(EX_Rs2_data), \
    .EX_Rd_addr(EX_Rd_addr), \
    .EX_wea(EX_wea), \
    .EX_Data_out(EX_Data_out), \
    .EX_Addr_out(EX_Addr_out), \
    .EX_Rs1_addr_in(EX_Rs1_addr_in), \
    .EX_Rs2_addr_in(EX_Rs2_addr_in), \
    .EX_Rs1_addr(EX_Rs1_addr), \
    .EX_Rs2_addr(EX_Rs2_addr)
`define MEM_PipelineReg_Input \
    .MEM_PC_in(MEM_PC_in), \
    .MEM_inst_in(MEM_inst_in), \
    .MEM_Imm_in(MEM_Imm_in), \
    .MEM_Rd_data_in(MEM_Rd_data_in), \
    .MEM_ImmSell_in(MEM_ImmSell_in), \
    .MEM_MemtoReg_in(MEM_MemtoReg_in), \
    .MEM_ALUSrc_B_in(MEM_ALUSrc_B_in), \
    .MEM_Jump_in(MEM_Jump_in), \
    .MEM_Branch_in(MEM_Branch_in), \
    .MEM_RegWrite_in(MEM_RegWrite_in), \
    .MEM_ALU_Control_in(MEM_ALU_Control_in), \
    .MEM_sign_in(MEM_sign_in), \
    .MEM_byte_n_in(MEM_byte_n_in), \
    .MEM_jump_choose_in(MEM_jump_choose_in), \
    .MEM_Rs1_data_in(MEM_Rs1_data_in), \
    .MEM_Rs2_data_in(MEM_Rs2_data_in), \
    .MEM_Rd_addr_in(MEM_Rd_addr_in), \
    .MEM_wea_in(MEM_wea_in), \
    .MEM_Data_out_in(MEM_Data_out_in), \
    .MEM_Addr_out_in(MEM_Addr_out_in), \
    .MEM_PC(MEM_PC), \
    .MEM_inst(MEM_inst), \
    .MEM_Imm(MEM_Imm), \
    .MEM_Rd_data(MEM_Rd_data), \
    .MEM_ImmSell(MEM_ImmSell), \
    .MEM_MemtoReg(MEM_MemtoReg), \
    .MEM_ALUSrc_B(MEM_ALUSrc_B), \
    .MEM_Jump(MEM_Jump), \
    .MEM_Branch(MEM_Branch), \
    .MEM_RegWrite(MEM_RegWrite), \
    .MEM_ALU_Control(MEM_ALU_Control), \
    .MEM_sign(MEM_sign), \
    .MEM_byte_n(MEM_byte_n), \
    .MEM_jump_choose(MEM_jump_choose), \
    .MEM_Rs1_data(MEM_Rs1_data), \
    .MEM_Rs2_data(MEM_Rs2_data), \
    .MEM_Rd_addr(MEM_Rd_addr), \
    .MEM_wea(MEM_wea), \
    .MEM_Data_out(MEM_Data_out), \
    .MEM_Addr_out(MEM_Addr_out), \
    .MEM_Rs1_addr_in(MEM_Rs1_addr_in), \
    .MEM_Rs2_addr_in(MEM_Rs2_addr_in), \
    .MEM_Rs1_addr(MEM_Rs1_addr), \
    .MEM_Rs2_addr(MEM_Rs2_addr)
`define WB_PipelineReg_Input \
    .WB_PC_in(WB_PC_in), \
    .WB_inst_in(WB_inst_in), \
    .WB_Imm_in(WB_Imm_in), \
    .WB_Rd_data_in(WB_Rd_data_in), \
    .WB_ImmSell_in(WB_ImmSell_in), \
    .WB_MemtoReg_in(WB_MemtoReg_in), \
    .WB_ALUSrc_B_in(WB_ALUSrc_B_in), \
    .WB_Jump_in(WB_Jump_in), \
    .WB_Branch_in(WB_Branch_in), \
    .WB_RegWrite_in(WB_RegWrite_in), \
    .WB_ALU_Control_in(WB_ALU_Control_in), \
    .WB_sign_in(WB_sign_in), \
    .WB_byte_n_in(WB_byte_n_in), \
    .WB_jump_choose_in(WB_jump_choose_in), \
    .WB_Rs1_data_in(WB_Rs1_data_in), \
    .WB_Rs2_data_in(WB_Rs2_data_in), \
    .WB_Rd_addr_in(WB_Rd_addr_in), \
    .WB_wea_in(WB_wea_in), \
    .WB_Data_out_in(WB_Data_out_in), \
    .WB_Addr_out_in(WB_Addr_out_in), \
    .WB_PC(WB_PC), \
    .WB_inst(WB_inst), \
    .WB_Imm(WB_Imm), \
    .WB_Rd_data(WB_Rd_data), \
    .WB_ImmSell(WB_ImmSell), \
    .WB_MemtoReg(WB_MemtoReg), \
    .WB_ALUSrc_B(WB_ALUSrc_B), \
    .WB_Jump(WB_Jump), \
    .WB_Branch(WB_Branch), \
    .WB_RegWrite(WB_RegWrite), \
    .WB_ALU_Control(WB_ALU_Control), \
    .WB_sign(WB_sign), \
    .WB_byte_n(WB_byte_n), \
    .WB_jump_choose(WB_jump_choose), \
    .WB_Rs1_data(WB_Rs1_data), \
    .WB_Rs2_data(WB_Rs2_data), \
    .WB_Rd_addr(WB_Rd_addr), \
    .WB_wea(WB_wea), \
    .WB_Data_out(WB_Data_out), \
    .WB_Addr_out(WB_Addr_out), \
    .WB_Rs1_addr_in(WB_Rs1_addr_in), \
    .WB_Rs2_addr_in(WB_Rs2_addr_in), \
    .WB_Rs1_addr(WB_Rs1_addr), \
    .WB_Rs2_addr(WB_Rs2_addr)
/* wea */
`define WEA_READ 4'b0000
`define WEA_BYTE 4'b0001
`define WEA_HALF 4'b0011
`define WEA_WORD 4'b1111
/*JUMP CHOOSE*/
`define JUMP_PC_IMM 1'b0
`define JUMP_ALU 1'b1
/* Byte/Half/Word */
`define BYTE 2'b00
`define HALF 2'b01
`define WORD 2'b10
/* ALU Operation(Using in Lab1) */
`define ALU_OP_WIDTH  4

`define ALU_OP_ADD      `ALU_OP_WIDTH'd0
`define ALU_OP_SUB      `ALU_OP_WIDTH'd1
`define ALU_OP_SLL      `ALU_OP_WIDTH'd2
`define ALU_OP_SLT      `ALU_OP_WIDTH'd3
`define ALU_OP_SLTU     `ALU_OP_WIDTH'd4
`define ALU_OP_XOR      `ALU_OP_WIDTH'd5
`define ALU_OP_SRL      `ALU_OP_WIDTH'd6
`define ALU_OP_SRA      `ALU_OP_WIDTH'd7
`define ALU_OP_OR       `ALU_OP_WIDTH'd8
`define ALU_OP_AND      `ALU_OP_WIDTH'd9
`define ALU_OP_EQ       `ALU_OP_WIDTH'd10
`define ALU_OP_SGE      `ALU_OP_WIDTH'd11
`define ALU_OP_SGEU     `ALU_OP_WIDTH'd12
`define ALU_OP_R2       `ALU_OP_WIDTH'd13

/*-----------------------------------*/

/* Inst decoding(Using in Lab4/5) */
/* Opcode(5-bits) */
// R-Type
`define OPCODE_ALU      5'b01100
// I-Type
`define OPCODE_ALU_IMM  5'b00100
`define OPCODE_LOAD     5'b00000
`define OPCODE_JALR     5'b11001
`define OPCODE_ENV      5'b11100
`define OPCODE_JALR     5'b11001
// S-Type
`define OPCODE_STORE    5'b01000
// B-Type
`define OPCODE_BRANCH   5'b11000
// J-Type
`define OPCODE_JAL      5'b11011
// U-Type
`define OPCODE_LUI      5'b01101
`define OPCODE_AUIPC    5'b00101

// not use
`define OPCODE_PASS     5'b00000

/* Func3(3-bits) */
// R-Type & I-Type(ALU)
// For R-Type, SUB if inst[30] else ADD
`define FUNC_ADD        3'd0
// Shift Left (Logical)
`define FUNC_SL         3'd1
`define FUNC_SLT        3'd2
`define FUNC_SLTU       3'd3
`define FUNC_XOR        3'd4
// Shift Right Arith if inst[30] else Logical
`define FUNC_SR         3'd5
`define FUNC_OR         3'd6
`define FUNC_AND        3'd7

// I-Type(Load) & S-Type
`define FUNC_BYTE       3'd0
`define FUNC_HALF       3'd1
`define FUNC_WORD       3'd2
`define FUNC_BYTE_UNSIGNED 3'd4
`define FUNC_HALF_UNSIGNED 3'd5

// B-Type
`define FUNC_EQ         3'd0
`define FUNC_NE         3'd1
`define FUNC_LT         3'd4
`define FUNC_GE         3'd5
`define FUNC_LTU        3'd6
`define FUNC_GEU        3'd7
/*-----------------------------------*/

// JAR
`define FUNC_JALR       3'd0
/* ImmSel signals */
// NOTE: You may add terms in Lab4-3 to implement more inst.
`define IMM_SEL_WIDTH 3

`define IMM_SEL_I   `IMM_SEL_WIDTH'd0
`define IMM_SEL_S   `IMM_SEL_WIDTH'd1
`define IMM_SEL_B   `IMM_SEL_WIDTH'd2
`define IMM_SEL_J   `IMM_SEL_WIDTH'd3
`define IMM_SEL_U   `IMM_SEL_WIDTH'd4
/*-----------------------------------*/

/* Mem2Reg signals */
// NOTE: You may add terms in Lab4-3 to implement more inst.
`define MEM2REG_WIDTH 2

`define MEM2REG_ALU         `MEM2REG_WIDTH'd0
`define MEM2REG_MEM         `MEM2REG_WIDTH'd1
`define MEM2REG_PC_PLUS     `MEM2REG_WIDTH'd2
`define MEM2REG_IMM_PC      `MEM2REG_WIDTH'd3
// `define MEM2REG_IMM         `MEM2REG_WIDTH'd4
/*-----------------------------------*/

/*----------------------------*/
/******* generated code *******/
/*----------------------------*/

/* RegFiles Ports & debug signals */
/* NOTE:
 * AFTER you change "..." in macro YOUR_REGS to the name of your reg-array in module Regs, such as regs,
 * you need to *uncomment* the line "`define YOUR_REGS regs" below for using this set of macros
*/
// `define YOUR_REGS ...
`define YOUR_REGS MY_REGS
`ifdef YOUR_REGS

`define RegFile_Regs_Outputs \
    output [31:0] Reg00, \
    output [31:0] Reg01, \
    output [31:0] Reg02, \
    output [31:0] Reg03, \
    output [31:0] Reg04, \
    output [31:0] Reg05, \
    output [31:0] Reg06, \
    output [31:0] Reg07, \
    output [31:0] Reg08, \
    output [31:0] Reg09, \
    output [31:0] Reg10, \
    output [31:0] Reg11, \
    output [31:0] Reg12, \
    output [31:0] Reg13, \
    output [31:0] Reg14, \
    output [31:0] Reg15, \
    output [31:0] Reg16, \
    output [31:0] Reg17, \
    output [31:0] Reg18, \
    output [31:0] Reg19, \
    output [31:0] Reg20, \
    output [31:0] Reg21, \
    output [31:0] Reg22, \
    output [31:0] Reg23, \
    output [31:0] Reg24, \
    output [31:0] Reg25, \
    output [31:0] Reg26, \
    output [31:0] Reg27, \
    output [31:0] Reg28, \
    output [31:0] Reg29, \
    output [31:0] Reg30, \
    output [31:0] Reg31,
 
`define RegFile_Regs_Assignments \
    assign Reg00 = `YOUR_REGS[0]; \
    assign Reg01 = `YOUR_REGS[1]; \
    assign Reg02 = `YOUR_REGS[2]; \
    assign Reg03 = `YOUR_REGS[3]; \
    assign Reg04 = `YOUR_REGS[4]; \
    assign Reg05 = `YOUR_REGS[5]; \
    assign Reg06 = `YOUR_REGS[6]; \
    assign Reg07 = `YOUR_REGS[7]; \
    assign Reg08 = `YOUR_REGS[8]; \
    assign Reg09 = `YOUR_REGS[9]; \
    assign Reg10 = `YOUR_REGS[10]; \
    assign Reg11 = `YOUR_REGS[11]; \
    assign Reg12 = `YOUR_REGS[12]; \
    assign Reg13 = `YOUR_REGS[13]; \
    assign Reg14 = `YOUR_REGS[14]; \
    assign Reg15 = `YOUR_REGS[15]; \
    assign Reg16 = `YOUR_REGS[16]; \
    assign Reg17 = `YOUR_REGS[17]; \
    assign Reg18 = `YOUR_REGS[18]; \
    assign Reg19 = `YOUR_REGS[19]; \
    assign Reg20 = `YOUR_REGS[20]; \
    assign Reg21 = `YOUR_REGS[21]; \
    assign Reg22 = `YOUR_REGS[22]; \
    assign Reg23 = `YOUR_REGS[23]; \
    assign Reg24 = `YOUR_REGS[24]; \
    assign Reg25 = `YOUR_REGS[25]; \
    assign Reg26 = `YOUR_REGS[26]; \
    assign Reg27 = `YOUR_REGS[27]; \
    assign Reg28 = `YOUR_REGS[28]; \
    assign Reg29 = `YOUR_REGS[29]; \
    assign Reg30 = `YOUR_REGS[30]; \
    assign Reg31 = `YOUR_REGS[31];

`define RegFile_Regs_Arguments \
    .Reg00(Reg00), \
    .Reg01(Reg01), \
    .Reg02(Reg02), \
    .Reg03(Reg03), \
    .Reg04(Reg04), \
    .Reg05(Reg05), \
    .Reg06(Reg06), \
    .Reg07(Reg07), \
    .Reg08(Reg08), \
    .Reg09(Reg09), \
    .Reg10(Reg10), \
    .Reg11(Reg11), \
    .Reg12(Reg12), \
    .Reg13(Reg13), \
    .Reg14(Reg14), \
    .Reg15(Reg15), \
    .Reg16(Reg16), \
    .Reg17(Reg17), \
    .Reg18(Reg18), \
    .Reg19(Reg19), \
    .Reg20(Reg20), \
    .Reg21(Reg21), \
    .Reg22(Reg22), \
    .Reg23(Reg23), \
    .Reg24(Reg24), \
    .Reg25(Reg25), \
    .Reg26(Reg26), \
    .Reg27(Reg27), \
    .Reg28(Reg28), \
    .Reg29(Reg29), \
    .Reg30(Reg30), \
    .Reg31(Reg31),

`define RegFile_Regs_Declaration \
    wire [31:0] Reg00; \
    wire [31:0] Reg01; \
    wire [31:0] Reg02; \
    wire [31:0] Reg03; \
    wire [31:0] Reg04; \
    wire [31:0] Reg05; \
    wire [31:0] Reg06; \
    wire [31:0] Reg07; \
    wire [31:0] Reg08; \
    wire [31:0] Reg09; \
    wire [31:0] Reg10; \
    wire [31:0] Reg11; \
    wire [31:0] Reg12; \
    wire [31:0] Reg13; \
    wire [31:0] Reg14; \
    wire [31:0] Reg15; \
    wire [31:0] Reg16; \
    wire [31:0] Reg17; \
    wire [31:0] Reg18; \
    wire [31:0] Reg19; \
    wire [31:0] Reg20; \
    wire [31:0] Reg21; \
    wire [31:0] Reg22; \
    wire [31:0] Reg23; \
    wire [31:0] Reg24; \
    wire [31:0] Reg25; \
    wire [31:0] Reg26; \
    wire [31:0] Reg27; \
    wire [31:0] Reg28; \
    wire [31:0] Reg29; \
    wire [31:0] Reg30; \
    wire [31:0] Reg31;

`define VGA_RegFile_Inputs \
    input [31:0] Reg00, \
    input [31:0] Reg01, \
    input [31:0] Reg02, \
    input [31:0] Reg03, \
    input [31:0] Reg04, \
    input [31:0] Reg05, \
    input [31:0] Reg06, \
    input [31:0] Reg07, \
    input [31:0] Reg08, \
    input [31:0] Reg09, \
    input [31:0] Reg10, \
    input [31:0] Reg11, \
    input [31:0] Reg12, \
    input [31:0] Reg13, \
    input [31:0] Reg14, \
    input [31:0] Reg15, \
    input [31:0] Reg16, \
    input [31:0] Reg17, \
    input [31:0] Reg18, \
    input [31:0] Reg19, \
    input [31:0] Reg20, \
    input [31:0] Reg21, \
    input [31:0] Reg22, \
    input [31:0] Reg23, \
    input [31:0] Reg24, \
    input [31:0] Reg25, \
    input [31:0] Reg26, \
    input [31:0] Reg27, \
    input [31:0] Reg28, \
    input [31:0] Reg29, \
    input [31:0] Reg30, \
    input [31:0] Reg31,

`define VGA_RegFile_Arguments \
    .x0 (Reg00), \
    .ra (Reg01), \
    .sp (Reg02), \
    .gp (Reg03), \
    .tp (Reg04), \
    .t0 (Reg05), \
    .t1 (Reg06), \
    .t2 (Reg07), \
    .s0 (Reg08), \
    .s1 (Reg09), \
    .a0 (Reg10), \
    .a1 (Reg11), \
    .a2 (Reg12), \
    .a3 (Reg13), \
    .a4 (Reg14), \
    .a5 (Reg15), \
    .a6 (Reg16), \
    .a7 (Reg17), \
    .s2 (Reg18), \
    .s3 (Reg19), \
    .s4 (Reg20), \
    .s5 (Reg21), \
    .s6 (Reg22), \
    .s7 (Reg23), \
    .s8 (Reg24), \
    .s9 (Reg25), \
    .s10(Reg26), \
    .s11(Reg27), \
    .t3 (Reg28), \
    .t4 (Reg29), \
    .t5 (Reg30), \
    .t6 (Reg31),

`endif // YOUR_REGS

`define VGA_Debug_Signals_Inputs \
    input [31:0] pc, \
    input [31:0] inst, \
    input [4:0] rs1, \
    input [31:0] rs1_val, \
    input [4:0] rs2, \
    input [31:0] rs2_val, \
    input [4:0] rd, \
    input [31:0] reg_i_data, \
    input reg_wen, \
    input is_imm, \
    input is_auipc, \
    input is_lui, \
    input [31:0] imm, \
    input [31:0] a_val, \
    input [31:0] b_val, \
    input [3:0] alu_ctrl, \
    input [2:0] cmp_ctrl, \
    input [31:0] alu_res, \
    input cmp_res, \
    input is_branch, \
    input is_jal, \
    input is_jalr, \
    input do_branch, \
    input [31:0] pc_branch, \
    input mem_wen, \
    input mem_ren, \
    input [31:0] dmem_o_data, \
    input [31:0] dmem_i_data, \
    input [31:0] dmem_addr,

`define VGA_Debug_Signals_Arguments \
    .pc(pc), \
    .inst(inst), \
    .rs1(rs1), \
    .rs1_val(rs1_val), \
    .rs2(rs2), \
    .rs2_val(rs2_val), \
    .rd(rd), \
    .reg_i_data(reg_i_data), \
    .reg_wen(reg_wen), \
    .is_imm(is_imm), \
    .is_auipc(is_auipc), \
    .is_lui(is_lui), \
    .imm(imm), \
    .a_val(a_val), \
    .b_val(b_val), \
    .alu_ctrl(alu_ctrl), \
    .cmp_ctrl(cmp_ctrl), \
    .alu_res(alu_res), \
    .cmp_res(cmp_res), \
    .is_branch(is_branch), \
    .is_jal(is_jal), \
    .is_jalr(is_jalr), \
    .do_branch(do_branch), \
    .pc_branch(pc_branch), \
    .mem_wen(mem_wen), \
    .mem_ren(mem_ren), \
    .dmem_o_data(dmem_o_data), \
    .dmem_i_data(dmem_i_data), \
    .dmem_addr(dmem_addr),

`define VGA_Debug_Signals_Outputs \
    output [31:0] pc, \
    output [31:0] inst, \
    output [4:0] rs1, \
    output [31:0] rs1_val, \
    output [4:0] rs2, \
    output [31:0] rs2_val, \
    output [4:0] rd, \
    output [31:0] reg_i_data, \
    output reg_wen, \
    output is_imm, \
    output is_auipc, \
    output is_lui, \
    output [31:0] imm, \
    output [31:0] a_val, \
    output [31:0] b_val, \
    output [3:0] alu_ctrl, \
    output [2:0] cmp_ctrl, \
    output [31:0] alu_res, \
    output cmp_res, \
    output is_branch, \
    output is_jal, \
    output is_jalr, \
    output do_branch, \
    output [31:0] pc_branch, \
    output mem_wen, \
    output mem_ren, \
    output [31:0] dmem_o_data, \
    output [31:0] dmem_i_data, \
    output [31:0] dmem_addr,