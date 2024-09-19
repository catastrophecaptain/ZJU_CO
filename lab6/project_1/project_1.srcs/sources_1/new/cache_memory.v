`include "lab6.vh"
module cache_memory (
    input clk,
    input rst,
    input [`ADDR_WIDTH-1:0] addr,
    input [`WORD_WIDTH-1:0] write_data,
    input [`MEMORY_BLOCK_SIZE-1:0] mem_data,
    input [`CACHE_MEMORY_MODE_WIDTH-1:0] mode,
    output reg [`WORD_WIDTH-1:0] data,
    output reg [`ADDR_WIDTH-1:0] addr_replace,
    output reg [`MEMORY_BLOCK_SIZE-1:0] mem_data_replace,
    output reg dirty,
    output reg miss
);
  reg [`ENTRY_WIDTH-1:0] cache_data[`GROUP_SIZE-1:0][`WAY_SIZE-1:0];
  wire [`OFFSET_WIDTH-1:0] offset = addr[`OFFSET_WIDTH-1:0];
  wire [`INDEX_WIDTH-1:0] index = addr[`INDEX_WIDTH+`OFFSET_WIDTH-1:`OFFSET_WIDTH];
  wire [`TAG_WIDTH-1:0] tag = addr[`ADDR_WIDTH-1:`INDEX_WIDTH+`OFFSET_WIDTH];
  wire [`TAG_WIDTH-1:0]tag0 = cache_data[index][0][`TAG_WIDTH-1:0];
  wire [`TAG_WIDTH-1:0]tag1 = cache_data[index][1][`TAG_WIDTH-1:0];
  wire [`WORD_WIDTH-1:0] data0 ;
  wire [`WORD_WIDTH-1:0] data1 ;
  assign data0 =  (offset==`OFFSET_WIDTH'b0)?cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*1-1:`TAG_WIDTH+`LABEL_WIDTH]:
                  (offset==`OFFSET_WIDTH'b1)?cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH]:
                  (offset==`OFFSET_WIDTH'b10)?cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2]:
                  cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*4-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3];
  assign data1 =  (offset==`OFFSET_WIDTH'b0)?cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*1-1:`TAG_WIDTH+`LABEL_WIDTH]:
                  (offset==`OFFSET_WIDTH'b1)?cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH]:
                  (offset==`OFFSET_WIDTH'b10)?cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2]:
                  cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*4-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3];
  wire dirty0 = cache_data[index][0][`D_BIT];
  wire dirty1 = cache_data[index][1][`D_BIT];
  wire valid0 = cache_data[index][0][`V_BIT];
  wire valid1 = cache_data[index][1][`V_BIT];
  wire lru0 = cache_data[index][0][`U_BIT];
  wire lru1 = cache_data[index][1][`U_BIT];
  wire replace=lru0?1:0;
  integer i, j;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      data  <= 0;
      dirty <= 0;
      miss  <= 0;
      addr_replace <= 0;
      mem_data_replace <= 0;
      for (i = 0; i < `GROUP_SIZE; i = i + 1) begin
        for (j = 0; j < `WAY_SIZE; j = j + 1) begin
          cache_data[i][j] <= `ENTRY_WIDTH'b0;
        end
      end
    end else begin
      case (mode)
        `CACHE_MEMORY_IDLE: begin
          data <= 0;
          miss <= 0;
        end
        `CACHE_MEMORY_READ: begin
          if (tag0 == tag && valid0) begin
            data <= data0;
            miss <= 0;
            cache_data[index][0][`U_BIT] <= 1;
            cache_data[index][1][`U_BIT] <= 0;
          end else if (tag1 == tag && valid1) begin
            data <= data1;
            miss <= 0;
            cache_data[index][0][`U_BIT] <= 0;
            cache_data[index][1][`U_BIT] <= 1;
          end else begin
            data <= 0;
            miss <= 1;
          end
        end
        `CACHE_MEMORY_WRITE: begin
          if (tag0 == tag && valid0) begin
            case(offset)
              0: cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*1-1:`TAG_WIDTH+`LABEL_WIDTH] <= write_data;
              1: cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH] <= write_data;
              2: cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2] <= write_data;
              3: cache_data[index][0][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*4-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3] <= write_data;
              endcase
            cache_data[index][0][`D_BIT] <= 1;
            cache_data[index][0][`U_BIT] <= 1;
            cache_data[index][1][`U_BIT] <= 0;
            miss <= 0;
          end else if (tag1 == tag && valid1) begin
            case(offset)
              0: cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*1-1:`TAG_WIDTH+`LABEL_WIDTH] <= write_data;
              1: cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH] <= write_data;
              2: cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*2] <= write_data;
              3: cache_data[index][1][`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*4-1:`TAG_WIDTH+`LABEL_WIDTH+`WORD_WIDTH*3] <= write_data;
              endcase
            cache_data[index][1][`D_BIT] <= 1;
            cache_data[index][1][`U_BIT] <= 1;
            cache_data[index][0][`U_BIT] <= 0;
            miss <= 0;
          end else begin
            miss <= 1;
            end
        end
        `CACHE_MEMORY_LOAD: begin
          cache_data[index][replace][`TAG_WIDTH-1:0] <= tag;
          cache_data[index][replace][`D_BIT] <= 0;
          cache_data[index][replace][`V_BIT] <= 1;
          cache_data[index][replace][`U_BIT] <= 0;
          cache_data[index][replace][`ENTRY_WIDTH-1:`TAG_WIDTH+`LABEL_WIDTH] <= mem_data;
          addr_replace <= {cache_data[index][replace][`TAG_WIDTH-1:0], index, 2'b00};
          mem_data_replace <= cache_data[index][replace][`ENTRY_WIDTH-1:`TAG_WIDTH+`LABEL_WIDTH];
          dirty <= cache_data[index][replace][`D_BIT];
        end
      endcase
    end
  end
endmodule
