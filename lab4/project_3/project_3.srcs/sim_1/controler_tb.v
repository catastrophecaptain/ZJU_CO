`timescale 1ns / 1ps
module Controler_tb ();
  wire [4:0] OPcode;
  reg MIO_ready;
  wire [7:0] Fun7;
  wire [2:0] Fun3;
  reg [31:0] inst_field;
  wire CPU_MIO;
  wire [3:0] wea;
  wire [2:0] ImmSell;
  wire [1:0] MemtoReg;
  wire [3:0] ALU_Control;
  wire ALUSrc_B;
  wire Jump;
  wire Branch;
  wire RegWrite;
  wire sign;
  wire [1:0] byte_n;
  wire jump_choose;
  Controler uut (
      .OPcode(OPcode),
      .MIO_ready(MIO_ready),
      .Fun7(Fun7),
      .Fun3(Fun3),
      .CPU_MIO(CPU_MIO),
      .wea(wea),
      .ImmSell(ImmSell),
      .MemtoReg(MemtoReg),
      .ALU_Control(ALU_Control),
      .ALUSrc_B(ALUSrc_B),
      .Jump(Jump),
      .Branch(Branch),
      .RegWrite(RegWrite),
      .sign(sign),
      .byte_n(byte_n),
      .jump_choose(jump_choose)
  );
  assign OPcode = inst_field[6:2];
  assign Fun7   = inst_field[31:25];
  assign Fun3   = inst_field[14:12];
  initial begin
    // lui x1 1573
    MIO_ready  = 1'b1;
    inst_field = 32'h006250B7;
    #10;

    // add x3, x1, x2
    inst_field = 32'h002081B3;
    #10;

    // addi x11, x10, 0x10
    inst_field = 32'h01050593;
    #10;

    // jal x18, 76
    inst_field = 32'h04C0096F;
    #10;

    // lb x20,5(x1) 
    inst_field = 32'h00508A03;
    #10;

    $finish;
  end
endmodule
