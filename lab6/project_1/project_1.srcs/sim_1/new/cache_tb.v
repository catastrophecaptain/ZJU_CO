`timescale 1ns / 1ps
`include "../../sources_1/new/lab6.vh"
module cache_tb ();
  reg clk;
  reg rst;
  reg [31:0] cpu_addr;
  reg [31:0] write_data;
  reg [127:0] mem_data;
  reg [1:0] MemRW;
  reg memory_ready;
  wire MemRW_read;
  wire MemRW_write;
  wire ready;
  wire [127:0] mem_data_out;
  wire [31:0] mem_addr_out;
  wire [31:0] data;
  wire miss;
  wire [`REQUIRE_MODE_WIDTH-1:0] mode_inner;

  initial begin
    clk   = 1;
    rst   = 1;
    MemRW = 0;
    #100;
    rst = 0;
    memory_ready = 1;
    // Read Miss
    cpu_addr = 32'h10000000;
    MemRW = 1;
    mem_data = 128'h11111111222222223333333344444444;
  end
  integer i = 0;
  always @(posedge ready) begin
    case (i)
      0: begin
        // Read Miss
        cpu_addr = 32'h20000000;
        mem_data = 128'h55555555666666667777777788888888;
        //#100;
        i = i + 1;
      end
      1: begin
        // Read Hit
        cpu_addr = 32'h10000002;
        //#100;
        i = i + 1;
      end
      2: begin
        cpu_addr = 32'h20000001;
        //#100;
        i = i + 1;
      end
      3: begin
        // Write Hit
        MemRW = 2;
        cpu_addr = 32'h10000001;  // 写第一个字
        write_data = 32'hAAAAAAAA;
        //#100;
        i = i + 1;
      end
      4: begin
        cpu_addr = 32'h20000002;  // 写第二个字
        write_data = 32'hBBBBBBBB;
        //#100;
        i = i + 1;
      end
      5: begin
        // Read Hit 检验刚刚写的内容是否被写进去了
        MemRW = 1;
        cpu_addr = 32'h10000001;
        //#100;
        i = i + 1;
      end
      6: begin
        cpu_addr = 32'h20000002;
        //#100;
        i = i + 1;
      end
      7: begin
        // Write miss, write back and allocate
        MemRW = 2;
        cpu_addr = 32'h30000000;  // 需要驱赶一个块
        write_data = 32'hFFFF0000;
        mem_data = 128'hCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFF;
        //#100;
        i = i + 1;
      end
      8: begin
        MemRW = 1;
        cpu_addr = 32'h30000000;
        //#100;
        i = i + 1;
      end
      9: begin
        cpu_addr = 32'h30000001;
        //#100;
        i = i + 1;
      end
    endcase
  end
  always #5 clk = ~clk;


  cache U1 (
      .clk(clk),
      .rst(rst),
      .addr(cpu_addr),
      .write_data(write_data),
      .mem_data(mem_data),
      .require_mode(MemRW),
      .memory_ready(memory_ready),
      .MemRW_read(MemRW_read),
      .MemRW_write(MemRW_write),
      .ready(ready),
      .mem_data_out(mem_data_out),
      .mem_addr_out(mem_addr_out),
      .data(data)
  );
endmodule
