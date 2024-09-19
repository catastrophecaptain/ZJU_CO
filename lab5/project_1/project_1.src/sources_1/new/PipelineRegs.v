`include "Lab4.vh"
module PipelineReg(
    input clk,
    input rst,
    input [31:0] inst_in,
    input [31:0] PC_in,
    input [31:0] Imm_in,
    input [31:0] Rd_data_in,
    input [`IMM_SEL_WIDTH-1:0] ImmSell_in,
    input [`MEM2REG_WIDTH-1:0] MemtoReg_in,
    input ALUSrc_B_in,
    input Jump_in,
    input Branch_in,
    input RegWrite_in,
    input [`ALU_OP_WIDTH-1:0] ALU_Control_in,
    input sign_in,
    input [1:0] byte_n_in,
    input jump_choose_in,
    input [31:0] Rs1_data_in,
    input [31:0] Rs2_data_in,
    input [4:0] Rd_addr_in,
    input [3:0] wea_in,
    input [31:0] Data_out_in,
    input [31:0] Addr_out_in,
    input [4:0] Rs1_addr_in,
    input [4:0] Rs2_addr_in,
    output reg [31:0] inst,
    output reg [31:0] PC,
    output reg [31:0] Imm,
    output reg [31:0] Rd_data,
    output reg [`IMM_SEL_WIDTH-1:0] ImmSell,
    output reg [`MEM2REG_WIDTH-1:0] MemtoReg,
    output reg ALUSrc_B,
    output reg Jump,
    output reg Branch,
    output reg RegWrite,
    output reg [`ALU_OP_WIDTH-1:0] ALU_Control,
    output reg sign,
    output reg [1:0] byte_n,
    output reg jump_choose,
    output reg [31:0] Rs1_data,
    output reg [31:0] Rs2_data,
    output reg [4:0] Rd_addr,
    output reg [3:0] wea,
    output reg [31:0] Data_out,
    output reg [31:0] Addr_out,
    output reg [4:0] Rs1_addr,
    output reg [4:0] Rs2_addr
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            inst <= 32'h00000033;
            PC <= 32'h0;
            Imm <= 32'h0;
            Rd_data <= 32'h0;
            ImmSell <= 3'b0;
            MemtoReg <= 4'b0;
            ALUSrc_B <= 1'b0;
            Jump <= 1'b0;
            Branch <= 1'b0;
            RegWrite <= 1'b0;
            ALU_Control <= 4'b0;
            sign <= 1'b0;
            byte_n <= 2'b0;
            jump_choose <= 2'b0;
            Rs1_data <= 32'h0;
            Rs2_data <= 32'h0;
            Rd_addr <= 5'b0;
            wea <= 4'b0;
            Data_out <= 32'h0;
            Addr_out <= 32'h0;
            Rs1_addr <= 4'h0;
            Rs2_addr <= 4'h0;
        end else begin
            inst <= inst_in;
            PC <= PC_in;
            Imm <= Imm_in;
            Rd_data <= Rd_data_in;
            ImmSell <= ImmSell_in;
            MemtoReg <= MemtoReg_in;
            ALUSrc_B <= ALUSrc_B_in;
            Jump <= Jump_in;
            Branch <= Branch_in;
            RegWrite <= RegWrite_in;
            ALU_Control <= ALU_Control_in;
            sign <= sign_in;
            byte_n <= byte_n_in;
            jump_choose <= jump_choose_in;
            Rs1_data <= Rs1_data_in;
            Rs2_data <= Rs2_data_in;
            Rd_addr <= Rd_addr_in;
            wea <= wea_in;
            Data_out <= Data_out_in;
            Addr_out <= Addr_out_in;
            Rs1_addr <= Rs1_addr_in;
            Rs2_addr <= Rs2_addr_in;
        end
    end
endmodule