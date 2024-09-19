`include "Lab4.vh"
module extend (
    input wire [1:0] byte_n,
    input wire [31:0] in,
    input wire sign,
    output [31:0] mem_data
);
  assign mem_data=byte_n==`WORD?in:
                byte_n==`HALF?(sign?{{16{in[15]}},in[15:0]}:{16'b0,in[15:0]}):
                byte_n==`BYTE?(sign?{{24{in[7]}},in[7:0]}:{24'b0,in[7:0]})
                :32'b0;
endmodule
