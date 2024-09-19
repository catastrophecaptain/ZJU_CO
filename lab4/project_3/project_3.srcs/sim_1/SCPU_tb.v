module SCPU_tb ();
  reg clk;
  reg rst;
  reg [31:0] inst_in;
  reg [31:0] Data_in;
  wire MemRW;
  wire [31:0] PC_out;  // Next PC
  wire [31:0] Data_out;  //Rs2 or Imm
  wire [31:0] Addr_out;  //ALU_out
  wire [3:0] wea;
  SCPU SCPU (
      .clk(clk),
      .rst(rst),
      .inst_in(inst_in),
      .Data_in(Data_in),
      .MemRW(MemRW),
      .PC_out(PC_out),
      .Data_out(Data_out),
      .Addr_out(Addr_out),
      .wea(wea)
  );
  always begin
    #5 clk = ~clk;
  end
  //     # U型指令
  //     lui x1, 0x625         # 加载上位立即数到0x00625000
  //     auipc x2, 0xA38       # 加载到程序计数器上位立即数到0x00A38000

  //     # 基础算术逻辑指令
  //     add x3, x1, x2      # x3 = x1 + x2
  //     sub x4, x3, x1      # x4 = x3 - x1
  //     xor x5, x4, x3      # x5 = x4 ^ x3
  //     or  x6, x5, x4      # x6 = x5 | x4
  //     and x7, x6, x5      # x7 = x6 & x5
  //     sll x8, x7, x1      # x8 = x7 << x1
  //     srl x9, x8, x2      # x9 = x8 >> x2
  //     sra x10, x9, x1     # x10 = x9 >> x1 (arithmetic)
  //     slt x11,x10,x9
  //     sltu x12,x11,x10

  //     # 立即操作指令
  //     addi x11, x10, 0x10 # x11 = x10 + 0x10
  //     xori x12, x11, 0xFF # x12 = x11 ^ 0xFF
  //     ori  x13, x12, 0x1F # x13 = x12 | 0x1F
  //     andi x14, x13, 0x3F # x14 = x13 & 0x3F
  //     slli x15, x14, 0x2  # x15 = x14 << 0x2
  //     srli x16, x15, 0x2  # x16 = x15 >> 0x2
  //     srai x17, x16, 0x2  # x17 = x16 >> 0x2 (arithmetic)
  //     slti x18,x17,-1
  //     sltiu x18,x17,-1

  //     # 分支跳转与链接指令
  //     jal x18, 76        # 跳转到标签end，并将返回地址保存到x18
  //     jalr x19, x18, 2    # 通过x18跳到返回地址，保存下一条指令地址到x19

  //     # 内存加载与存储指令
  //     lb x20,5(x1)          # 从x1 + arr加载一个字节到x20
  //     lh x21, 5(x1)          # 加载半字
  //     lw x22, 4(x1)          # 加载字
  //     lbu x23, 5(x1)         # 无符号加载字节
  //     lhu x24, 5(x1)         # 无符号加载半字
  //     sb x20, 5(x1)          # 将x20的最低字节存回内存
  //     sh x21, 5(x1)          # 存储半字
  //     sw x22, 4(x1)          # 存储字

  //     # 分支指令
  //     beq x21, x22, 28  
  //     bne x21, x22, 28     
  //     blt x21, x22, 24     
  //     bge x21, x22, 16  
  //     bltu x21, x22, 16   
  //     bgeu x21, x22, 8
  // 006250B7
  // 00A38117
  // 002081B3
  // 40118233
  // 003242B3
  // 0042E333
  // 005373B3
  // 00139433
  // 002454B3
  // 4014D533
  // 009525B3
  // 00A5B633
  // 01050593
  // 0FF5C613
  // 01F66693
  // 03F6F713
  // 00271793
  // 0027D813
  // 40285893
  // FFF8A913
  // FFF8B913
  // 04C0096F
  // 002909E7
  // 00508A03
  // 00509A83
  // 0040AB03
  // 0050CB83
  // 0050DC03
  // 014082A3
  // 015092A3
  // 0160A223
  // 016A8E63
  // 016A9E63
  // 016ACC63
  // 016AD863
  // 016AE863
  // 016AF463
  initial begin
    clk = 0;
    rst = 0;
    inst_in = 0;
    Data_in = 0;
    #10 rst = 1;
    #10 rst = 0;
    // # U型指令
    // lui x1 1573         # 加载上位立即数到0x00625000
    inst_in = 32'h006250B7;
    // MemRW = 0;
    // PC_out = h00000004;
    // Data_out = h00000000;
    // Addr_out = h00625000;
    // wea = 4'b0000;

    // auipc x2, 0xA38       # 加载到程序计数器上位立即数到0x00A38000
    #10 inst_in = 32'h00A38117;
    // MemRW = 0;
    // PC_out = h00000008;
    // Data_out = h00000000;
    // Addr_out = h00A38000;
    // wea = 4'b0000;

    // # 基础算术逻辑指令
    // add x3, x1, x2      # x3 = x1 + x2
    #10 inst_in = 32'h002081B3;
    // MemRW = 0;
    // PC_out = h0000000C;
    // Data_out = h00a38004;
    // Addr_out = h0105d004;
    // wea = 4'b0000;
    
    // sub x4, x3, x1      # x4 = x3 - x1
    #10 inst_in = 32'h40118233;
    // MemRW = 0;
    // PC_out = h00000010;
    // Data_out = h00625000;
    // Addr_out = h00a38004;
    // wea = 4'b0000;

    // xor x5, x4, x3      # x5 = x4 ^ x3
    #10 inst_in = 32'h003242B3;
    // MemRW = 0;
    // PC_out = h00000014;
    // Data_out = h0105d004;
    // Addr_out = h01a65000;
    // wea = 4'b0000;

    // or  x6, x5, x4      # x6 = x5 | x4
    #10 inst_in = 32'h0042E333;
    // MemRW = 0;
    // PC_out = h00000018;
    // Data_out = h00a38004;
    // Addr_out = h01a7d004;
    // wea = 4'b0000;

    // and x7, x6, x5      # x7 = x6 & x5
    #10 inst_in = 32'h005373B3;
    // MemRW = 0;
    // PC_out = h0000001C;
    // Data_out = h01a65000;
    // Addr_out = h01a65000;
    // wea = 4'b0000;

    // sll x8, x7, x1      # x8 = x7 << x1
    #10 inst_in = 32'h00139433;
    // MemRW = 0;
    // PC_out = h00000020;
    // Data_out = h00625000;
    // Addr_out = h01a65000;
    // wea = 4'b0000;

    // srl x9, x8, x2      # x9 = x8 >> x2
    #10 inst_in = 32'h002454B3;
    // MemRW = 0;
    // PC_out = h00000024;
    // Data_out = h00a38004;
    // Addr_out = h001a6500;
    // wea = 4'b0000;

    // sra x10, x9, x1     # x10 = x9 >> x1 (arithmetic)
    #10 inst_in = 32'h4014D533;
    // MemRW = 0;
    // PC_out = h00000028;
    // Data_out = h00625000;
    // Addr_out = h001a6500;
    // wea = 4'b0000;

    // slt x11,x10,x9      # x11 = x10 < x9
    #10 inst_in = 32'h009525B3;
    // MemRW = 0;
    // PC_out = h0000002C;
    // Data_out = h001a6500;
    // Addr_out = h00000000;
    // wea = 4'b0000;

    // sltu x12,x11,x10    # x12 = x11 < x10
    #10 inst_in = 32'h00A5B633;
    // MemRW = 0;
    // PC_out = h00000030;
    // Data_out = h001a6500;
    // Addr_out = h00000001;
    // wea = 4'b0000;

    // # 立即操作指令
    // addi x11, x10, 0x10 # x11 = x10 + 0x10
    #10 inst_in = 32'h01050593;
    // MemRW = 0;
    // PC_out = h00000034;
    // Data_out = h00000000;
    // Addr_out = h001a6510;
    // wea = 4'b0000;

    // xori x12, x11, 0xFF # x12 = x11 ^ 0xFF
    #10 inst_in = 32'h0FF5C613;
    // MemRW = 0;
    // PC_out = h00000038;
    // Data_out = h00000000;
    // Addr_out = h001a65ef;
    // wea = 4'b0000;

    // ori  x13, x12, 0x1F # x13 = x12 | 0x1F
    #10 inst_in = 32'h01F66693;
    // MemRW = 0;
    // PC_out = h0000003C;
    // Data_out = h00000000;
    // Addr_out = h001a65ff;
    // wea = 4'b0000;

    // andi x14, x13, 0x3F # x14 = x13 & 0x3F
    #10 inst_in = 32'h03F6F713;
    // MemRW = 0;
    // PC_out = h00000040;
    // Data_out = h00000000;
    // Addr_out = h0000003f;
    // wea = 4'b0000;

    // slli x15, x14, 0x2  # x15 = x14 << 0x2
    #10 inst_in = 32'h00271793;
    // MemRW = 0;
    // PC_out = h00000044;
    // Data_out = h00a38004;
    // Addr_out = h000000fc;
    // wea = 4'b0000;

    // srli x16, x15, 0x2  # x16 = x15 >> 0x2
    #10 inst_in = 32'h0027D813;
    // MemRW = 0;
    // PC_out = h00000048;
    // Data_out = h00a38004;
    // Addr_out = h0000003f;
    // wea = 4'b0000;

    // srai x17, x16, 0x2  # x17 = x16 >> 0x2 (arithmetic)
    #10 inst_in = 32'h40285893;
    // MemRW = 0;
    // PC_out = h0000004C;
    // Data_out = h00a38004;
    // Addr_out = h0000000f;
    // wea = 4'b0000;

    // slti x18,x17,-1     # x18 = x17 < -1
    #10 inst_in = 32'hFFF8A913;
    // MemRW = 0;
    // PC_out = h00000050;
    // Data_out = h00000000;
    // Addr_out = h00000000;
    // wea = 4'b0000;

    // sltiu x18,x17,-1    # x18 = x17 < -1
    #10 inst_in = 32'hFFF8B913;
    // MemRW = 0;
    // PC_out = h00000054;
    // Data_out = h00000000;
    // Addr_out = h00000001;
    // wea = 4'b0000;

    // # 分支跳转与链接指令
    // jal x18, 76        # 跳转到标签end，并将返回地址保存到x18
    #10 inst_in = 32'h04C0096F;
    // MemRW = 0;
    // PC_out = h000000a0;
    // Data_out = h001a6500;
    // Addr_out = h0000004c;
    // wea = 4'b0000;

    // jalr x19, x18, 2    # 通过x18跳到返回地址，保存下一条指令地址到x19
    #10 inst_in = 32'h002909E7;
    // MemRW = 0;
    // PC_out = h0000005a;
    // Data_out = h00a38004;
    // Addr_out = h0000005a;
    // wea = 4'b0000;

    // # 内存加载与存储指令
    // lb x20,5(x1)          # 从x1 + arr加载一个字节到x20
    #10 inst_in = 32'h00508A03;
    Data_in = 32'h0000FF01;
    // MemRW = 1;
    // PC_out = h0000005e;
    // Data_out = h01a65000;
    // Addr_out = h00625005;
    // wea = 4'b0000;

    // lh x21, 5(x1)          # 加载半字
    #10 inst_in = 32'h00509A83;
    // MemRW = 1;
    // PC_out = h00000062;
    // Data_out = h01a65000;
    // Addr_out = h00625005;
    // wea = 4'b0000;

    // lw x22, 4(x1)          # 加载字
    #10 inst_in = 32'h0040AB03;
    // MemRW = 1;
    // PC_out = h00000066;
    // Data_out = h00a38004;
    // Addr_out = h00625004;
    // wea = 4'b0000;

    // lbu x23, 5(x1)         # 无符号加载字节
    #10 inst_in = 32'h0050CB83;
    // MemRW = 1;
    // PC_out = h0000006a;
    // Data_out = h01a65000;
    // Addr_out = h00625005;
    // wea = 4'b0000;

    // lhu x24, 5(x1)         # 无符号加载半字
    #10 inst_in = 32'h0050DC03;
    // MemRW = 1;
    // PC_out = h0000006e;
    // Data_out = h01a65000;
    // Addr_out = h00625005;
    // wea = 4'b0000;

    // sb x20, 5(x1)          # 将x20的最低字节存回内存
    #10 inst_in = 32'h014082A3;
    // MemRW = 1;
    // PC_out = h00000072;
    // Data_out = hffffff00;
    // Addr_out = h00625005;
    // wea = 4'b0010;

    // sh x21, 5(x1)          # 存储半字
    #10 inst_in = 32'h015092A3;
    // MemRW = 1;
    // PC_out = h00000076;
    // Data_out = 0000ff00;
    // Addr_out = h00625005;
    // wea = 4'b0110;

    // sw x22, 4(x1)          # 存储字
    #10 inst_in = 32'h0160A223;
    // MemRW = 1;
    // PC_out = h0000007a;
    // Data_out = h0000ff01;
    // Addr_out = h00625004;
    // wea = 4'b1111;

    // # 分支指令
    // beq x21, x22, 28
    #10 inst_in = 32'h016A8E63;
    // MemRW = 0;
    // PC_out = h0000007e;
    // Data_out = h0000ff01;
    // Addr_out = hffff01fe;
    // wea = 4'b0000;

    // bne x21, x22, 28
    #10 inst_in = 32'h016A9E63;
    // MemRW = 0;
    // PC_out = h0000009a;
    // Data_out = h0000ff01;
    // Addr_out = h00000000;
    // wea = 4'b0000;

    // blt x21, x22, 24
    #10 inst_in = 32'h016ACC63;
    // MemRW = 0;
    // PC_out = h000000b2;
    // Data_out = h0000ff01;
    // Addr_out = h00000000;
    // wea = 4'b0000;

    // bge x21, x22, 16
    #10 inst_in = 32'h016AD863;
    // MemRW = 0;
    // PC_out = h000000b6;
    // Data_out = h0000ff01;
    // Addr_out = h00000001;
    // wea = 4'b0000;

    // bltu x21, x22, 16
    #10 inst_in = 32'h016AE863;
    // MemRW = 0;
    // PC_out = h000000c6;
    // Data_out = h0000ff01;
    // Addr_out = h00000000;
    // wea = 4'b0000;

    // bgeu x21, x22, 8
    #10 inst_in = 32'h016AF463;
    // MemRW = 0;
    // PC_out = h000000ca;
    // Data_out = h0000ff01;
    // Addr_out = h00000001;
    #10;
    $finish();

  end
endmodule

