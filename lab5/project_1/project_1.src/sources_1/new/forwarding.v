`include "Lab4.vh"
module forwarding(
    input [31:0] EX_Rs1_data,
    input [31:0] EX_Rs2_data,
    input [4:0] EX_Rs1_addr,
    input [4:0] EX_Rs2_addr,
    input [31:0] EX_Data_out,
    input [31:0] EX_Imm,
    input EX_ALUSrc_B,
    input [4:0] MEM_Rd_addr,
    input MEM_RegWrite,
    input [31:0] MEM_Rd_data,
    input [4:0] WB_Rd_addr,
    input WB_RegWrite,
    input [31:0] WB_Rd_data,
    output [31:0] MEM_Data_out_in,
    output [31:0] adder_1,
    output [31:0] adder_2
);
assign Rs1_EX_MEM_hazard=EX_Rs1_addr==MEM_Rd_addr&&MEM_RegWrite&&MEM_Rd_addr!=32'h0;
assign Rs2_EX_MEM_hazard=EX_Rs2_addr==MEM_Rd_addr&&MEM_RegWrite&&MEM_Rd_addr!=32'h0;
assign Rs1_EX_WB_hazard=EX_Rs1_addr==WB_Rd_addr&&WB_RegWrite&&WB_Rd_addr!=32'h0;
assign Rs2_EX_WB_hazard=EX_Rs2_addr==WB_Rd_addr&&WB_RegWrite&&WB_Rd_addr!=32'h0;
assign adder_1=Rs1_EX_MEM_hazard?MEM_Rd_data:Rs1_EX_WB_hazard?WB_Rd_data:EX_Rs1_data;
assign adder_2=EX_ALUSrc_B?EX_Imm:Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:EX_Rs2_data; 
assign MEM_Data_out_in=Rs2_EX_MEM_hazard?MEM_Rd_data:Rs2_EX_WB_hazard?WB_Rd_data:EX_Data_out;
endmodule
