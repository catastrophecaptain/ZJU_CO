`include "Lab4.vh"
module RAM_shift(
input wire [31:0] MEM_Addr_out,
input wire [31:0] MEM_Data_out,
input wire [3:0]MEM_wea,
input wire [31:0] Data_in,
output wire [31:0] Data_out,
output wire [31:0] Data_in_shift,
output wire [31:0] Addr_out,
output wire MemRW,
output wire[3:0] wea
);
  assign MemRW = |wea;
  assign wea = MEM_wea << (MEM_Addr_out % 4);
  assign Data_out = MemRW ? (MEM_Data_out << ((MEM_Addr_out % 4) << 3)) : MEM_Data_out;
  assign Data_in_shift = Data_in >> ((MEM_Addr_out % 4) << 3);
  assign Addr_out={MEM_Addr_out[31:2],2'b00};
endmodule