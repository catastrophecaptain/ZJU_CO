// Testbench for DataPath module
`timescale 1ns / 1ps
`include "../sources_1/new/Lab4.vh"
module DataPath_tb;

  // Inputs
  reg clk = 1'b0;
  reg rst;
  reg [31:0] inst_field;
  reg [31:0] Data_in;
  reg [`IMM_SEL_WIDTH-1:0] ImmSell;
  reg ALUSrc_B;
  reg [`MEM2REG_WIDTH-1:0] MemtoReg;
  reg Jump;
  reg Branch;
  reg RegWrite;
  reg [`ALU_OP_WIDTH-1:0] ALU_Control;
  reg sign;
  reg [1:0] byte_n;
  reg jump_choose;

  // Outputs
  wire [31:0] PC_out;
  wire [31:0] Data_out;
  wire [31:0] Addr_out;

  // Instantiate the Unit Under Test (UUT)
  DataPath uut (
      .clk(clk),
      .rst(rst),
      .inst_field(inst_field),
      .Data_in(Data_in),
      .ImmSell(ImmSell),
      .ALUSrc_B(ALUSrc_B),
      .MemtoReg(MemtoReg),
      .Jump(Jump),
      .Branch(Branch),
      .RegWrite(RegWrite),
      .ALU_Control(ALU_Control),
      .sign(sign),
      .byte_n(byte_n),
      .jump_choose(jump_choose),
      .PC_out(PC_out),
      .Data_out(Data_out),
      .Addr_out(Addr_out)
  );

  // Initialize all inputs
  initial begin
    rst = 0;
    #10 rst = 1;
    #10 rst = 0;
    // lui x1 1573
    inst_field <= 32'h006250B7;
    Data_in <= 32'h00000000;
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
    #15;
    // auipc x2, 0xA38
    inst_field <= 32'h00A38117;
    Data_in <= 32'h00000000;
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
    #10;

    // add x3, x1, x2
    inst_field <= 32'h002081B3;
    Data_in <= 32'h00000000;
    ImmSell <= 3'b0;
    MemtoReg <= `MEM2REG_ALU;
    ALUSrc_B <= 1'b0;
    Jump <= 1'b0;
    Branch <= 1'b0;
    RegWrite <= 1'b1;
    sign <= 1'b0;
    byte_n <= `WORD;
    jump_choose <= `JUMP_PC_IMM;
    ALU_Control <= `ALU_OP_ADD;
    #10;

    $finish;

  end

  // Clock generation
  always #5 clk = ~clk;  // Generate a clock with a period of 10ns

endmodule
