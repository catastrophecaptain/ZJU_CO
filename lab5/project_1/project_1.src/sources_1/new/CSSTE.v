`timescale 1ns / 1ps
`include "Lab4.vh"
module CSSTE (
    input         clk_100mhz,
    input         RSTN,
    input  [ 3:0] BTN_y,
    input  [15:0] SW,
    output [ 3:0] Blue,
    output [ 3:0] Green,
    output [ 3:0] Red,
    output        HSYNC,
    output        VSYNC,
    output [15:0] LED_out,
    output [ 7:0] AN,
    output [ 7:0] segment,
    output wire        tx
);
  `RegFile_Regs_Declaration
  wire [3:0] U9_BTN_OK;
  wire [15:0] U9_SW_OK;
  wire U9_rst;
  SAnti_jitter U9 (
      .clk(clk_100mhz),
      .RSTN(RSTN),
      .Key_y(BTN_y),
      .SW(SW),
      .BTN_OK(U9_BTN_OK),
      .SW_OK(U9_SW_OK),
      .rst(U9_rst)
  );
  wire [31:0] U8_clkdiv;
  wire U8_Clk_CPU;
  clk_div U8 (
      .clk(clk_100mhz),
      .rst(U9_rst),
      .SW2(U9_SW_OK[2]),
      .SW8(U9_SW_OK[8]),
      .STEP(U9_SW_OK[10]),
      .clkdiv(U8_clkdiv),
      .Clk_CPU(U8_Clk_CPU)
  );
  wire U10_counter0_OUT, U10_counter1_OUT, U10_counter2_OUT;
  wire [31:0] U10_counter_out;
  wire U4_counter_we;
  wire [31:0] U4_Peripheral_in;
  wire [1:0] U7_counter_set;
  Counter_x U10 (
      .clk(~U8_Clk_CPU),
      .rst(U9_rst),
      .clk0(U8_clkdiv[6]),
      .clk1(U8_clkdiv[9]),
      .clk2(U8_clkdiv[11]),
      .counter_we(U4_counter_we),
      .counter_val(U4_Peripheral_in),
      .counter_ch(U7_counter_set),
      .counter0_OUT(U10_counter0_OUT),
      .counter1_OUT(U10_counter1_OUT),
      .counter2_OUT(U10_counter2_OUT),
      .counter_out(U10_counter_out)
  );
  wire [31:0] U3_douta;
  wire [9:0] U4_ram_addr;
  wire [31:0] U4_ram_data_in;
  wire U4_data_ram_we;
  wire [3:0] U1_wea;
  RAM_B U3 (
      .clka (~clk_100mhz),
      .wea  (U1_wea),
      .addra(U4_ram_addr),
      .dina (U4_ram_data_in),
      .douta(U3_douta)
  );
  wire [31:0] U1_PC_out;
  wire [31:0] U2_spo;
  U2 U2 (
      .a  (U1_PC_out[11:2]),
      .spo(U2_spo)
  );
  wire [31:0] U4_Cpu_data4bus, U1_Addr_out, U1_Data_out;
  wire U1_MemRW;
wire [31:0] pc_id      ;   
wire [31:0] inst_id    ;
// wire        valid_id   ;
wire [31:0] pc_ex      ;
wire [31:0] inst_ex    ;
// wire        valid_ex   ;
wire [ 4:0] rd_ex      ;
wire [ 4:0] rs1        ;
wire [ 4:0] rs2        ;
wire [31:0] rs1_val    ;
wire [31:0] rs2_val    ;
wire        reg_wen_ex ;
wire        is_imm     ;
wire [31:0] imm        ;
wire        mem_wen_ex ;
// wire        mem_ren_ex ;
// wire        is_branch  ;
// wire        is_jal_ex  ;
// wire        is_jalr_ex ;
// wire        is_auipc   ;
// wire        is_lui     ;
// wire [ 3:0] alu_ctrl   ;
// wire [ 2:0] cmp_ctrl   ;
// wire [31:0] pc_mem     ;
// wire [31:0] inst_mem   ;
// wire        valid_mem  ;
wire [ 4:0] rd_mem     ;
wire        reg_wen_mem;
wire [31:0] mem_w_data ;
wire [31:0] alu_res    ;
wire        mem_wen_mem;
// wire        mem_ren_mem;
// wire        is_jal_mem ;
// wire        is_jalr_mem;
// wire [31:0] pc_wb      ;
// wire [31:0] inst_wb    ;
// wire        valid_wb   ;
wire [ 4:0] rd_wb      ;
wire        reg_wen_wb ;
wire [31:0] reg_w_data ;
  SCPU U1 (
      `RegFile_Regs_Arguments
      .clk(U8_Clk_CPU),
      .rst(U9_rst),
      .Data_in(U4_Cpu_data4bus),
      .inst_in(U2_spo),
      .MemRW(U1_MemRW),
      .Addr_out(U1_Addr_out),
      .Data_out(U1_Data_out),
      .PC_out(U1_PC_out),
      .wea(U1_wea),
      .ID_PC(pc_id),
        .ID_inst(inst_id),
        .EX_PC(pc_ex),
        .EX_inst(inst_ex),
        .EX_Rd_addr(rd_ex),
        .EX_Rs1_addr(rs1),
        .EX_Rs2_addr(rs2),
        .EX_RegWrite(reg_wen_ex),
        .EX_ALUSrc_B(is_imm),
        .EX_Imm(imm),
        .MEM_Rd_addr(rd_mem),
        .MEM_RegWrite(reg_wen_mem),
        .MEM_Data_out(mem_w_data),
        .WB_Rd_addr(rd_wb),
        .WB_RegWrite(reg_wen_wb),
        .WB_Rd_data(reg_w_data),
        .rs1_val(rs1_val),
        .rs2_val(rs2_val)  
  );
  UART uart(
    .clk(clk_100mhz),
    .rst(U9_rst),
    .tx(tx),
    `VGA_RegFile_Arguments
    .pc_if(U1_PC_out),
    .inst_if(U2_spo),
.pc_id      (pc_id       ),
.inst_id    (inst_id    ),
.valid_id   (valid_id   ),
.pc_ex      (pc_ex      ),
.inst_ex    (inst_ex    ),
.valid_ex   (valid_ex   ),
.rd_ex      (rd_ex      ),
.rs1        (rs1        ),
.rs2        (rs2        ),
.rs1_val    (rs1_val    ),
.rs2_val    (rs2_val    ),
.reg_wen_ex (reg_wen_ex ),
.is_imm     (is_imm     ),
.imm        (imm        ),
.mem_wen_ex (mem_wen_ex ),
.mem_ren_ex (mem_ren_ex ),
.is_branch  (is_branch  ),
.is_jal_ex  (is_jal_ex  ),
.is_jalr_ex (is_jalr_ex ),
.is_auipc   (is_auipc   ),
.is_lui     (is_lui     ),
.alu_ctrl   (alu_ctrl   ),
.cmp_ctrl   (cmp_ctrl   ),
.pc_mem     (pc_mem     ),
.inst_mem   (inst_mem   ),
.valid_mem  (valid_mem  ),
.rd_mem     (rd_mem     ),
.reg_wen_mem(reg_wen_mem),
.mem_w_data (mem_w_data ),
.alu_res    (alu_res    ),
.mem_wen_mem(mem_wen_mem),
.mem_ren_mem(mem_ren_mem),
.is_jal_mem (is_jal_mem ),
.is_jalr_mem(is_jalr_mem),
.pc_wb      (pc_wb      ),
.inst_wb    (inst_wb    ),
.valid_wb   (valid_wb   ),
.rd_wb      (rd_wb      ),
.reg_wen_wb (reg_wen_wb ),
.reg_w_data (reg_w_data )
  );
  wire [15:0] U7_LED_out;
  assign LED_out = U7_LED_out;
  wire U4_GPIOf0000000_we, U4_GPIOe0000000_we;
  MIO_BUS U4 (
      .clk(clk_100mhz),
      .rst(U9_rst),
      .BTN(U9_BTN_OK),
      .SW(U9_SW_OK),
      .mem_w(U1_MemRW),
      .Cpu_data2bus(U1_Data_out),
      .addr_bus(U1_Addr_out),
      .ram_data_out(U3_douta),
      .led_out(U7_LED_out),
      .counter_out(U10_counter_out),
      .counter0_out(U10_counter0_OUT),
      .counter1_out(U10_counter1_OUT),
      .counter2_out(U10_counter2_OUT),
      .Cpu_data4bus(U4_Cpu_data4bus),
      .ram_addr(U4_ram_addr),
      .ram_data_in(U4_ram_data_in),
      .data_ram_we(U4_data_ram_we),
      .counter_we(U4_counter_we),
      .Peripheral_in(U4_Peripheral_in),
      .GPIOe0000000_we(U4_GPIOe0000000_we),
      .GPIOf0000000_we(U4_GPIOf0000000_we)
  );
  wire [7:0] U5_point_out, U5_LE_out;
  wire [31:0] U5_Disp_num;
  Multi_8CH32 U5 (
      .clk(~U8_Clk_CPU),
      .rst(U9_rst),
      .EN(U4_GPIOe0000000_we),
      .point_in({U8_clkdiv[31:0], U8_clkdiv[31:0]}),
      .Test(U9_SW_OK[7:5]),
      .LES(64'b0),
      .Data0(U4_Peripheral_in),
      .data1({2'b0, U1_PC_out[31:2]}),
      .data2(U2_spo),
      .data3(U10_counter_out),
      .data4(U1_Addr_out),
      .data5(U1_Data_out),
      .data6(U4_Cpu_data4bus),
      .data7(U1_PC_out),
      .point_out(U5_point_out),
      .LE_out(U5_LE_out),
      .Disp_num(U5_Disp_num)
  );
  Seg7_Dev U6 (
      .scan({U8_clkdiv[18], U8_clkdiv[17], U8_clkdiv[16]}),
      .les(U5_LE_out),
      .point(U5_point_out),
      .disp_num(U5_Disp_num),
      .AN(AN),
      .segment(segment)
  );
  SPIO U7 (
      .clk(~U8_Clk_CPU),
      .rst(U9_rst),
      .Start(U8_clkdiv[20]),
      .EN(U4_GPIOf0000000_we),
      .P_Data(U4_Peripheral_in),
      .counter_set(U7_counter_set),
      .LED_out(U7_LED_out)
  );
  VGA U11 (
    `VGA_RegFile_Arguments
      .clk_25m(U8_clkdiv[1]),
      .clk_100m(clk_100mhz),
      .rst(U9_rst),
      .pc(U1_PC_out),
      .inst(U2_spo),
      .alu_res(U1_Addr_out),
      .dmem_addr(U1_Addr_out),
      .mem_wen(U1_MemRW),
      .dmem_o_data(U3_douta),
      .dmem_i_data(U4_ram_data_in),
      .hs(HSYNC),
      .vs(VSYNC),
      .vga_r(Red),
      .vga_g(Green),
      .vga_b(Blue)
  );


endmodule
