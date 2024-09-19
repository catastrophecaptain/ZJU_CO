`include "Lab4.vh"
module CSRRegs (
    input                                   clk,
    input                                   rst,
    input      [                      11:0] raddr,
    input      [                      11:0] waddr,
    input      [                      31:0] wdata,
    input                                   csr_w,
    input      [`CSR_CHANGE_MODE_WIDTH-1:0] csr_wsc_mode,
    input      [                      31:0] mepc_bypasss_in,
    input      [                      31:0] mcause_bypass_in,
    input      [                      31:0] mtval_bypass_in,
    input      [                      31:0] mstatus_bypass_in,
    output     [                      31:0] rdata,
    output reg [                      31:0] mepc,
    output reg [                      31:0] mcause,
    output reg [                      31:0] mtval,
    output reg [                      31:0] mtvec,
    output reg [                      31:0] mstatus
);
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      mepc <= 32'h0;
      mcause <= 32'h0;
      mtval <= 32'h0;
      mtvec <= 32'h44;
      mstatus <= 32'h8;
    end else if (csr_w) begin
      case (csr_wsc_mode)
        `CSR_WRITE:
        case (waddr)
          `MEPC: mepc <= wdata;
          `MCAUSE: mcause <= wdata;
          `MTVAL: mtval <= wdata;
          `MTVEC: mtvec <= wdata;
          `MSTATUS: mstatus <= wdata;
        endcase
        `CSR_OR:
        case (waddr)
          `MEPC: mepc <= mepc | wdata;
          `MCAUSE: mcause <= mcause | wdata;
          `MTVAL: mtval <= mtval | wdata;
          `MTVEC: mtvec <= mtvec | wdata;
          `MSTATUS: mstatus <= mstatus | wdata;
        endcase
        `CSR_CLEAR:
        case (waddr)
          `MEPC: mepc <= mepc & ~wdata;
          `MCAUSE: mcause <= mcause & ~wdata;
          `MTVAL: mtval <= mtval & ~wdata;
          `MTVEC: mtvec <= mtvec & ~wdata;
          `MSTATUS: mstatus <= mstatus & ~wdata;
        endcase
        `CSR_BYPASS:
        begin
            mepc <= mepc_bypasss_in;
            mcause <= mcause_bypass_in;
            mtval <= mtval_bypass_in;
            mstatus <= mstatus_bypass_in;
        end
      endcase
    end
  end
assign rdata = (raddr == `MEPC) ? mepc :
              (raddr == `MCAUSE) ? mcause :
              (raddr == `MTVAL) ? mtval :
              (raddr == `MTVEC) ? mtvec :
              (raddr == `MSTATUS) ? mstatus :
              32'h0;
endmodule
