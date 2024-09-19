`include "Lab4.vh"
module load_hazard(
    input [4:0] Rs1_addr,
    input [4:0] Rs2_addr,
    input [4:0] EX_Rd_addr,
    input EX_RegWrite,
    input [`MEM2REG_WIDTH-1:0] EX_MemtoReg,
    output wire Load_hazard
);
assign Rs1_ID_EX_hazard=Rs1_addr==EX_Rd_addr&&EX_RegWrite&&EX_Rd_addr!=32'h0;
assign Rs2_ID_EX_hazard=Rs2_addr==EX_Rd_addr&&EX_RegWrite&&EX_Rd_addr!=32'h0;
assign Load_hazard=(EX_MemtoReg==`MEM2REG_MEM&&(Rs1_ID_EX_hazard||Rs2_ID_EX_hazard));
endmodule
