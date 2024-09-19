`include "../sources_1/new/Lab4.vh"
module exception_tb ();
    `CSR_DECLARATION;
    reg clk = 1'b0;
    reg rst;
    wire [31:0] inst_in;
    reg [31:0] Data_in;
    reg INT;
    wire MemRW;
    wire [31:0] PC_out;
    wire [31:0] Data_out;
    wire [31:0] Addr_out;
    wire [3:0] wea;
    wire [`CSR_CHANGE_MODE_WIDTH-1:0] csr_wsc_mode;
    wire CPU_MIO;
    wire trap_normal_change;
    wire mret;
    wire ecall;
    wire [31:0]`YOUR_REGS[31:0];
    `RegFile_Regs_Declaration
    SCPU uut (
         .clk(clk),
         .rst(rst),
         .MIO_ready(MIO_ready),
         .inst_in(inst_in),
         .Data_in(Data_in),
         .INT(INT),
         .CPU_MIO(CPU_MIO),
         .MemRW(MemRW),
         .PC_out(PC_out),
         .Data_out(Data_out),
         .Addr_out(Addr_out),
         .wea(wea),
         .csr_wsc_mode(csr_wsc_mode),
         .trap_normal_change(trap_normal_change),
            .mret(mret),
            .ecall(ecall),
        `RegFile_Regs_Arguments
        `CSR_ARGUMENTS
    );
    `RegFile_Regs_Assignments
    U2 U2 (
      .a  (PC_out[11:2]),
      .spo(inst_in)
  );
always begin
    #5 clk = ~clk;
end
initial begin
    rst = 0;
    INT=0;
    Data_in=32'h00000000;
    #10;
    rst = 1;
    #10;
    rst = 0;
    #270;
    INT=1;
    #20;
    INT=0;
end
endmodule