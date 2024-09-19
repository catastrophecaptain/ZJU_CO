`include "lab6.vh"
module cache (
    input clk,
    input rst,
    input [`ADDR_WIDTH-1:0] addr,
    input [`WORD_WIDTH-1:0] write_data,
    input [`MEMORY_BLOCK_SIZE-1:0] mem_data,
    input [`REQUIRE_MODE_WIDTH-1:0] require_mode,
    input memory_ready,
    output reg MemRW_read,
    output reg MemRW_write,
    output reg ready,
    output reg [`MEMORY_BLOCK_SIZE-1:0] mem_data_out,
    output reg [`ADDR_WIDTH-1:0] mem_addr_out,
    output reg [`WORD_WIDTH-1:0] data

    // output wire miss,
    // output wire [`REQUIRE_MODE_WIDTH-1:0] mode_inner
);
  reg [`CACHE_STATE_WIDTH-1:0] state;
  reg change;

  wire [`WORD_WIDTH-1:0] data_inner;
  wire [`ADDR_WIDTH-1:0] addr_replace;
  wire [`MEMORY_BLOCK_SIZE-1:0] mem_data_replace;
  wire dirty;
  wire miss;

  wire [`CACHE_MEMORY_MODE_WIDTH-1:0] mode_inner;

  assign mode_inner =   state==`CACHE_STATE_IDLE ? `CACHE_MEMORY_IDLE :
                        state==`CACHE_STATE_RW&&require_mode==`REQUIRE_MODE_READ ? `CACHE_MEMORY_READ :
                        state==`CACHE_STATE_RW&&require_mode==`REQUIRE_MODE_WRITE ? `CACHE_MEMORY_WRITE :
                        state==`CACHE_STATE_ALLOCATE&&memory_ready ? `CACHE_MEMORY_LOAD:
                        `CACHE_MEMORY_IDLE;
  cache_memory U1 (
      .clk(clk),
      .rst(rst),
      .addr(addr),
      .write_data(write_data),
      .mem_data(mem_data),
      .mode(mode_inner),
      .data(data_inner),
      .addr_replace(addr_replace),
      .mem_data_replace(mem_data_replace),
      .dirty(dirty),
      .miss(miss)
  );
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= `CACHE_STATE_IDLE;
      change <= 1;
      MemRW_read <= 0;
      MemRW_write <= 0;
      ready <= 0;
      mem_data_out <= 0;
      mem_addr_out <= 0;
      data <= 0;
    end else begin
      case (state)
        `CACHE_STATE_IDLE: begin
          if (require_mode == `REQUIRE_MODE_READ || require_mode == `REQUIRE_MODE_WRITE) begin
            state  <= `CACHE_STATE_RW;
            change <= 0;
            ready  <= 0;
          end
        end
        `CACHE_STATE_RW: begin
          if (change) begin
            if (miss) begin
              state <= `CACHE_STATE_ALLOCATE;
              MemRW_read <= 1;
              mem_addr_out <= addr;
              change <= 0;
            end else begin
              state  <= `CACHE_STATE_IDLE;
              data   <= data_inner;
              ready  <= 1;
              change <= 1;
            end
          end else begin
            change <= 1;
          end
        end
        `CACHE_STATE_ALLOCATE: begin
          if (change) begin
            if (dirty) begin
              state <= `CACHE_STATE_WB;
              MemRW_write <= 1;
              MemRW_read <= 0;
              mem_addr_out <= addr_replace;
              mem_data_out <= mem_data_replace;
            end else begin
              state <= `CACHE_STATE_RW;
              MemRW_read <= 0;
            end
            change <= 0;
          end else begin
            if (memory_ready) begin
              change <= 1;
            end
          end
        end
        `CACHE_STATE_WB: begin
          if (change) begin
            state <= `CACHE_STATE_RW;
            MemRW_write <= 0;
            change <= 0;
          end else begin
            if (memory_ready) begin
              change <= 1;
            end
          end
        end
      endcase
    end
  end
endmodule

