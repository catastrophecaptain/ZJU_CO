# File saved with Nlview 7.5.8 2022-09-21 7111 VDI=41 GEI=38 GUI=JA:10.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new CSSTE work:CSSTE:NOFILE -nosplit
load symbol SCPU work:SCPU:NOFILE HIERBOX pin CPU_MIO output.right pin MIO_ready input.left pin MemRW output.right pin clk input.left pin rst input.left pinBus Addr_out output.right [31:0] pinBus Data_in input.left [31:0] pinBus Data_out output.right [31:0] pinBus PC_out output.right [31:0] pinBus inst_in input.left [31:0] pinBus wea output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Counter_x work:Counter_x:Counter_x.edf HIERBOX pin clk input.left pin clk0 input.left pin clk1 input.left pin clk2 input.left pin counter0_OUT output.right pin counter1_OUT output.right pin counter2_OUT output.right pin counter_we input.left pin rst input.left pinBus counter_ch input.left [1:0] pinBus counter_out output.right [31:0] pinBus counter_val input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol VGA work:VGA:NOFILE HIERBOX pin clk_100m input.left pin clk_25m input.left pin cmp_res input.left pin csr_wen input.left pin do_branch input.left pin hs output.right pin is_auipc input.left pin is_branch input.left pin is_imm input.left pin is_jal input.left pin is_jalr input.left pin is_lui input.left pin mem_ren input.left pin mem_wen input.left pin reg_wen input.left pin rst input.left pin vs output.right pinBus a0 input.left [31:0] pinBus a1 input.left [31:0] pinBus a2 input.left [31:0] pinBus a3 input.left [31:0] pinBus a4 input.left [31:0] pinBus a5 input.left [31:0] pinBus a6 input.left [31:0] pinBus a7 input.left [31:0] pinBus a_val input.left [31:0] pinBus alu_ctrl input.left [3:0] pinBus alu_res input.left [31:0] pinBus b_val input.left [31:0] pinBus cmp_ctrl input.left [2:0] pinBus csr_ctrl input.left [1:0] pinBus csr_ind input.left [11:0] pinBus csr_r_data input.left [31:0] pinBus dmem_addr input.left [31:0] pinBus dmem_i_data input.left [31:0] pinBus dmem_o_data input.left [31:0] pinBus gp input.left [31:0] pinBus imm input.left [31:0] pinBus inst input.left [31:0] pinBus mcause_o input.left [31:0] pinBus mepc_o input.left [31:0] pinBus mie_o input.left [31:0] pinBus mip_o input.left [31:0] pinBus mstatus_o input.left [31:0] pinBus mtval_o input.left [31:0] pinBus mtvec_o input.left [31:0] pinBus pc input.left [31:0] pinBus pc_branch input.left [31:0] pinBus ra input.left [31:0] pinBus rd input.left [4:0] pinBus reg_i_data input.left [31:0] pinBus rs1 input.left [4:0] pinBus rs1_val input.left [31:0] pinBus rs2 input.left [4:0] pinBus rs2_val input.left [31:0] pinBus s0 input.left [31:0] pinBus s1 input.left [31:0] pinBus s10 input.left [31:0] pinBus s11 input.left [31:0] pinBus s2 input.left [31:0] pinBus s3 input.left [31:0] pinBus s4 input.left [31:0] pinBus s5 input.left [31:0] pinBus s6 input.left [31:0] pinBus s7 input.left [31:0] pinBus s8 input.left [31:0] pinBus s9 input.left [31:0] pinBus sp input.left [31:0] pinBus t0 input.left [31:0] pinBus t1 input.left [31:0] pinBus t2 input.left [31:0] pinBus t3 input.left [31:0] pinBus t4 input.left [31:0] pinBus t5 input.left [31:0] pinBus t6 input.left [31:0] pinBus tp input.left [31:0] pinBus vga_b output.right [3:0] pinBus vga_g output.right [3:0] pinBus vga_r output.right [3:0] pinBus x0 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol U2 work_library1_28:U2:U2.edf HIERBOX pinBus a input.left [9:0] pinBus spo output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RAM_B work_library0_27:RAM_B:RAM_B.edf HIERBOX pin clka input.left pinBus addra input.left [9:0] pinBus dina input.left [31:0] pinBus douta output.right [31:0] pinBus wea input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol MIO_BUS work:MIO_BUS:MIO_BUS.edf HIERBOX pin GPIOe0000000_we output.right pin GPIOf0000000_we output.right pin clk input.left pin counter0_out input.left pin counter1_out input.left pin counter2_out input.left pin counter_we output.right pin data_ram_we output.right pin mem_w input.left pin rst input.left pinBus BTN input.left [3:0] pinBus Cpu_data2bus input.left [31:0] pinBus Cpu_data4bus output.right [31:0] pinBus Peripheral_in output.right [31:0] pinBus SW input.left [15:0] pinBus addr_bus input.left [31:0] pinBus counter_out input.left [31:0] pinBus led_out input.left [15:0] pinBus ram_addr output.right [9:0] pinBus ram_data_in output.right [31:0] pinBus ram_data_out input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Multi_8CH32 work:Multi_8CH32:Multi_8CH32.edf HIERBOX pin EN input.left pin clk input.left pin rst input.left pinBus Data0 input.left [31:0] pinBus Disp_num output.right [31:0] pinBus LES input.left [63:0] pinBus LE_out output.right [7:0] pinBus Test input.left [2:0] pinBus data1 input.left [31:0] pinBus data2 input.left [31:0] pinBus data3 input.left [31:0] pinBus data4 input.left [31:0] pinBus data5 input.left [31:0] pinBus data6 input.left [31:0] pinBus data7 input.left [31:0] pinBus point_in input.left [63:0] pinBus point_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Seg7_Dev work:Seg7_Dev:NOFILE HIERBOX pinBus AN output.right [7:0] pinBus disp_num input.left [31:0] pinBus les input.left [7:0] pinBus point input.left [7:0] pinBus scan input.left [2:0] pinBus segment output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol SPIO work:SPIO:SPIO.edf HIERBOX pin EN input.left pin LED_PEN output.right pin Start input.left pin clk input.left pin led_clk output.right pin led_clrn output.right pin led_sout output.right pin rst input.left pinBus GPIOf0 output.right [13:0] pinBus LED_out output.right [15:0] pinBus P_Data input.left [31:0] pinBus counter_set output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol clk_div work:clk_div:clk_div.edf HIERBOX pin Clk_CPU output.right pin STEP input.left pin SW2 input.left pin SW8 input.left pin clk input.left pin rst input.left pinBus clkdiv output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol SAnti_jitter work:SAnti_jitter:SAnti_jitter.edf HIERBOX pin CR output.right pin Key_ready output.right pin RSTN input.left pin clk input.left pin readn input.left pin rst output.right pinBus BTN_OK output.right [3:0] pinBus Key_out output.right [4:0] pinBus Key_x output.right [4:0] pinBus Key_y input.left [3:0] pinBus SW input.left [15:0] pinBus SW_OK output.right [15:0] pinBus pulse_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PipelineReg work:abstract:NOFILE HIERBOX pin ALUSrc_B output.right pin ALUSrc_B_in input.left pin Branch output.right pin Branch_in input.left pin Jump output.right pin Jump_in input.left pin RegWrite output.right pin RegWrite_in input.left pin clk input.left pin jump_choose output.right pin jump_choose_in input.left pin rst input.left pin sign output.right pin sign_in input.left pinBus ALU_Control output.right [3:0] pinBus ALU_Control_in input.left [3:0] pinBus Addr_out output.right [31:0] pinBus Addr_out_in input.left [31:0] pinBus Data_out output.right [31:0] pinBus Data_out_in input.left [31:0] pinBus Imm output.right [31:0] pinBus ImmSell output.right [2:0] pinBus ImmSell_in input.left [2:0] pinBus Imm_in input.left [31:0] pinBus MemtoReg output.right [1:0] pinBus MemtoReg_in input.left [1:0] pinBus PC output.right [31:0] pinBus PC_in input.left [31:0] pinBus Rd_addr output.right [4:0] pinBus Rd_addr_in input.left [4:0] pinBus Rd_data output.right [31:0] pinBus Rd_data_in input.left [31:0] pinBus Rs1_addr output.right [4:0] pinBus Rs1_addr_in input.left [4:0] pinBus Rs1_data output.right [31:0] pinBus Rs1_data_in input.left [31:0] pinBus Rs2_addr output.right [4:0] pinBus Rs2_addr_in input.left [4:0] pinBus Rs2_data output.right [31:0] pinBus Rs2_data_in input.left [31:0] pinBus byte_n output.right [1:0] pinBus byte_n_in input.left [1:0] pinBus inst output.right [31:0] pinBus inst_in input.left [31:0] pinBus wea output.right [3:0] pinBus wea_in input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PipelineReg work:PipelineReg:NOFILE HIERBOX pin ALUSrc_B output.right pin ALUSrc_B_in input.left pin Branch output.right pin Branch_in input.left pin Jump output.right pin Jump_in input.left pin RegWrite output.right pin RegWrite_in input.left pin clk input.left pin jump_choose output.right pin jump_choose_in input.left pin rst input.left pin sign output.right pin sign_in input.left pinBus ALU_Control output.right [3:0] pinBus ALU_Control_in input.left [3:0] pinBus Addr_out output.right [31:0] pinBus Addr_out_in input.left [31:0] pinBus Data_out output.right [31:0] pinBus Data_out_in input.left [31:0] pinBus Imm output.right [31:0] pinBus ImmSell output.right [2:0] pinBus ImmSell_in input.left [2:0] pinBus Imm_in input.left [31:0] pinBus MemtoReg output.right [1:0] pinBus MemtoReg_in input.left [1:0] pinBus PC output.right [31:0] pinBus PC_in input.left [31:0] pinBus Rd_addr output.right [4:0] pinBus Rd_addr_in input.left [4:0] pinBus Rd_data output.right [31:0] pinBus Rd_data_in input.left [31:0] pinBus Rs1_addr output.right [4:0] pinBus Rs1_addr_in input.left [4:0] pinBus Rs1_data output.right [31:0] pinBus Rs1_data_in input.left [31:0] pinBus Rs2_addr output.right [4:0] pinBus Rs2_addr_in input.left [4:0] pinBus Rs2_data output.right [31:0] pinBus Rs2_data_in input.left [31:0] pinBus byte_n output.right [1:0] pinBus byte_n_in input.left [1:0] pinBus inst output.right [31:0] pinBus inst_in input.left [31:0] pinBus wea output.right [3:0] pinBus wea_in input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC_control work:PC_control:NOFILE HIERBOX pin ID_pass output.right pin Load_hazard input.left pin change input.left pinBus ID_PC input.left [31:0] pinBus PC input.left [31:0] pinBus PC_jump input.left [31:0] pinBus PC_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ImmGen work:ImmGen:NOFILE HIERBOX pin sign input.left pinBus Imm output.right [31:0] pinBus ImmSell input.left [2:0] pinBus inst_field input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol bubble work:bubble:NOFILE HIERBOX pin EX_Branch_in output.right pin EX_Branch_in_temp input.left pin EX_Jump_in output.right pin EX_Jump_in_temp input.left pin EX_RegWrite_in output.right pin EX_RegWrite_in_temp input.left pin ID_pass input.left pinBus EX_wea_in output.right [3:0] pinBus EX_wea_in_temp input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Regs work:Regs:NOFILE HIERBOX pin RegWrite input.left pin clk input.left pin rst input.left pinBus Reg00 output.right [31:0] pinBus Reg01 output.right [31:0] pinBus Reg02 output.right [31:0] pinBus Reg03 output.right [31:0] pinBus Reg04 output.right [31:0] pinBus Reg05 output.right [31:0] pinBus Reg06 output.right [31:0] pinBus Reg07 output.right [31:0] pinBus Reg08 output.right [31:0] pinBus Reg09 output.right [31:0] pinBus Reg10 output.right [31:0] pinBus Reg11 output.right [31:0] pinBus Reg12 output.right [31:0] pinBus Reg13 output.right [31:0] pinBus Reg14 output.right [31:0] pinBus Reg15 output.right [31:0] pinBus Reg16 output.right [31:0] pinBus Reg17 output.right [31:0] pinBus Reg18 output.right [31:0] pinBus Reg19 output.right [31:0] pinBus Reg20 output.right [31:0] pinBus Reg21 output.right [31:0] pinBus Reg22 output.right [31:0] pinBus Reg23 output.right [31:0] pinBus Reg24 output.right [31:0] pinBus Reg25 output.right [31:0] pinBus Reg26 output.right [31:0] pinBus Reg27 output.right [31:0] pinBus Reg28 output.right [31:0] pinBus Reg29 output.right [31:0] pinBus Reg30 output.right [31:0] pinBus Reg31 output.right [31:0] pinBus Rs1_addr input.left [4:0] pinBus Rs1_data output.right [31:0] pinBus Rs2_addr input.left [4:0] pinBus Rs2_data output.right [31:0] pinBus Wt_addr input.left [4:0] pinBus Wt_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pin zero output.right pinBus A input.left [31:0] pinBus ALU_operation input.left [3:0] pinBus B input.left [31:0] pinBus res output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol extend work:extend:NOFILE HIERBOX pin sign input.left pinBus byte_n input.left [1:0] pinBus in input.left [31:0] pinBus mem_data output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol forwarding work:forwarding:NOFILE HIERBOX pin EX_ALUSrc_B input.left pin MEM_RegWrite input.left pin WB_RegWrite input.left pinBus EX_Data_out input.left [31:0] pinBus EX_Imm input.left [31:0] pinBus EX_Rs1_addr input.left [4:0] pinBus EX_Rs1_data input.left [31:0] pinBus EX_Rs2_addr input.left [4:0] pinBus EX_Rs2_data input.left [31:0] pinBus MEM_Data_out_in output.right [31:0] pinBus MEM_Rd_addr input.left [4:0] pinBus MEM_Rd_data input.left [31:0] pinBus WB_Rd_addr input.left [4:0] pinBus WB_Rd_data input.left [31:0] pinBus adder_1 output.right [31:0] pinBus adder_2 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol load_hazard work:load_hazard:NOFILE HIERBOX pin EX_RegWrite input.left pin Load_hazard output.right pinBus EX_MemtoReg input.left [1:0] pinBus EX_Rd_addr input.left [4:0] pinBus Rs1_addr input.left [4:0] pinBus Rs2_addr input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC_choose work:PC_choose:NOFILE HIERBOX pin EX_Branch input.left pin EX_Jump input.left pin EX_jump_choose input.left pin change output.right pin zero input.left pinBus ALU_out input.left [31:0] pinBus EX_Imm input.left [31:0] pinBus EX_PC input.left [31:0] pinBus PC_jump output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Rd_choose work:Rd_choose:NOFILE HIERBOX pinBus ALU_out input.left [31:0] pinBus EX_Imm input.left [31:0] pinBus EX_MemtoReg input.left [1:0] pinBus EX_PC input.left [31:0] pinBus MEM_MemtoReg input.left [1:0] pinBus MEM_Rd_data input.left [31:0] pinBus MEM_Rd_data_in output.right [31:0] pinBus WB_Rd_data_in output.right [31:0] pinBus mem_out input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RAM_shift work:RAM_shift:NOFILE HIERBOX pin MemRW output.right pinBus Addr_out output.right [31:0] pinBus Data_in input.left [31:0] pinBus Data_in_shift output.right [31:0] pinBus Data_out output.right [31:0] pinBus MEM_Addr_out input.left [31:0] pinBus MEM_Data_out input.left [31:0] pinBus MEM_wea input.left [3:0] pinBus wea output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Controler work:Controler:NOFILE HIERBOX pin ALUSrc_B output.right pin Branch output.right pin CPU_MIO output.right pin Jump output.right pin MIO_ready input.left pin RegWrite output.right pin jump_choose output.right pin sign output.right pinBus ALU_Control output.right [3:0] pinBus Fun3 input.left [2:0] pinBus Fun7 input.left [6:0] pinBus ImmSell output.right [2:0] pinBus MemtoReg output.right [1:0] pinBus OPcode input.left [4:0] pinBus byte_n output.right [1:0] pinBus wea output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_2 work[31:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load inst U1 SCPU work:SCPU:NOFILE -autohide -attr @cell(#000000) SCPU -attr @fillcolor #fafafa -pinAttr CPU_MIO @attr n/c -pinAttr MIO_ready @attr n/c -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Data_in @name Data_in[31:0] -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr PC_out @name PC_out[31:0] -pinBusAttr inst_in @name inst_in[31:0] -pinBusAttr wea @name wea[3:0] -pg 1 -lvl 1 -x 110 -y 58
load inst U1|EX_PipelineReg PipelineReg work:abstract:NOFILE -hier U1 -autohide -attr @cell(#000000) PipelineReg -attr @name EX_PipelineReg -pinBusAttr ALU_Control @name ALU_Control[3:0] -pinBusAttr ALU_Control_in @name ALU_Control_in[3:0] -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Addr_out @attr n/c -pinBusAttr Addr_out_in @name Addr_out_in[31:0] -pinBusAttr Addr_out_in @attr n/c -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr Data_out_in @name Data_out_in[31:0] -pinBusAttr Imm @name Imm[31:0] -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr ImmSell @attr n/c -pinBusAttr ImmSell_in @name ImmSell_in[2:0] -pinBusAttr Imm_in @name Imm_in[31:0] -pinBusAttr MemtoReg @name MemtoReg[1:0] -pinBusAttr MemtoReg_in @name MemtoReg_in[1:0] -pinBusAttr PC @name PC[31:0] -pinBusAttr PC_in @name PC_in[31:0] -pinBusAttr Rd_addr @name Rd_addr[4:0] -pinBusAttr Rd_addr_in @name Rd_addr_in[4:0] -pinBusAttr Rd_data @name Rd_data[31:0] -pinBusAttr Rd_data @attr n/c -pinBusAttr Rd_data_in @name Rd_data_in[31:0] -pinBusAttr Rd_data_in @attr n/c -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs1_addr_in @name Rs1_addr_in[4:0] -pinBusAttr Rs1_data @name Rs1_data[31:0] -pinBusAttr Rs1_data_in @name Rs1_data_in[31:0] -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pinBusAttr Rs2_addr_in @name Rs2_addr_in[4:0] -pinBusAttr Rs2_data @name Rs2_data[31:0] -pinBusAttr Rs2_data_in @name Rs2_data_in[31:0] -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr byte_n_in @name byte_n_in[1:0] -pinBusAttr inst @name inst[31:0] -pinBusAttr inst @attr n/c -pinBusAttr inst_in @name inst_in[31:0] -pinBusAttr inst_in @attr n/c -pinBusAttr wea @name wea[3:0] -pinBusAttr wea_in @name wea_in[3:0] -pg 1 -lvl 9 -x 4590 -y 278
load inst U1|ID_PipelineReg PipelineReg work:PipelineReg:NOFILE -hier U1 -autohide -attr @cell(#000000) PipelineReg -attr @name ID_PipelineReg -pinAttr ALUSrc_B @attr n/c -pinAttr ALUSrc_B_in @attr n/c -pinAttr Branch @attr n/c -pinAttr Branch_in @attr n/c -pinAttr Jump @attr n/c -pinAttr Jump_in @attr n/c -pinAttr RegWrite @attr n/c -pinAttr RegWrite_in @attr n/c -pinAttr jump_choose @attr n/c -pinAttr jump_choose_in @attr n/c -pinAttr sign @attr n/c -pinAttr sign_in @attr n/c -pinBusAttr ALU_Control @name ALU_Control[3:0] -pinBusAttr ALU_Control @attr n/c -pinBusAttr ALU_Control_in @name ALU_Control_in[3:0] -pinBusAttr ALU_Control_in @attr n/c -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Addr_out @attr n/c -pinBusAttr Addr_out_in @name Addr_out_in[31:0] -pinBusAttr Addr_out_in @attr n/c -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr Data_out @attr n/c -pinBusAttr Data_out_in @name Data_out_in[31:0] -pinBusAttr Data_out_in @attr n/c -pinBusAttr Imm @name Imm[31:0] -pinBusAttr Imm @attr n/c -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr ImmSell @attr n/c -pinBusAttr ImmSell_in @name ImmSell_in[2:0] -pinBusAttr ImmSell_in @attr n/c -pinBusAttr Imm_in @name Imm_in[31:0] -pinBusAttr Imm_in @attr n/c -pinBusAttr MemtoReg @name MemtoReg[1:0] -pinBusAttr MemtoReg @attr n/c -pinBusAttr MemtoReg_in @name MemtoReg_in[1:0] -pinBusAttr MemtoReg_in @attr n/c -pinBusAttr PC @name PC[31:0] -pinBusAttr PC_in @name PC_in[31:0] -pinBusAttr Rd_addr @name Rd_addr[4:0] -pinBusAttr Rd_addr @attr n/c -pinBusAttr Rd_addr_in @name Rd_addr_in[4:0] -pinBusAttr Rd_addr_in @attr n/c -pinBusAttr Rd_data @name Rd_data[31:0] -pinBusAttr Rd_data @attr n/c -pinBusAttr Rd_data_in @name Rd_data_in[31:0] -pinBusAttr Rd_data_in @attr n/c -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs1_addr @attr n/c -pinBusAttr Rs1_addr_in @name Rs1_addr_in[4:0] -pinBusAttr Rs1_addr_in @attr n/c -pinBusAttr Rs1_data @name Rs1_data[31:0] -pinBusAttr Rs1_data @attr n/c -pinBusAttr Rs1_data_in @name Rs1_data_in[31:0] -pinBusAttr Rs1_data_in @attr n/c -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pinBusAttr Rs2_addr @attr n/c -pinBusAttr Rs2_addr_in @name Rs2_addr_in[4:0] -pinBusAttr Rs2_addr_in @attr n/c -pinBusAttr Rs2_data @name Rs2_data[31:0] -pinBusAttr Rs2_data @attr n/c -pinBusAttr Rs2_data_in @name Rs2_data_in[31:0] -pinBusAttr Rs2_data_in @attr n/c -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr byte_n @attr n/c -pinBusAttr byte_n_in @name byte_n_in[1:0] -pinBusAttr byte_n_in @attr n/c -pinBusAttr inst @name inst[31:0] -pinBusAttr inst_in @name inst_in[31:0] -pinBusAttr wea @name wea[3:0] -pinBusAttr wea @attr n/c -pinBusAttr wea_in @name wea_in[3:0] -pinBusAttr wea_in @attr n/c -pg 1 -lvl 5 -x 2160 -y 1538
load inst U1|MEM_PipelineReg PipelineReg work:abstract:NOFILE -hier U1 -autohide -attr @cell(#000000) PipelineReg -attr @name MEM_PipelineReg -pinAttr ALUSrc_B @attr n/c -pinAttr ALUSrc_B_in @attr n/c -pinAttr Branch @attr n/c -pinAttr Branch_in @attr n/c -pinAttr Jump @attr n/c -pinAttr Jump_in @attr n/c -pinAttr jump_choose @attr n/c -pinAttr jump_choose_in @attr n/c -pinBusAttr ALU_Control @name ALU_Control[3:0] -pinBusAttr ALU_Control @attr n/c -pinBusAttr ALU_Control_in @name ALU_Control_in[3:0] -pinBusAttr ALU_Control_in @attr n/c -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Addr_out_in @name Addr_out_in[31:0] -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr Data_out_in @name Data_out_in[31:0] -pinBusAttr Imm @name Imm[31:0] -pinBusAttr Imm @attr n/c -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr ImmSell @attr n/c -pinBusAttr ImmSell_in @name ImmSell_in[2:0] -pinBusAttr ImmSell_in @attr n/c -pinBusAttr Imm_in @name Imm_in[31:0] -pinBusAttr Imm_in @attr n/c -pinBusAttr MemtoReg @name MemtoReg[1:0] -pinBusAttr MemtoReg_in @name MemtoReg_in[1:0] -pinBusAttr PC @name PC[31:0] -pinBusAttr PC_in @name PC_in[31:0] -pinBusAttr Rd_addr @name Rd_addr[4:0] -pinBusAttr Rd_addr_in @name Rd_addr_in[4:0] -pinBusAttr Rd_data @name Rd_data[31:0] -pinBusAttr Rd_data_in @name Rd_data_in[31:0] -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs1_addr @attr n/c -pinBusAttr Rs1_addr_in @name Rs1_addr_in[4:0] -pinBusAttr Rs1_addr_in @attr n/c -pinBusAttr Rs1_data @name Rs1_data[31:0] -pinBusAttr Rs1_data @attr n/c -pinBusAttr Rs1_data_in @name Rs1_data_in[31:0] -pinBusAttr Rs1_data_in @attr n/c -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pinBusAttr Rs2_addr @attr n/c -pinBusAttr Rs2_addr_in @name Rs2_addr_in[4:0] -pinBusAttr Rs2_addr_in @attr n/c -pinBusAttr Rs2_data @name Rs2_data[31:0] -pinBusAttr Rs2_data @attr n/c -pinBusAttr Rs2_data_in @name Rs2_data_in[31:0] -pinBusAttr Rs2_data_in @attr n/c -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr byte_n_in @name byte_n_in[1:0] -pinBusAttr inst @name inst[31:0] -pinBusAttr inst @attr n/c -pinBusAttr inst_in @name inst_in[31:0] -pinBusAttr inst_in @attr n/c -pinBusAttr wea @name wea[3:0] -pinBusAttr wea_in @name wea_in[3:0] -pg 1 -lvl 10 -x 5450 -y 928
load inst U1|U0 PC_control work:PC_control:NOFILE -hier U1 -autohide -attr @cell(#000000) PC_control -attr @name U0 -pinBusAttr ID_PC @name ID_PC[31:0] -pinBusAttr PC @name PC[31:0] -pinBusAttr PC_jump @name PC_jump[31:0] -pinBusAttr PC_out @name PC_out[31:0] -pg 1 -lvl 7 -x 3110 -y 1238
load inst U1|U1 ImmGen work:ImmGen:NOFILE -hier U1 -autohide -attr @cell(#000000) ImmGen -attr @name U1 -pinBusAttr Imm @name Imm[31:0] -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr inst_field @name inst_field[31:0] -pg 1 -lvl 8 -x 3760 -y 108
load inst U1|U11 bubble work:bubble:NOFILE -hier U1 -autohide -attr @cell(#000000) bubble -attr @name U11 -pinBusAttr EX_wea_in @name EX_wea_in[3:0] -pinBusAttr EX_wea_in_temp @name EX_wea_in_temp[3:0] -pg 1 -lvl 8 -x 3760 -y 478
load inst U1|U2 Regs work:Regs:NOFILE -hier U1 -autohide -attr @cell(#000000) Regs -attr @name U2 -pinBusAttr Reg00 @name Reg00[31:0] -pinBusAttr Reg00 @attr n/c -pinBusAttr Reg01 @name Reg01[31:0] -pinBusAttr Reg01 @attr n/c -pinBusAttr Reg02 @name Reg02[31:0] -pinBusAttr Reg02 @attr n/c -pinBusAttr Reg03 @name Reg03[31:0] -pinBusAttr Reg03 @attr n/c -pinBusAttr Reg04 @name Reg04[31:0] -pinBusAttr Reg04 @attr n/c -pinBusAttr Reg05 @name Reg05[31:0] -pinBusAttr Reg05 @attr n/c -pinBusAttr Reg06 @name Reg06[31:0] -pinBusAttr Reg06 @attr n/c -pinBusAttr Reg07 @name Reg07[31:0] -pinBusAttr Reg07 @attr n/c -pinBusAttr Reg08 @name Reg08[31:0] -pinBusAttr Reg08 @attr n/c -pinBusAttr Reg09 @name Reg09[31:0] -pinBusAttr Reg09 @attr n/c -pinBusAttr Reg10 @name Reg10[31:0] -pinBusAttr Reg10 @attr n/c -pinBusAttr Reg11 @name Reg11[31:0] -pinBusAttr Reg11 @attr n/c -pinBusAttr Reg12 @name Reg12[31:0] -pinBusAttr Reg12 @attr n/c -pinBusAttr Reg13 @name Reg13[31:0] -pinBusAttr Reg13 @attr n/c -pinBusAttr Reg14 @name Reg14[31:0] -pinBusAttr Reg14 @attr n/c -pinBusAttr Reg15 @name Reg15[31:0] -pinBusAttr Reg15 @attr n/c -pinBusAttr Reg16 @name Reg16[31:0] -pinBusAttr Reg16 @attr n/c -pinBusAttr Reg17 @name Reg17[31:0] -pinBusAttr Reg17 @attr n/c -pinBusAttr Reg18 @name Reg18[31:0] -pinBusAttr Reg18 @attr n/c -pinBusAttr Reg19 @name Reg19[31:0] -pinBusAttr Reg19 @attr n/c -pinBusAttr Reg20 @name Reg20[31:0] -pinBusAttr Reg20 @attr n/c -pinBusAttr Reg21 @name Reg21[31:0] -pinBusAttr Reg21 @attr n/c -pinBusAttr Reg22 @name Reg22[31:0] -pinBusAttr Reg22 @attr n/c -pinBusAttr Reg23 @name Reg23[31:0] -pinBusAttr Reg23 @attr n/c -pinBusAttr Reg24 @name Reg24[31:0] -pinBusAttr Reg24 @attr n/c -pinBusAttr Reg25 @name Reg25[31:0] -pinBusAttr Reg25 @attr n/c -pinBusAttr Reg26 @name Reg26[31:0] -pinBusAttr Reg26 @attr n/c -pinBusAttr Reg27 @name Reg27[31:0] -pinBusAttr Reg27 @attr n/c -pinBusAttr Reg28 @name Reg28[31:0] -pinBusAttr Reg28 @attr n/c -pinBusAttr Reg29 @name Reg29[31:0] -pinBusAttr Reg29 @attr n/c -pinBusAttr Reg30 @name Reg30[31:0] -pinBusAttr Reg30 @attr n/c -pinBusAttr Reg31 @name Reg31[31:0] -pinBusAttr Reg31 @attr n/c -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs1_data @name Rs1_data[31:0] -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pinBusAttr Rs2_data @name Rs2_data[31:0] -pinBusAttr Wt_addr @name Wt_addr[4:0] -pinBusAttr Wt_data @name Wt_data[31:0] -pg 1 -lvl 8 -x 3760 -y 238
load inst U1|U3 ALU work:ALU:NOFILE -hier U1 -autohide -attr @cell(#000000) ALU -attr @name U3 -pinBusAttr A @name A[31:0] -pinBusAttr ALU_operation @name ALU_operation[3:0] -pinBusAttr B @name B[31:0] -pinBusAttr res @name res[31:0] -pg 1 -lvl 5 -x 2160 -y 1178
load inst U1|U4 extend work:extend:NOFILE -hier U1 -autohide -attr @cell(#000000) extend -attr @name U4 -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr in @name in[31:0] -pinBusAttr mem_data @name mem_data[31:0] -pg 1 -lvl 1 -x 260 -y 1598
load inst U1|U5 forwarding work:forwarding:NOFILE -hier U1 -autohide -attr @cell(#000000) forwarding -attr @name U5 -pinBusAttr EX_Data_out @name EX_Data_out[31:0] -pinBusAttr EX_Imm @name EX_Imm[31:0] -pinBusAttr EX_Rs1_addr @name EX_Rs1_addr[4:0] -pinBusAttr EX_Rs1_data @name EX_Rs1_data[31:0] -pinBusAttr EX_Rs2_addr @name EX_Rs2_addr[4:0] -pinBusAttr EX_Rs2_data @name EX_Rs2_data[31:0] -pinBusAttr MEM_Data_out_in @name MEM_Data_out_in[31:0] -pinBusAttr MEM_Rd_addr @name MEM_Rd_addr[4:0] -pinBusAttr MEM_Rd_data @name MEM_Rd_data[31:0] -pinBusAttr WB_Rd_addr @name WB_Rd_addr[4:0] -pinBusAttr WB_Rd_data @name WB_Rd_data[31:0] -pinBusAttr adder_1 @name adder_1[31:0] -pinBusAttr adder_2 @name adder_2[31:0] -pg 1 -lvl 4 -x 1660 -y 938
load inst U1|U6 load_hazard work:load_hazard:NOFILE -hier U1 -autohide -attr @cell(#000000) load_hazard -attr @name U6 -pinBusAttr EX_MemtoReg @name EX_MemtoReg[1:0] -pinBusAttr EX_Rd_addr @name EX_Rd_addr[4:0] -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pg 1 -lvl 6 -x 2630 -y 838
load inst U1|U7 PC_choose work:PC_choose:NOFILE -hier U1 -autohide -attr @cell(#000000) PC_choose -attr @name U7 -pinBusAttr ALU_out @name ALU_out[31:0] -pinBusAttr EX_Imm @name EX_Imm[31:0] -pinBusAttr EX_PC @name EX_PC[31:0] -pinBusAttr PC_jump @name PC_jump[31:0] -pg 1 -lvl 6 -x 2630 -y 1158
load inst U1|U8 Rd_choose work:Rd_choose:NOFILE -hier U1 -autohide -attr @cell(#000000) Rd_choose -attr @name U8 -pinBusAttr ALU_out @name ALU_out[31:0] -pinBusAttr EX_Imm @name EX_Imm[31:0] -pinBusAttr EX_MemtoReg @name EX_MemtoReg[1:0] -pinBusAttr EX_PC @name EX_PC[31:0] -pinBusAttr MEM_MemtoReg @name MEM_MemtoReg[1:0] -pinBusAttr MEM_Rd_data @name MEM_Rd_data[31:0] -pinBusAttr MEM_Rd_data_in @name MEM_Rd_data_in[31:0] -pinBusAttr WB_Rd_data_in @name WB_Rd_data_in[31:0] -pinBusAttr mem_out @name mem_out[31:0] -pg 1 -lvl 2 -x 670 -y 1358
load inst U1|U9 RAM_shift work:RAM_shift:NOFILE -hier U1 -autohide -attr @cell(#000000) RAM_shift -attr @name U9 -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Data_in @name Data_in[31:0] -pinBusAttr Data_in_shift @name Data_in_shift[31:0] -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr MEM_Addr_out @name MEM_Addr_out[31:0] -pinBusAttr MEM_Data_out @name MEM_Data_out[31:0] -pinBusAttr MEM_wea @name MEM_wea[3:0] -pinBusAttr wea @name wea[3:0] -pg 1 -lvl 11 -x 6090 -y 1388
load inst U1|WB_PipelineReg PipelineReg work:abstract:NOFILE -hier U1 -autohide -attr @cell(#000000) PipelineReg -attr @name WB_PipelineReg -pinAttr ALUSrc_B @attr n/c -pinAttr ALUSrc_B_in @attr n/c -pinAttr Branch @attr n/c -pinAttr Branch_in @attr n/c -pinAttr Jump @attr n/c -pinAttr Jump_in @attr n/c -pinAttr jump_choose @attr n/c -pinAttr jump_choose_in @attr n/c -pinAttr sign @attr n/c -pinAttr sign_in @attr n/c -pinBusAttr ALU_Control @name ALU_Control[3:0] -pinBusAttr ALU_Control @attr n/c -pinBusAttr ALU_Control_in @name ALU_Control_in[3:0] -pinBusAttr ALU_Control_in @attr n/c -pinBusAttr Addr_out @name Addr_out[31:0] -pinBusAttr Addr_out @attr n/c -pinBusAttr Addr_out_in @name Addr_out_in[31:0] -pinBusAttr Addr_out_in @attr n/c -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr Data_out @attr n/c -pinBusAttr Data_out_in @name Data_out_in[31:0] -pinBusAttr Data_out_in @attr n/c -pinBusAttr Imm @name Imm[31:0] -pinBusAttr Imm @attr n/c -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr ImmSell @attr n/c -pinBusAttr ImmSell_in @name ImmSell_in[2:0] -pinBusAttr ImmSell_in @attr n/c -pinBusAttr Imm_in @name Imm_in[31:0] -pinBusAttr Imm_in @attr n/c -pinBusAttr MemtoReg @name MemtoReg[1:0] -pinBusAttr MemtoReg @attr n/c -pinBusAttr MemtoReg_in @name MemtoReg_in[1:0] -pinBusAttr MemtoReg_in @attr n/c -pinBusAttr PC @name PC[31:0] -pinBusAttr PC @attr n/c -pinBusAttr PC_in @name PC_in[31:0] -pinBusAttr Rd_addr @name Rd_addr[4:0] -pinBusAttr Rd_addr_in @name Rd_addr_in[4:0] -pinBusAttr Rd_data @name Rd_data[31:0] -pinBusAttr Rd_data_in @name Rd_data_in[31:0] -pinBusAttr Rs1_addr @name Rs1_addr[4:0] -pinBusAttr Rs1_addr @attr n/c -pinBusAttr Rs1_addr_in @name Rs1_addr_in[4:0] -pinBusAttr Rs1_addr_in @attr n/c -pinBusAttr Rs1_data @name Rs1_data[31:0] -pinBusAttr Rs1_data @attr n/c -pinBusAttr Rs1_data_in @name Rs1_data_in[31:0] -pinBusAttr Rs1_data_in @attr n/c -pinBusAttr Rs2_addr @name Rs2_addr[4:0] -pinBusAttr Rs2_addr @attr n/c -pinBusAttr Rs2_addr_in @name Rs2_addr_in[4:0] -pinBusAttr Rs2_addr_in @attr n/c -pinBusAttr Rs2_data @name Rs2_data[31:0] -pinBusAttr Rs2_data @attr n/c -pinBusAttr Rs2_data_in @name Rs2_data_in[31:0] -pinBusAttr Rs2_data_in @attr n/c -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr byte_n @attr n/c -pinBusAttr byte_n_in @name byte_n_in[1:0] -pinBusAttr byte_n_in @attr n/c -pinBusAttr inst @name inst[31:0] -pinBusAttr inst @attr n/c -pinBusAttr inst_in @name inst_in[31:0] -pinBusAttr inst_in @attr n/c -pinBusAttr wea @name wea[3:0] -pinBusAttr wea @attr n/c -pinBusAttr wea_in @name wea_in[3:0] -pinBusAttr wea_in @attr n/c -pg 1 -lvl 3 -x 1100 -y 1538
load inst U1|clk0_i RTL_INV work -hier U1 -autohide -attr @cell(#000000) RTL_INV -attr @name clk0_i -pg 1 -lvl 2 -x 670 -y 1648
load inst U1|v1 Controler work:Controler:NOFILE -hier U1 -autohide -attr @cell(#000000) Controler -attr @name v1 -pinAttr CPU_MIO @attr n/c -pinAttr MIO_ready @attr n/c -pinBusAttr ALU_Control @name ALU_Control[3:0] -pinBusAttr Fun3 @name Fun3[2:0] -pinBusAttr Fun7 @name Fun7[6:0] -pinBusAttr ImmSell @name ImmSell[2:0] -pinBusAttr MemtoReg @name MemtoReg[1:0] -pinBusAttr OPcode @name OPcode[4:0] -pinBusAttr byte_n @name byte_n[1:0] -pinBusAttr wea @name wea[3:0] -pg 1 -lvl 7 -x 3110 -y 438
load inst U1|PC_reg[31:0] RTL_REG_ASYNC__BREG_2 work[31:0]ssww -hier U1 -autohide -attr @cell(#000000) RTL_REG_ASYNC -attr @name PC_reg[31:0] -pg 1 -lvl 11 -x 6090 -y 1278
load net U1|<const1> -power -attr @name <const1> -pin U1|U1 sign
load net U1|Addr_out[0] -attr @rip(#000000) Addr_out[0] -attr @name Addr_out[0] -hierPin U1 Addr_out[0] -pin U1|U9 Addr_out[0]
load net U1|Addr_out[10] -attr @rip(#000000) Addr_out[10] -attr @name Addr_out[10] -hierPin U1 Addr_out[10] -pin U1|U9 Addr_out[10]
load net U1|Addr_out[11] -attr @rip(#000000) Addr_out[11] -attr @name Addr_out[11] -hierPin U1 Addr_out[11] -pin U1|U9 Addr_out[11]
load net U1|Addr_out[12] -attr @rip(#000000) Addr_out[12] -attr @name Addr_out[12] -hierPin U1 Addr_out[12] -pin U1|U9 Addr_out[12]
load net U1|Addr_out[13] -attr @rip(#000000) Addr_out[13] -attr @name Addr_out[13] -hierPin U1 Addr_out[13] -pin U1|U9 Addr_out[13]
load net U1|Addr_out[14] -attr @rip(#000000) Addr_out[14] -attr @name Addr_out[14] -hierPin U1 Addr_out[14] -pin U1|U9 Addr_out[14]
load net U1|Addr_out[15] -attr @rip(#000000) Addr_out[15] -attr @name Addr_out[15] -hierPin U1 Addr_out[15] -pin U1|U9 Addr_out[15]
load net U1|Addr_out[16] -attr @rip(#000000) Addr_out[16] -attr @name Addr_out[16] -hierPin U1 Addr_out[16] -pin U1|U9 Addr_out[16]
load net U1|Addr_out[17] -attr @rip(#000000) Addr_out[17] -attr @name Addr_out[17] -hierPin U1 Addr_out[17] -pin U1|U9 Addr_out[17]
load net U1|Addr_out[18] -attr @rip(#000000) Addr_out[18] -attr @name Addr_out[18] -hierPin U1 Addr_out[18] -pin U1|U9 Addr_out[18]
load net U1|Addr_out[19] -attr @rip(#000000) Addr_out[19] -attr @name Addr_out[19] -hierPin U1 Addr_out[19] -pin U1|U9 Addr_out[19]
load net U1|Addr_out[1] -attr @rip(#000000) Addr_out[1] -attr @name Addr_out[1] -hierPin U1 Addr_out[1] -pin U1|U9 Addr_out[1]
load net U1|Addr_out[20] -attr @rip(#000000) Addr_out[20] -attr @name Addr_out[20] -hierPin U1 Addr_out[20] -pin U1|U9 Addr_out[20]
load net U1|Addr_out[21] -attr @rip(#000000) Addr_out[21] -attr @name Addr_out[21] -hierPin U1 Addr_out[21] -pin U1|U9 Addr_out[21]
load net U1|Addr_out[22] -attr @rip(#000000) Addr_out[22] -attr @name Addr_out[22] -hierPin U1 Addr_out[22] -pin U1|U9 Addr_out[22]
load net U1|Addr_out[23] -attr @rip(#000000) Addr_out[23] -attr @name Addr_out[23] -hierPin U1 Addr_out[23] -pin U1|U9 Addr_out[23]
load net U1|Addr_out[24] -attr @rip(#000000) Addr_out[24] -attr @name Addr_out[24] -hierPin U1 Addr_out[24] -pin U1|U9 Addr_out[24]
load net U1|Addr_out[25] -attr @rip(#000000) Addr_out[25] -attr @name Addr_out[25] -hierPin U1 Addr_out[25] -pin U1|U9 Addr_out[25]
load net U1|Addr_out[26] -attr @rip(#000000) Addr_out[26] -attr @name Addr_out[26] -hierPin U1 Addr_out[26] -pin U1|U9 Addr_out[26]
load net U1|Addr_out[27] -attr @rip(#000000) Addr_out[27] -attr @name Addr_out[27] -hierPin U1 Addr_out[27] -pin U1|U9 Addr_out[27]
load net U1|Addr_out[28] -attr @rip(#000000) Addr_out[28] -attr @name Addr_out[28] -hierPin U1 Addr_out[28] -pin U1|U9 Addr_out[28]
load net U1|Addr_out[29] -attr @rip(#000000) Addr_out[29] -attr @name Addr_out[29] -hierPin U1 Addr_out[29] -pin U1|U9 Addr_out[29]
load net U1|Addr_out[2] -attr @rip(#000000) Addr_out[2] -attr @name Addr_out[2] -hierPin U1 Addr_out[2] -pin U1|U9 Addr_out[2]
load net U1|Addr_out[30] -attr @rip(#000000) Addr_out[30] -attr @name Addr_out[30] -hierPin U1 Addr_out[30] -pin U1|U9 Addr_out[30]
load net U1|Addr_out[31] -attr @rip(#000000) Addr_out[31] -attr @name Addr_out[31] -hierPin U1 Addr_out[31] -pin U1|U9 Addr_out[31]
load net U1|Addr_out[3] -attr @rip(#000000) Addr_out[3] -attr @name Addr_out[3] -hierPin U1 Addr_out[3] -pin U1|U9 Addr_out[3]
load net U1|Addr_out[4] -attr @rip(#000000) Addr_out[4] -attr @name Addr_out[4] -hierPin U1 Addr_out[4] -pin U1|U9 Addr_out[4]
load net U1|Addr_out[5] -attr @rip(#000000) Addr_out[5] -attr @name Addr_out[5] -hierPin U1 Addr_out[5] -pin U1|U9 Addr_out[5]
load net U1|Addr_out[6] -attr @rip(#000000) Addr_out[6] -attr @name Addr_out[6] -hierPin U1 Addr_out[6] -pin U1|U9 Addr_out[6]
load net U1|Addr_out[7] -attr @rip(#000000) Addr_out[7] -attr @name Addr_out[7] -hierPin U1 Addr_out[7] -pin U1|U9 Addr_out[7]
load net U1|Addr_out[8] -attr @rip(#000000) Addr_out[8] -attr @name Addr_out[8] -hierPin U1 Addr_out[8] -pin U1|U9 Addr_out[8]
load net U1|Addr_out[9] -attr @rip(#000000) Addr_out[9] -attr @name Addr_out[9] -hierPin U1 Addr_out[9] -pin U1|U9 Addr_out[9]
load net U1|Data_in[0] -attr @rip(#000000) Data_in[0] -attr @name Data_in[0] -hierPin U1 Data_in[0] -pin U1|U9 Data_in[0]
load net U1|Data_in[10] -attr @rip(#000000) Data_in[10] -attr @name Data_in[10] -hierPin U1 Data_in[10] -pin U1|U9 Data_in[10]
load net U1|Data_in[11] -attr @rip(#000000) Data_in[11] -attr @name Data_in[11] -hierPin U1 Data_in[11] -pin U1|U9 Data_in[11]
load net U1|Data_in[12] -attr @rip(#000000) Data_in[12] -attr @name Data_in[12] -hierPin U1 Data_in[12] -pin U1|U9 Data_in[12]
load net U1|Data_in[13] -attr @rip(#000000) Data_in[13] -attr @name Data_in[13] -hierPin U1 Data_in[13] -pin U1|U9 Data_in[13]
load net U1|Data_in[14] -attr @rip(#000000) Data_in[14] -attr @name Data_in[14] -hierPin U1 Data_in[14] -pin U1|U9 Data_in[14]
load net U1|Data_in[15] -attr @rip(#000000) Data_in[15] -attr @name Data_in[15] -hierPin U1 Data_in[15] -pin U1|U9 Data_in[15]
load net U1|Data_in[16] -attr @rip(#000000) Data_in[16] -attr @name Data_in[16] -hierPin U1 Data_in[16] -pin U1|U9 Data_in[16]
load net U1|Data_in[17] -attr @rip(#000000) Data_in[17] -attr @name Data_in[17] -hierPin U1 Data_in[17] -pin U1|U9 Data_in[17]
load net U1|Data_in[18] -attr @rip(#000000) Data_in[18] -attr @name Data_in[18] -hierPin U1 Data_in[18] -pin U1|U9 Data_in[18]
load net U1|Data_in[19] -attr @rip(#000000) Data_in[19] -attr @name Data_in[19] -hierPin U1 Data_in[19] -pin U1|U9 Data_in[19]
load net U1|Data_in[1] -attr @rip(#000000) Data_in[1] -attr @name Data_in[1] -hierPin U1 Data_in[1] -pin U1|U9 Data_in[1]
load net U1|Data_in[20] -attr @rip(#000000) Data_in[20] -attr @name Data_in[20] -hierPin U1 Data_in[20] -pin U1|U9 Data_in[20]
load net U1|Data_in[21] -attr @rip(#000000) Data_in[21] -attr @name Data_in[21] -hierPin U1 Data_in[21] -pin U1|U9 Data_in[21]
load net U1|Data_in[22] -attr @rip(#000000) Data_in[22] -attr @name Data_in[22] -hierPin U1 Data_in[22] -pin U1|U9 Data_in[22]
load net U1|Data_in[23] -attr @rip(#000000) Data_in[23] -attr @name Data_in[23] -hierPin U1 Data_in[23] -pin U1|U9 Data_in[23]
load net U1|Data_in[24] -attr @rip(#000000) Data_in[24] -attr @name Data_in[24] -hierPin U1 Data_in[24] -pin U1|U9 Data_in[24]
load net U1|Data_in[25] -attr @rip(#000000) Data_in[25] -attr @name Data_in[25] -hierPin U1 Data_in[25] -pin U1|U9 Data_in[25]
load net U1|Data_in[26] -attr @rip(#000000) Data_in[26] -attr @name Data_in[26] -hierPin U1 Data_in[26] -pin U1|U9 Data_in[26]
load net U1|Data_in[27] -attr @rip(#000000) Data_in[27] -attr @name Data_in[27] -hierPin U1 Data_in[27] -pin U1|U9 Data_in[27]
load net U1|Data_in[28] -attr @rip(#000000) Data_in[28] -attr @name Data_in[28] -hierPin U1 Data_in[28] -pin U1|U9 Data_in[28]
load net U1|Data_in[29] -attr @rip(#000000) Data_in[29] -attr @name Data_in[29] -hierPin U1 Data_in[29] -pin U1|U9 Data_in[29]
load net U1|Data_in[2] -attr @rip(#000000) Data_in[2] -attr @name Data_in[2] -hierPin U1 Data_in[2] -pin U1|U9 Data_in[2]
load net U1|Data_in[30] -attr @rip(#000000) Data_in[30] -attr @name Data_in[30] -hierPin U1 Data_in[30] -pin U1|U9 Data_in[30]
load net U1|Data_in[31] -attr @rip(#000000) Data_in[31] -attr @name Data_in[31] -hierPin U1 Data_in[31] -pin U1|U9 Data_in[31]
load net U1|Data_in[3] -attr @rip(#000000) Data_in[3] -attr @name Data_in[3] -hierPin U1 Data_in[3] -pin U1|U9 Data_in[3]
load net U1|Data_in[4] -attr @rip(#000000) Data_in[4] -attr @name Data_in[4] -hierPin U1 Data_in[4] -pin U1|U9 Data_in[4]
load net U1|Data_in[5] -attr @rip(#000000) Data_in[5] -attr @name Data_in[5] -hierPin U1 Data_in[5] -pin U1|U9 Data_in[5]
load net U1|Data_in[6] -attr @rip(#000000) Data_in[6] -attr @name Data_in[6] -hierPin U1 Data_in[6] -pin U1|U9 Data_in[6]
load net U1|Data_in[7] -attr @rip(#000000) Data_in[7] -attr @name Data_in[7] -hierPin U1 Data_in[7] -pin U1|U9 Data_in[7]
load net U1|Data_in[8] -attr @rip(#000000) Data_in[8] -attr @name Data_in[8] -hierPin U1 Data_in[8] -pin U1|U9 Data_in[8]
load net U1|Data_in[9] -attr @rip(#000000) Data_in[9] -attr @name Data_in[9] -hierPin U1 Data_in[9] -pin U1|U9 Data_in[9]
load net U1|Data_in_shift[0] -attr @rip(#000000) Data_in_shift[0] -attr @name Data_in_shift[0] -pin U1|U4 in[0] -pin U1|U9 Data_in_shift[0]
load net U1|Data_in_shift[10] -attr @rip(#000000) Data_in_shift[10] -attr @name Data_in_shift[10] -pin U1|U4 in[10] -pin U1|U9 Data_in_shift[10]
load net U1|Data_in_shift[11] -attr @rip(#000000) Data_in_shift[11] -attr @name Data_in_shift[11] -pin U1|U4 in[11] -pin U1|U9 Data_in_shift[11]
load net U1|Data_in_shift[12] -attr @rip(#000000) Data_in_shift[12] -attr @name Data_in_shift[12] -pin U1|U4 in[12] -pin U1|U9 Data_in_shift[12]
load net U1|Data_in_shift[13] -attr @rip(#000000) Data_in_shift[13] -attr @name Data_in_shift[13] -pin U1|U4 in[13] -pin U1|U9 Data_in_shift[13]
load net U1|Data_in_shift[14] -attr @rip(#000000) Data_in_shift[14] -attr @name Data_in_shift[14] -pin U1|U4 in[14] -pin U1|U9 Data_in_shift[14]
load net U1|Data_in_shift[15] -attr @rip(#000000) Data_in_shift[15] -attr @name Data_in_shift[15] -pin U1|U4 in[15] -pin U1|U9 Data_in_shift[15]
load net U1|Data_in_shift[16] -attr @rip(#000000) Data_in_shift[16] -attr @name Data_in_shift[16] -pin U1|U4 in[16] -pin U1|U9 Data_in_shift[16]
load net U1|Data_in_shift[17] -attr @rip(#000000) Data_in_shift[17] -attr @name Data_in_shift[17] -pin U1|U4 in[17] -pin U1|U9 Data_in_shift[17]
load net U1|Data_in_shift[18] -attr @rip(#000000) Data_in_shift[18] -attr @name Data_in_shift[18] -pin U1|U4 in[18] -pin U1|U9 Data_in_shift[18]
load net U1|Data_in_shift[19] -attr @rip(#000000) Data_in_shift[19] -attr @name Data_in_shift[19] -pin U1|U4 in[19] -pin U1|U9 Data_in_shift[19]
load net U1|Data_in_shift[1] -attr @rip(#000000) Data_in_shift[1] -attr @name Data_in_shift[1] -pin U1|U4 in[1] -pin U1|U9 Data_in_shift[1]
load net U1|Data_in_shift[20] -attr @rip(#000000) Data_in_shift[20] -attr @name Data_in_shift[20] -pin U1|U4 in[20] -pin U1|U9 Data_in_shift[20]
load net U1|Data_in_shift[21] -attr @rip(#000000) Data_in_shift[21] -attr @name Data_in_shift[21] -pin U1|U4 in[21] -pin U1|U9 Data_in_shift[21]
load net U1|Data_in_shift[22] -attr @rip(#000000) Data_in_shift[22] -attr @name Data_in_shift[22] -pin U1|U4 in[22] -pin U1|U9 Data_in_shift[22]
load net U1|Data_in_shift[23] -attr @rip(#000000) Data_in_shift[23] -attr @name Data_in_shift[23] -pin U1|U4 in[23] -pin U1|U9 Data_in_shift[23]
load net U1|Data_in_shift[24] -attr @rip(#000000) Data_in_shift[24] -attr @name Data_in_shift[24] -pin U1|U4 in[24] -pin U1|U9 Data_in_shift[24]
load net U1|Data_in_shift[25] -attr @rip(#000000) Data_in_shift[25] -attr @name Data_in_shift[25] -pin U1|U4 in[25] -pin U1|U9 Data_in_shift[25]
load net U1|Data_in_shift[26] -attr @rip(#000000) Data_in_shift[26] -attr @name Data_in_shift[26] -pin U1|U4 in[26] -pin U1|U9 Data_in_shift[26]
load net U1|Data_in_shift[27] -attr @rip(#000000) Data_in_shift[27] -attr @name Data_in_shift[27] -pin U1|U4 in[27] -pin U1|U9 Data_in_shift[27]
load net U1|Data_in_shift[28] -attr @rip(#000000) Data_in_shift[28] -attr @name Data_in_shift[28] -pin U1|U4 in[28] -pin U1|U9 Data_in_shift[28]
load net U1|Data_in_shift[29] -attr @rip(#000000) Data_in_shift[29] -attr @name Data_in_shift[29] -pin U1|U4 in[29] -pin U1|U9 Data_in_shift[29]
load net U1|Data_in_shift[2] -attr @rip(#000000) Data_in_shift[2] -attr @name Data_in_shift[2] -pin U1|U4 in[2] -pin U1|U9 Data_in_shift[2]
load net U1|Data_in_shift[30] -attr @rip(#000000) Data_in_shift[30] -attr @name Data_in_shift[30] -pin U1|U4 in[30] -pin U1|U9 Data_in_shift[30]
load net U1|Data_in_shift[31] -attr @rip(#000000) Data_in_shift[31] -attr @name Data_in_shift[31] -pin U1|U4 in[31] -pin U1|U9 Data_in_shift[31]
load net U1|Data_in_shift[3] -attr @rip(#000000) Data_in_shift[3] -attr @name Data_in_shift[3] -pin U1|U4 in[3] -pin U1|U9 Data_in_shift[3]
load net U1|Data_in_shift[4] -attr @rip(#000000) Data_in_shift[4] -attr @name Data_in_shift[4] -pin U1|U4 in[4] -pin U1|U9 Data_in_shift[4]
load net U1|Data_in_shift[5] -attr @rip(#000000) Data_in_shift[5] -attr @name Data_in_shift[5] -pin U1|U4 in[5] -pin U1|U9 Data_in_shift[5]
load net U1|Data_in_shift[6] -attr @rip(#000000) Data_in_shift[6] -attr @name Data_in_shift[6] -pin U1|U4 in[6] -pin U1|U9 Data_in_shift[6]
load net U1|Data_in_shift[7] -attr @rip(#000000) Data_in_shift[7] -attr @name Data_in_shift[7] -pin U1|U4 in[7] -pin U1|U9 Data_in_shift[7]
load net U1|Data_in_shift[8] -attr @rip(#000000) Data_in_shift[8] -attr @name Data_in_shift[8] -pin U1|U4 in[8] -pin U1|U9 Data_in_shift[8]
load net U1|Data_in_shift[9] -attr @rip(#000000) Data_in_shift[9] -attr @name Data_in_shift[9] -pin U1|U4 in[9] -pin U1|U9 Data_in_shift[9]
load net U1|Data_out[0] -attr @rip(#000000) Data_out[0] -attr @name Data_out[0] -hierPin U1 Data_out[0] -pin U1|U9 Data_out[0]
load net U1|Data_out[10] -attr @rip(#000000) Data_out[10] -attr @name Data_out[10] -hierPin U1 Data_out[10] -pin U1|U9 Data_out[10]
load net U1|Data_out[11] -attr @rip(#000000) Data_out[11] -attr @name Data_out[11] -hierPin U1 Data_out[11] -pin U1|U9 Data_out[11]
load net U1|Data_out[12] -attr @rip(#000000) Data_out[12] -attr @name Data_out[12] -hierPin U1 Data_out[12] -pin U1|U9 Data_out[12]
load net U1|Data_out[13] -attr @rip(#000000) Data_out[13] -attr @name Data_out[13] -hierPin U1 Data_out[13] -pin U1|U9 Data_out[13]
load net U1|Data_out[14] -attr @rip(#000000) Data_out[14] -attr @name Data_out[14] -hierPin U1 Data_out[14] -pin U1|U9 Data_out[14]
load net U1|Data_out[15] -attr @rip(#000000) Data_out[15] -attr @name Data_out[15] -hierPin U1 Data_out[15] -pin U1|U9 Data_out[15]
load net U1|Data_out[16] -attr @rip(#000000) Data_out[16] -attr @name Data_out[16] -hierPin U1 Data_out[16] -pin U1|U9 Data_out[16]
load net U1|Data_out[17] -attr @rip(#000000) Data_out[17] -attr @name Data_out[17] -hierPin U1 Data_out[17] -pin U1|U9 Data_out[17]
load net U1|Data_out[18] -attr @rip(#000000) Data_out[18] -attr @name Data_out[18] -hierPin U1 Data_out[18] -pin U1|U9 Data_out[18]
load net U1|Data_out[19] -attr @rip(#000000) Data_out[19] -attr @name Data_out[19] -hierPin U1 Data_out[19] -pin U1|U9 Data_out[19]
load net U1|Data_out[1] -attr @rip(#000000) Data_out[1] -attr @name Data_out[1] -hierPin U1 Data_out[1] -pin U1|U9 Data_out[1]
load net U1|Data_out[20] -attr @rip(#000000) Data_out[20] -attr @name Data_out[20] -hierPin U1 Data_out[20] -pin U1|U9 Data_out[20]
load net U1|Data_out[21] -attr @rip(#000000) Data_out[21] -attr @name Data_out[21] -hierPin U1 Data_out[21] -pin U1|U9 Data_out[21]
load net U1|Data_out[22] -attr @rip(#000000) Data_out[22] -attr @name Data_out[22] -hierPin U1 Data_out[22] -pin U1|U9 Data_out[22]
load net U1|Data_out[23] -attr @rip(#000000) Data_out[23] -attr @name Data_out[23] -hierPin U1 Data_out[23] -pin U1|U9 Data_out[23]
load net U1|Data_out[24] -attr @rip(#000000) Data_out[24] -attr @name Data_out[24] -hierPin U1 Data_out[24] -pin U1|U9 Data_out[24]
load net U1|Data_out[25] -attr @rip(#000000) Data_out[25] -attr @name Data_out[25] -hierPin U1 Data_out[25] -pin U1|U9 Data_out[25]
load net U1|Data_out[26] -attr @rip(#000000) Data_out[26] -attr @name Data_out[26] -hierPin U1 Data_out[26] -pin U1|U9 Data_out[26]
load net U1|Data_out[27] -attr @rip(#000000) Data_out[27] -attr @name Data_out[27] -hierPin U1 Data_out[27] -pin U1|U9 Data_out[27]
load net U1|Data_out[28] -attr @rip(#000000) Data_out[28] -attr @name Data_out[28] -hierPin U1 Data_out[28] -pin U1|U9 Data_out[28]
load net U1|Data_out[29] -attr @rip(#000000) Data_out[29] -attr @name Data_out[29] -hierPin U1 Data_out[29] -pin U1|U9 Data_out[29]
load net U1|Data_out[2] -attr @rip(#000000) Data_out[2] -attr @name Data_out[2] -hierPin U1 Data_out[2] -pin U1|U9 Data_out[2]
load net U1|Data_out[30] -attr @rip(#000000) Data_out[30] -attr @name Data_out[30] -hierPin U1 Data_out[30] -pin U1|U9 Data_out[30]
load net U1|Data_out[31] -attr @rip(#000000) Data_out[31] -attr @name Data_out[31] -hierPin U1 Data_out[31] -pin U1|U9 Data_out[31]
load net U1|Data_out[3] -attr @rip(#000000) Data_out[3] -attr @name Data_out[3] -hierPin U1 Data_out[3] -pin U1|U9 Data_out[3]
load net U1|Data_out[4] -attr @rip(#000000) Data_out[4] -attr @name Data_out[4] -hierPin U1 Data_out[4] -pin U1|U9 Data_out[4]
load net U1|Data_out[5] -attr @rip(#000000) Data_out[5] -attr @name Data_out[5] -hierPin U1 Data_out[5] -pin U1|U9 Data_out[5]
load net U1|Data_out[6] -attr @rip(#000000) Data_out[6] -attr @name Data_out[6] -hierPin U1 Data_out[6] -pin U1|U9 Data_out[6]
load net U1|Data_out[7] -attr @rip(#000000) Data_out[7] -attr @name Data_out[7] -hierPin U1 Data_out[7] -pin U1|U9 Data_out[7]
load net U1|Data_out[8] -attr @rip(#000000) Data_out[8] -attr @name Data_out[8] -hierPin U1 Data_out[8] -pin U1|U9 Data_out[8]
load net U1|Data_out[9] -attr @rip(#000000) Data_out[9] -attr @name Data_out[9] -hierPin U1 Data_out[9] -pin U1|U9 Data_out[9]
load net U1|EX_ALUSrc_B -attr @name EX_ALUSrc_B -pin U1|EX_PipelineReg ALUSrc_B -pin U1|U5 EX_ALUSrc_B
netloc U1|EX_ALUSrc_B 1 3 7 1270 608 NJ 608 NJ 608 2990J 708 NJ 708 4440J 788 5000
load net U1|EX_ALUSrc_B_in -attr @name EX_ALUSrc_B_in -pin U1|EX_PipelineReg ALUSrc_B_in -pin U1|v1 ALUSrc_B
netloc U1|EX_ALUSrc_B_in 1 7 2 3300J 38 4440
load net U1|EX_ALU_Control[0] -attr @rip(#000000) ALU_Control[0] -attr @name EX_ALU_Control[0] -pin U1|EX_PipelineReg ALU_Control[0] -pin U1|U3 ALU_operation[0]
load net U1|EX_ALU_Control[1] -attr @rip(#000000) ALU_Control[1] -attr @name EX_ALU_Control[1] -pin U1|EX_PipelineReg ALU_Control[1] -pin U1|U3 ALU_operation[1]
load net U1|EX_ALU_Control[2] -attr @rip(#000000) ALU_Control[2] -attr @name EX_ALU_Control[2] -pin U1|EX_PipelineReg ALU_Control[2] -pin U1|U3 ALU_operation[2]
load net U1|EX_ALU_Control[3] -attr @rip(#000000) ALU_Control[3] -attr @name EX_ALU_Control[3] -pin U1|EX_PipelineReg ALU_Control[3] -pin U1|U3 ALU_operation[3]
load net U1|EX_ALU_Control_in[0] -attr @rip(#000000) ALU_Control[0] -attr @name EX_ALU_Control_in[0] -pin U1|EX_PipelineReg ALU_Control_in[0] -pin U1|v1 ALU_Control[0]
load net U1|EX_ALU_Control_in[1] -attr @rip(#000000) ALU_Control[1] -attr @name EX_ALU_Control_in[1] -pin U1|EX_PipelineReg ALU_Control_in[1] -pin U1|v1 ALU_Control[1]
load net U1|EX_ALU_Control_in[2] -attr @rip(#000000) ALU_Control[2] -attr @name EX_ALU_Control_in[2] -pin U1|EX_PipelineReg ALU_Control_in[2] -pin U1|v1 ALU_Control[2]
load net U1|EX_ALU_Control_in[3] -attr @rip(#000000) ALU_Control[3] -attr @name EX_ALU_Control_in[3] -pin U1|EX_PipelineReg ALU_Control_in[3] -pin U1|v1 ALU_Control[3]
load net U1|EX_Branch -attr @name EX_Branch -pin U1|EX_PipelineReg Branch -pin U1|U7 EX_Branch
netloc U1|EX_Branch 1 5 5 2450 1028 NJ 1028 NJ 1028 4030J 1088 4920
load net U1|EX_Branch_in -attr @name EX_Branch_in -pin U1|EX_PipelineReg Branch_in -pin U1|U11 EX_Branch_in
netloc U1|EX_Branch_in 1 8 1 4160 328n
load net U1|EX_Branch_in_temp -attr @name EX_Branch_in_temp -pin U1|U11 EX_Branch_in_temp -pin U1|v1 Branch
netloc U1|EX_Branch_in_temp 1 7 1 N 488
load net U1|EX_Data_out[0] -attr @rip(#000000) Data_out[0] -attr @name EX_Data_out[0] -pin U1|EX_PipelineReg Data_out[0] -pin U1|U5 EX_Data_out[0]
load net U1|EX_Data_out[10] -attr @rip(#000000) Data_out[10] -attr @name EX_Data_out[10] -pin U1|EX_PipelineReg Data_out[10] -pin U1|U5 EX_Data_out[10]
load net U1|EX_Data_out[11] -attr @rip(#000000) Data_out[11] -attr @name EX_Data_out[11] -pin U1|EX_PipelineReg Data_out[11] -pin U1|U5 EX_Data_out[11]
load net U1|EX_Data_out[12] -attr @rip(#000000) Data_out[12] -attr @name EX_Data_out[12] -pin U1|EX_PipelineReg Data_out[12] -pin U1|U5 EX_Data_out[12]
load net U1|EX_Data_out[13] -attr @rip(#000000) Data_out[13] -attr @name EX_Data_out[13] -pin U1|EX_PipelineReg Data_out[13] -pin U1|U5 EX_Data_out[13]
load net U1|EX_Data_out[14] -attr @rip(#000000) Data_out[14] -attr @name EX_Data_out[14] -pin U1|EX_PipelineReg Data_out[14] -pin U1|U5 EX_Data_out[14]
load net U1|EX_Data_out[15] -attr @rip(#000000) Data_out[15] -attr @name EX_Data_out[15] -pin U1|EX_PipelineReg Data_out[15] -pin U1|U5 EX_Data_out[15]
load net U1|EX_Data_out[16] -attr @rip(#000000) Data_out[16] -attr @name EX_Data_out[16] -pin U1|EX_PipelineReg Data_out[16] -pin U1|U5 EX_Data_out[16]
load net U1|EX_Data_out[17] -attr @rip(#000000) Data_out[17] -attr @name EX_Data_out[17] -pin U1|EX_PipelineReg Data_out[17] -pin U1|U5 EX_Data_out[17]
load net U1|EX_Data_out[18] -attr @rip(#000000) Data_out[18] -attr @name EX_Data_out[18] -pin U1|EX_PipelineReg Data_out[18] -pin U1|U5 EX_Data_out[18]
load net U1|EX_Data_out[19] -attr @rip(#000000) Data_out[19] -attr @name EX_Data_out[19] -pin U1|EX_PipelineReg Data_out[19] -pin U1|U5 EX_Data_out[19]
load net U1|EX_Data_out[1] -attr @rip(#000000) Data_out[1] -attr @name EX_Data_out[1] -pin U1|EX_PipelineReg Data_out[1] -pin U1|U5 EX_Data_out[1]
load net U1|EX_Data_out[20] -attr @rip(#000000) Data_out[20] -attr @name EX_Data_out[20] -pin U1|EX_PipelineReg Data_out[20] -pin U1|U5 EX_Data_out[20]
load net U1|EX_Data_out[21] -attr @rip(#000000) Data_out[21] -attr @name EX_Data_out[21] -pin U1|EX_PipelineReg Data_out[21] -pin U1|U5 EX_Data_out[21]
load net U1|EX_Data_out[22] -attr @rip(#000000) Data_out[22] -attr @name EX_Data_out[22] -pin U1|EX_PipelineReg Data_out[22] -pin U1|U5 EX_Data_out[22]
load net U1|EX_Data_out[23] -attr @rip(#000000) Data_out[23] -attr @name EX_Data_out[23] -pin U1|EX_PipelineReg Data_out[23] -pin U1|U5 EX_Data_out[23]
load net U1|EX_Data_out[24] -attr @rip(#000000) Data_out[24] -attr @name EX_Data_out[24] -pin U1|EX_PipelineReg Data_out[24] -pin U1|U5 EX_Data_out[24]
load net U1|EX_Data_out[25] -attr @rip(#000000) Data_out[25] -attr @name EX_Data_out[25] -pin U1|EX_PipelineReg Data_out[25] -pin U1|U5 EX_Data_out[25]
load net U1|EX_Data_out[26] -attr @rip(#000000) Data_out[26] -attr @name EX_Data_out[26] -pin U1|EX_PipelineReg Data_out[26] -pin U1|U5 EX_Data_out[26]
load net U1|EX_Data_out[27] -attr @rip(#000000) Data_out[27] -attr @name EX_Data_out[27] -pin U1|EX_PipelineReg Data_out[27] -pin U1|U5 EX_Data_out[27]
load net U1|EX_Data_out[28] -attr @rip(#000000) Data_out[28] -attr @name EX_Data_out[28] -pin U1|EX_PipelineReg Data_out[28] -pin U1|U5 EX_Data_out[28]
load net U1|EX_Data_out[29] -attr @rip(#000000) Data_out[29] -attr @name EX_Data_out[29] -pin U1|EX_PipelineReg Data_out[29] -pin U1|U5 EX_Data_out[29]
load net U1|EX_Data_out[2] -attr @rip(#000000) Data_out[2] -attr @name EX_Data_out[2] -pin U1|EX_PipelineReg Data_out[2] -pin U1|U5 EX_Data_out[2]
load net U1|EX_Data_out[30] -attr @rip(#000000) Data_out[30] -attr @name EX_Data_out[30] -pin U1|EX_PipelineReg Data_out[30] -pin U1|U5 EX_Data_out[30]
load net U1|EX_Data_out[31] -attr @rip(#000000) Data_out[31] -attr @name EX_Data_out[31] -pin U1|EX_PipelineReg Data_out[31] -pin U1|U5 EX_Data_out[31]
load net U1|EX_Data_out[3] -attr @rip(#000000) Data_out[3] -attr @name EX_Data_out[3] -pin U1|EX_PipelineReg Data_out[3] -pin U1|U5 EX_Data_out[3]
load net U1|EX_Data_out[4] -attr @rip(#000000) Data_out[4] -attr @name EX_Data_out[4] -pin U1|EX_PipelineReg Data_out[4] -pin U1|U5 EX_Data_out[4]
load net U1|EX_Data_out[5] -attr @rip(#000000) Data_out[5] -attr @name EX_Data_out[5] -pin U1|EX_PipelineReg Data_out[5] -pin U1|U5 EX_Data_out[5]
load net U1|EX_Data_out[6] -attr @rip(#000000) Data_out[6] -attr @name EX_Data_out[6] -pin U1|EX_PipelineReg Data_out[6] -pin U1|U5 EX_Data_out[6]
load net U1|EX_Data_out[7] -attr @rip(#000000) Data_out[7] -attr @name EX_Data_out[7] -pin U1|EX_PipelineReg Data_out[7] -pin U1|U5 EX_Data_out[7]
load net U1|EX_Data_out[8] -attr @rip(#000000) Data_out[8] -attr @name EX_Data_out[8] -pin U1|EX_PipelineReg Data_out[8] -pin U1|U5 EX_Data_out[8]
load net U1|EX_Data_out[9] -attr @rip(#000000) Data_out[9] -attr @name EX_Data_out[9] -pin U1|EX_PipelineReg Data_out[9] -pin U1|U5 EX_Data_out[9]
load net U1|EX_ImmSell_in[0] -attr @rip(#000000) ImmSell[0] -attr @name EX_ImmSell_in[0] -pin U1|EX_PipelineReg ImmSell_in[0] -pin U1|U1 ImmSell[0] -pin U1|v1 ImmSell[0]
load net U1|EX_ImmSell_in[1] -attr @rip(#000000) ImmSell[1] -attr @name EX_ImmSell_in[1] -pin U1|EX_PipelineReg ImmSell_in[1] -pin U1|U1 ImmSell[1] -pin U1|v1 ImmSell[1]
load net U1|EX_ImmSell_in[2] -attr @rip(#000000) ImmSell[2] -attr @name EX_ImmSell_in[2] -pin U1|EX_PipelineReg ImmSell_in[2] -pin U1|U1 ImmSell[2] -pin U1|v1 ImmSell[2]
load net U1|EX_Imm[0] -attr @rip(#000000) Imm[0] -attr @name EX_Imm[0] -pin U1|EX_PipelineReg Imm[0] -pin U1|U5 EX_Imm[0] -pin U1|U7 EX_Imm[0] -pin U1|U8 EX_Imm[0]
load net U1|EX_Imm[10] -attr @rip(#000000) Imm[10] -attr @name EX_Imm[10] -pin U1|EX_PipelineReg Imm[10] -pin U1|U5 EX_Imm[10] -pin U1|U7 EX_Imm[10] -pin U1|U8 EX_Imm[10]
load net U1|EX_Imm[11] -attr @rip(#000000) Imm[11] -attr @name EX_Imm[11] -pin U1|EX_PipelineReg Imm[11] -pin U1|U5 EX_Imm[11] -pin U1|U7 EX_Imm[11] -pin U1|U8 EX_Imm[11]
load net U1|EX_Imm[12] -attr @rip(#000000) Imm[12] -attr @name EX_Imm[12] -pin U1|EX_PipelineReg Imm[12] -pin U1|U5 EX_Imm[12] -pin U1|U7 EX_Imm[12] -pin U1|U8 EX_Imm[12]
load net U1|EX_Imm[13] -attr @rip(#000000) Imm[13] -attr @name EX_Imm[13] -pin U1|EX_PipelineReg Imm[13] -pin U1|U5 EX_Imm[13] -pin U1|U7 EX_Imm[13] -pin U1|U8 EX_Imm[13]
load net U1|EX_Imm[14] -attr @rip(#000000) Imm[14] -attr @name EX_Imm[14] -pin U1|EX_PipelineReg Imm[14] -pin U1|U5 EX_Imm[14] -pin U1|U7 EX_Imm[14] -pin U1|U8 EX_Imm[14]
load net U1|EX_Imm[15] -attr @rip(#000000) Imm[15] -attr @name EX_Imm[15] -pin U1|EX_PipelineReg Imm[15] -pin U1|U5 EX_Imm[15] -pin U1|U7 EX_Imm[15] -pin U1|U8 EX_Imm[15]
load net U1|EX_Imm[16] -attr @rip(#000000) Imm[16] -attr @name EX_Imm[16] -pin U1|EX_PipelineReg Imm[16] -pin U1|U5 EX_Imm[16] -pin U1|U7 EX_Imm[16] -pin U1|U8 EX_Imm[16]
load net U1|EX_Imm[17] -attr @rip(#000000) Imm[17] -attr @name EX_Imm[17] -pin U1|EX_PipelineReg Imm[17] -pin U1|U5 EX_Imm[17] -pin U1|U7 EX_Imm[17] -pin U1|U8 EX_Imm[17]
load net U1|EX_Imm[18] -attr @rip(#000000) Imm[18] -attr @name EX_Imm[18] -pin U1|EX_PipelineReg Imm[18] -pin U1|U5 EX_Imm[18] -pin U1|U7 EX_Imm[18] -pin U1|U8 EX_Imm[18]
load net U1|EX_Imm[19] -attr @rip(#000000) Imm[19] -attr @name EX_Imm[19] -pin U1|EX_PipelineReg Imm[19] -pin U1|U5 EX_Imm[19] -pin U1|U7 EX_Imm[19] -pin U1|U8 EX_Imm[19]
load net U1|EX_Imm[1] -attr @rip(#000000) Imm[1] -attr @name EX_Imm[1] -pin U1|EX_PipelineReg Imm[1] -pin U1|U5 EX_Imm[1] -pin U1|U7 EX_Imm[1] -pin U1|U8 EX_Imm[1]
load net U1|EX_Imm[20] -attr @rip(#000000) Imm[20] -attr @name EX_Imm[20] -pin U1|EX_PipelineReg Imm[20] -pin U1|U5 EX_Imm[20] -pin U1|U7 EX_Imm[20] -pin U1|U8 EX_Imm[20]
load net U1|EX_Imm[21] -attr @rip(#000000) Imm[21] -attr @name EX_Imm[21] -pin U1|EX_PipelineReg Imm[21] -pin U1|U5 EX_Imm[21] -pin U1|U7 EX_Imm[21] -pin U1|U8 EX_Imm[21]
load net U1|EX_Imm[22] -attr @rip(#000000) Imm[22] -attr @name EX_Imm[22] -pin U1|EX_PipelineReg Imm[22] -pin U1|U5 EX_Imm[22] -pin U1|U7 EX_Imm[22] -pin U1|U8 EX_Imm[22]
load net U1|EX_Imm[23] -attr @rip(#000000) Imm[23] -attr @name EX_Imm[23] -pin U1|EX_PipelineReg Imm[23] -pin U1|U5 EX_Imm[23] -pin U1|U7 EX_Imm[23] -pin U1|U8 EX_Imm[23]
load net U1|EX_Imm[24] -attr @rip(#000000) Imm[24] -attr @name EX_Imm[24] -pin U1|EX_PipelineReg Imm[24] -pin U1|U5 EX_Imm[24] -pin U1|U7 EX_Imm[24] -pin U1|U8 EX_Imm[24]
load net U1|EX_Imm[25] -attr @rip(#000000) Imm[25] -attr @name EX_Imm[25] -pin U1|EX_PipelineReg Imm[25] -pin U1|U5 EX_Imm[25] -pin U1|U7 EX_Imm[25] -pin U1|U8 EX_Imm[25]
load net U1|EX_Imm[26] -attr @rip(#000000) Imm[26] -attr @name EX_Imm[26] -pin U1|EX_PipelineReg Imm[26] -pin U1|U5 EX_Imm[26] -pin U1|U7 EX_Imm[26] -pin U1|U8 EX_Imm[26]
load net U1|EX_Imm[27] -attr @rip(#000000) Imm[27] -attr @name EX_Imm[27] -pin U1|EX_PipelineReg Imm[27] -pin U1|U5 EX_Imm[27] -pin U1|U7 EX_Imm[27] -pin U1|U8 EX_Imm[27]
load net U1|EX_Imm[28] -attr @rip(#000000) Imm[28] -attr @name EX_Imm[28] -pin U1|EX_PipelineReg Imm[28] -pin U1|U5 EX_Imm[28] -pin U1|U7 EX_Imm[28] -pin U1|U8 EX_Imm[28]
load net U1|EX_Imm[29] -attr @rip(#000000) Imm[29] -attr @name EX_Imm[29] -pin U1|EX_PipelineReg Imm[29] -pin U1|U5 EX_Imm[29] -pin U1|U7 EX_Imm[29] -pin U1|U8 EX_Imm[29]
load net U1|EX_Imm[2] -attr @rip(#000000) Imm[2] -attr @name EX_Imm[2] -pin U1|EX_PipelineReg Imm[2] -pin U1|U5 EX_Imm[2] -pin U1|U7 EX_Imm[2] -pin U1|U8 EX_Imm[2]
load net U1|EX_Imm[30] -attr @rip(#000000) Imm[30] -attr @name EX_Imm[30] -pin U1|EX_PipelineReg Imm[30] -pin U1|U5 EX_Imm[30] -pin U1|U7 EX_Imm[30] -pin U1|U8 EX_Imm[30]
load net U1|EX_Imm[31] -attr @rip(#000000) Imm[31] -attr @name EX_Imm[31] -pin U1|EX_PipelineReg Imm[31] -pin U1|U5 EX_Imm[31] -pin U1|U7 EX_Imm[31] -pin U1|U8 EX_Imm[31]
load net U1|EX_Imm[3] -attr @rip(#000000) Imm[3] -attr @name EX_Imm[3] -pin U1|EX_PipelineReg Imm[3] -pin U1|U5 EX_Imm[3] -pin U1|U7 EX_Imm[3] -pin U1|U8 EX_Imm[3]
load net U1|EX_Imm[4] -attr @rip(#000000) Imm[4] -attr @name EX_Imm[4] -pin U1|EX_PipelineReg Imm[4] -pin U1|U5 EX_Imm[4] -pin U1|U7 EX_Imm[4] -pin U1|U8 EX_Imm[4]
load net U1|EX_Imm[5] -attr @rip(#000000) Imm[5] -attr @name EX_Imm[5] -pin U1|EX_PipelineReg Imm[5] -pin U1|U5 EX_Imm[5] -pin U1|U7 EX_Imm[5] -pin U1|U8 EX_Imm[5]
load net U1|EX_Imm[6] -attr @rip(#000000) Imm[6] -attr @name EX_Imm[6] -pin U1|EX_PipelineReg Imm[6] -pin U1|U5 EX_Imm[6] -pin U1|U7 EX_Imm[6] -pin U1|U8 EX_Imm[6]
load net U1|EX_Imm[7] -attr @rip(#000000) Imm[7] -attr @name EX_Imm[7] -pin U1|EX_PipelineReg Imm[7] -pin U1|U5 EX_Imm[7] -pin U1|U7 EX_Imm[7] -pin U1|U8 EX_Imm[7]
load net U1|EX_Imm[8] -attr @rip(#000000) Imm[8] -attr @name EX_Imm[8] -pin U1|EX_PipelineReg Imm[8] -pin U1|U5 EX_Imm[8] -pin U1|U7 EX_Imm[8] -pin U1|U8 EX_Imm[8]
load net U1|EX_Imm[9] -attr @rip(#000000) Imm[9] -attr @name EX_Imm[9] -pin U1|EX_PipelineReg Imm[9] -pin U1|U5 EX_Imm[9] -pin U1|U7 EX_Imm[9] -pin U1|U8 EX_Imm[9]
load net U1|EX_Imm_in[0] -attr @rip(#000000) Imm[0] -attr @name EX_Imm_in[0] -pin U1|EX_PipelineReg Imm_in[0] -pin U1|U1 Imm[0]
load net U1|EX_Imm_in[10] -attr @rip(#000000) Imm[10] -attr @name EX_Imm_in[10] -pin U1|EX_PipelineReg Imm_in[10] -pin U1|U1 Imm[10]
load net U1|EX_Imm_in[11] -attr @rip(#000000) Imm[11] -attr @name EX_Imm_in[11] -pin U1|EX_PipelineReg Imm_in[11] -pin U1|U1 Imm[11]
load net U1|EX_Imm_in[12] -attr @rip(#000000) Imm[12] -attr @name EX_Imm_in[12] -pin U1|EX_PipelineReg Imm_in[12] -pin U1|U1 Imm[12]
load net U1|EX_Imm_in[13] -attr @rip(#000000) Imm[13] -attr @name EX_Imm_in[13] -pin U1|EX_PipelineReg Imm_in[13] -pin U1|U1 Imm[13]
load net U1|EX_Imm_in[14] -attr @rip(#000000) Imm[14] -attr @name EX_Imm_in[14] -pin U1|EX_PipelineReg Imm_in[14] -pin U1|U1 Imm[14]
load net U1|EX_Imm_in[15] -attr @rip(#000000) Imm[15] -attr @name EX_Imm_in[15] -pin U1|EX_PipelineReg Imm_in[15] -pin U1|U1 Imm[15]
load net U1|EX_Imm_in[16] -attr @rip(#000000) Imm[16] -attr @name EX_Imm_in[16] -pin U1|EX_PipelineReg Imm_in[16] -pin U1|U1 Imm[16]
load net U1|EX_Imm_in[17] -attr @rip(#000000) Imm[17] -attr @name EX_Imm_in[17] -pin U1|EX_PipelineReg Imm_in[17] -pin U1|U1 Imm[17]
load net U1|EX_Imm_in[18] -attr @rip(#000000) Imm[18] -attr @name EX_Imm_in[18] -pin U1|EX_PipelineReg Imm_in[18] -pin U1|U1 Imm[18]
load net U1|EX_Imm_in[19] -attr @rip(#000000) Imm[19] -attr @name EX_Imm_in[19] -pin U1|EX_PipelineReg Imm_in[19] -pin U1|U1 Imm[19]
load net U1|EX_Imm_in[1] -attr @rip(#000000) Imm[1] -attr @name EX_Imm_in[1] -pin U1|EX_PipelineReg Imm_in[1] -pin U1|U1 Imm[1]
load net U1|EX_Imm_in[20] -attr @rip(#000000) Imm[20] -attr @name EX_Imm_in[20] -pin U1|EX_PipelineReg Imm_in[20] -pin U1|U1 Imm[20]
load net U1|EX_Imm_in[21] -attr @rip(#000000) Imm[21] -attr @name EX_Imm_in[21] -pin U1|EX_PipelineReg Imm_in[21] -pin U1|U1 Imm[21]
load net U1|EX_Imm_in[22] -attr @rip(#000000) Imm[22] -attr @name EX_Imm_in[22] -pin U1|EX_PipelineReg Imm_in[22] -pin U1|U1 Imm[22]
load net U1|EX_Imm_in[23] -attr @rip(#000000) Imm[23] -attr @name EX_Imm_in[23] -pin U1|EX_PipelineReg Imm_in[23] -pin U1|U1 Imm[23]
load net U1|EX_Imm_in[24] -attr @rip(#000000) Imm[24] -attr @name EX_Imm_in[24] -pin U1|EX_PipelineReg Imm_in[24] -pin U1|U1 Imm[24]
load net U1|EX_Imm_in[25] -attr @rip(#000000) Imm[25] -attr @name EX_Imm_in[25] -pin U1|EX_PipelineReg Imm_in[25] -pin U1|U1 Imm[25]
load net U1|EX_Imm_in[26] -attr @rip(#000000) Imm[26] -attr @name EX_Imm_in[26] -pin U1|EX_PipelineReg Imm_in[26] -pin U1|U1 Imm[26]
load net U1|EX_Imm_in[27] -attr @rip(#000000) Imm[27] -attr @name EX_Imm_in[27] -pin U1|EX_PipelineReg Imm_in[27] -pin U1|U1 Imm[27]
load net U1|EX_Imm_in[28] -attr @rip(#000000) Imm[28] -attr @name EX_Imm_in[28] -pin U1|EX_PipelineReg Imm_in[28] -pin U1|U1 Imm[28]
load net U1|EX_Imm_in[29] -attr @rip(#000000) Imm[29] -attr @name EX_Imm_in[29] -pin U1|EX_PipelineReg Imm_in[29] -pin U1|U1 Imm[29]
load net U1|EX_Imm_in[2] -attr @rip(#000000) Imm[2] -attr @name EX_Imm_in[2] -pin U1|EX_PipelineReg Imm_in[2] -pin U1|U1 Imm[2]
load net U1|EX_Imm_in[30] -attr @rip(#000000) Imm[30] -attr @name EX_Imm_in[30] -pin U1|EX_PipelineReg Imm_in[30] -pin U1|U1 Imm[30]
load net U1|EX_Imm_in[31] -attr @rip(#000000) Imm[31] -attr @name EX_Imm_in[31] -pin U1|EX_PipelineReg Imm_in[31] -pin U1|U1 Imm[31]
load net U1|EX_Imm_in[3] -attr @rip(#000000) Imm[3] -attr @name EX_Imm_in[3] -pin U1|EX_PipelineReg Imm_in[3] -pin U1|U1 Imm[3]
load net U1|EX_Imm_in[4] -attr @rip(#000000) Imm[4] -attr @name EX_Imm_in[4] -pin U1|EX_PipelineReg Imm_in[4] -pin U1|U1 Imm[4]
load net U1|EX_Imm_in[5] -attr @rip(#000000) Imm[5] -attr @name EX_Imm_in[5] -pin U1|EX_PipelineReg Imm_in[5] -pin U1|U1 Imm[5]
load net U1|EX_Imm_in[6] -attr @rip(#000000) Imm[6] -attr @name EX_Imm_in[6] -pin U1|EX_PipelineReg Imm_in[6] -pin U1|U1 Imm[6]
load net U1|EX_Imm_in[7] -attr @rip(#000000) Imm[7] -attr @name EX_Imm_in[7] -pin U1|EX_PipelineReg Imm_in[7] -pin U1|U1 Imm[7]
load net U1|EX_Imm_in[8] -attr @rip(#000000) Imm[8] -attr @name EX_Imm_in[8] -pin U1|EX_PipelineReg Imm_in[8] -pin U1|U1 Imm[8]
load net U1|EX_Imm_in[9] -attr @rip(#000000) Imm[9] -attr @name EX_Imm_in[9] -pin U1|EX_PipelineReg Imm_in[9] -pin U1|U1 Imm[9]
load net U1|EX_Jump -attr @name EX_Jump -pin U1|EX_PipelineReg Jump -pin U1|U7 EX_Jump
netloc U1|EX_Jump 1 5 5 2490 1068 NJ 1068 NJ 1068 3990J 1128 4880
load net U1|EX_Jump_in -attr @name EX_Jump_in -pin U1|EX_PipelineReg Jump_in -pin U1|U11 EX_Jump_in
netloc U1|EX_Jump_in 1 8 1 4200 408n
load net U1|EX_Jump_in_temp -attr @name EX_Jump_in_temp -pin U1|U11 EX_Jump_in_temp -pin U1|v1 Jump
netloc U1|EX_Jump_in_temp 1 7 1 3360 508n
load net U1|EX_MemtoReg[0] -attr @rip(#000000) MemtoReg[0] -attr @name EX_MemtoReg[0] -pin U1|EX_PipelineReg MemtoReg[0] -pin U1|MEM_PipelineReg MemtoReg_in[0] -pin U1|U6 EX_MemtoReg[0] -pin U1|U8 EX_MemtoReg[0]
load net U1|EX_MemtoReg[1] -attr @rip(#000000) MemtoReg[1] -attr @name EX_MemtoReg[1] -pin U1|EX_PipelineReg MemtoReg[1] -pin U1|MEM_PipelineReg MemtoReg_in[1] -pin U1|U6 EX_MemtoReg[1] -pin U1|U8 EX_MemtoReg[1]
load net U1|EX_MemtoReg_in[0] -attr @rip(#000000) MemtoReg[0] -attr @name EX_MemtoReg_in[0] -pin U1|EX_PipelineReg MemtoReg_in[0] -pin U1|v1 MemtoReg[0]
load net U1|EX_MemtoReg_in[1] -attr @rip(#000000) MemtoReg[1] -attr @name EX_MemtoReg_in[1] -pin U1|EX_PipelineReg MemtoReg_in[1] -pin U1|v1 MemtoReg[1]
load net U1|EX_PC[0] -attr @rip(#000000) PC[0] -attr @name EX_PC[0] -pin U1|EX_PipelineReg PC[0] -pin U1|MEM_PipelineReg PC_in[0] -pin U1|U7 EX_PC[0] -pin U1|U8 EX_PC[0]
load net U1|EX_PC[10] -attr @rip(#000000) PC[10] -attr @name EX_PC[10] -pin U1|EX_PipelineReg PC[10] -pin U1|MEM_PipelineReg PC_in[10] -pin U1|U7 EX_PC[10] -pin U1|U8 EX_PC[10]
load net U1|EX_PC[11] -attr @rip(#000000) PC[11] -attr @name EX_PC[11] -pin U1|EX_PipelineReg PC[11] -pin U1|MEM_PipelineReg PC_in[11] -pin U1|U7 EX_PC[11] -pin U1|U8 EX_PC[11]
load net U1|EX_PC[12] -attr @rip(#000000) PC[12] -attr @name EX_PC[12] -pin U1|EX_PipelineReg PC[12] -pin U1|MEM_PipelineReg PC_in[12] -pin U1|U7 EX_PC[12] -pin U1|U8 EX_PC[12]
load net U1|EX_PC[13] -attr @rip(#000000) PC[13] -attr @name EX_PC[13] -pin U1|EX_PipelineReg PC[13] -pin U1|MEM_PipelineReg PC_in[13] -pin U1|U7 EX_PC[13] -pin U1|U8 EX_PC[13]
load net U1|EX_PC[14] -attr @rip(#000000) PC[14] -attr @name EX_PC[14] -pin U1|EX_PipelineReg PC[14] -pin U1|MEM_PipelineReg PC_in[14] -pin U1|U7 EX_PC[14] -pin U1|U8 EX_PC[14]
load net U1|EX_PC[15] -attr @rip(#000000) PC[15] -attr @name EX_PC[15] -pin U1|EX_PipelineReg PC[15] -pin U1|MEM_PipelineReg PC_in[15] -pin U1|U7 EX_PC[15] -pin U1|U8 EX_PC[15]
load net U1|EX_PC[16] -attr @rip(#000000) PC[16] -attr @name EX_PC[16] -pin U1|EX_PipelineReg PC[16] -pin U1|MEM_PipelineReg PC_in[16] -pin U1|U7 EX_PC[16] -pin U1|U8 EX_PC[16]
load net U1|EX_PC[17] -attr @rip(#000000) PC[17] -attr @name EX_PC[17] -pin U1|EX_PipelineReg PC[17] -pin U1|MEM_PipelineReg PC_in[17] -pin U1|U7 EX_PC[17] -pin U1|U8 EX_PC[17]
load net U1|EX_PC[18] -attr @rip(#000000) PC[18] -attr @name EX_PC[18] -pin U1|EX_PipelineReg PC[18] -pin U1|MEM_PipelineReg PC_in[18] -pin U1|U7 EX_PC[18] -pin U1|U8 EX_PC[18]
load net U1|EX_PC[19] -attr @rip(#000000) PC[19] -attr @name EX_PC[19] -pin U1|EX_PipelineReg PC[19] -pin U1|MEM_PipelineReg PC_in[19] -pin U1|U7 EX_PC[19] -pin U1|U8 EX_PC[19]
load net U1|EX_PC[1] -attr @rip(#000000) PC[1] -attr @name EX_PC[1] -pin U1|EX_PipelineReg PC[1] -pin U1|MEM_PipelineReg PC_in[1] -pin U1|U7 EX_PC[1] -pin U1|U8 EX_PC[1]
load net U1|EX_PC[20] -attr @rip(#000000) PC[20] -attr @name EX_PC[20] -pin U1|EX_PipelineReg PC[20] -pin U1|MEM_PipelineReg PC_in[20] -pin U1|U7 EX_PC[20] -pin U1|U8 EX_PC[20]
load net U1|EX_PC[21] -attr @rip(#000000) PC[21] -attr @name EX_PC[21] -pin U1|EX_PipelineReg PC[21] -pin U1|MEM_PipelineReg PC_in[21] -pin U1|U7 EX_PC[21] -pin U1|U8 EX_PC[21]
load net U1|EX_PC[22] -attr @rip(#000000) PC[22] -attr @name EX_PC[22] -pin U1|EX_PipelineReg PC[22] -pin U1|MEM_PipelineReg PC_in[22] -pin U1|U7 EX_PC[22] -pin U1|U8 EX_PC[22]
load net U1|EX_PC[23] -attr @rip(#000000) PC[23] -attr @name EX_PC[23] -pin U1|EX_PipelineReg PC[23] -pin U1|MEM_PipelineReg PC_in[23] -pin U1|U7 EX_PC[23] -pin U1|U8 EX_PC[23]
load net U1|EX_PC[24] -attr @rip(#000000) PC[24] -attr @name EX_PC[24] -pin U1|EX_PipelineReg PC[24] -pin U1|MEM_PipelineReg PC_in[24] -pin U1|U7 EX_PC[24] -pin U1|U8 EX_PC[24]
load net U1|EX_PC[25] -attr @rip(#000000) PC[25] -attr @name EX_PC[25] -pin U1|EX_PipelineReg PC[25] -pin U1|MEM_PipelineReg PC_in[25] -pin U1|U7 EX_PC[25] -pin U1|U8 EX_PC[25]
load net U1|EX_PC[26] -attr @rip(#000000) PC[26] -attr @name EX_PC[26] -pin U1|EX_PipelineReg PC[26] -pin U1|MEM_PipelineReg PC_in[26] -pin U1|U7 EX_PC[26] -pin U1|U8 EX_PC[26]
load net U1|EX_PC[27] -attr @rip(#000000) PC[27] -attr @name EX_PC[27] -pin U1|EX_PipelineReg PC[27] -pin U1|MEM_PipelineReg PC_in[27] -pin U1|U7 EX_PC[27] -pin U1|U8 EX_PC[27]
load net U1|EX_PC[28] -attr @rip(#000000) PC[28] -attr @name EX_PC[28] -pin U1|EX_PipelineReg PC[28] -pin U1|MEM_PipelineReg PC_in[28] -pin U1|U7 EX_PC[28] -pin U1|U8 EX_PC[28]
load net U1|EX_PC[29] -attr @rip(#000000) PC[29] -attr @name EX_PC[29] -pin U1|EX_PipelineReg PC[29] -pin U1|MEM_PipelineReg PC_in[29] -pin U1|U7 EX_PC[29] -pin U1|U8 EX_PC[29]
load net U1|EX_PC[2] -attr @rip(#000000) PC[2] -attr @name EX_PC[2] -pin U1|EX_PipelineReg PC[2] -pin U1|MEM_PipelineReg PC_in[2] -pin U1|U7 EX_PC[2] -pin U1|U8 EX_PC[2]
load net U1|EX_PC[30] -attr @rip(#000000) PC[30] -attr @name EX_PC[30] -pin U1|EX_PipelineReg PC[30] -pin U1|MEM_PipelineReg PC_in[30] -pin U1|U7 EX_PC[30] -pin U1|U8 EX_PC[30]
load net U1|EX_PC[31] -attr @rip(#000000) PC[31] -attr @name EX_PC[31] -pin U1|EX_PipelineReg PC[31] -pin U1|MEM_PipelineReg PC_in[31] -pin U1|U7 EX_PC[31] -pin U1|U8 EX_PC[31]
load net U1|EX_PC[3] -attr @rip(#000000) PC[3] -attr @name EX_PC[3] -pin U1|EX_PipelineReg PC[3] -pin U1|MEM_PipelineReg PC_in[3] -pin U1|U7 EX_PC[3] -pin U1|U8 EX_PC[3]
load net U1|EX_PC[4] -attr @rip(#000000) PC[4] -attr @name EX_PC[4] -pin U1|EX_PipelineReg PC[4] -pin U1|MEM_PipelineReg PC_in[4] -pin U1|U7 EX_PC[4] -pin U1|U8 EX_PC[4]
load net U1|EX_PC[5] -attr @rip(#000000) PC[5] -attr @name EX_PC[5] -pin U1|EX_PipelineReg PC[5] -pin U1|MEM_PipelineReg PC_in[5] -pin U1|U7 EX_PC[5] -pin U1|U8 EX_PC[5]
load net U1|EX_PC[6] -attr @rip(#000000) PC[6] -attr @name EX_PC[6] -pin U1|EX_PipelineReg PC[6] -pin U1|MEM_PipelineReg PC_in[6] -pin U1|U7 EX_PC[6] -pin U1|U8 EX_PC[6]
load net U1|EX_PC[7] -attr @rip(#000000) PC[7] -attr @name EX_PC[7] -pin U1|EX_PipelineReg PC[7] -pin U1|MEM_PipelineReg PC_in[7] -pin U1|U7 EX_PC[7] -pin U1|U8 EX_PC[7]
load net U1|EX_PC[8] -attr @rip(#000000) PC[8] -attr @name EX_PC[8] -pin U1|EX_PipelineReg PC[8] -pin U1|MEM_PipelineReg PC_in[8] -pin U1|U7 EX_PC[8] -pin U1|U8 EX_PC[8]
load net U1|EX_PC[9] -attr @rip(#000000) PC[9] -attr @name EX_PC[9] -pin U1|EX_PipelineReg PC[9] -pin U1|MEM_PipelineReg PC_in[9] -pin U1|U7 EX_PC[9] -pin U1|U8 EX_PC[9]
load net U1|EX_Rd_addr[0] -attr @rip(#000000) Rd_addr[0] -attr @name EX_Rd_addr[0] -pin U1|EX_PipelineReg Rd_addr[0] -pin U1|MEM_PipelineReg Rd_addr_in[0] -pin U1|U6 EX_Rd_addr[0]
load net U1|EX_Rd_addr[1] -attr @rip(#000000) Rd_addr[1] -attr @name EX_Rd_addr[1] -pin U1|EX_PipelineReg Rd_addr[1] -pin U1|MEM_PipelineReg Rd_addr_in[1] -pin U1|U6 EX_Rd_addr[1]
load net U1|EX_Rd_addr[2] -attr @rip(#000000) Rd_addr[2] -attr @name EX_Rd_addr[2] -pin U1|EX_PipelineReg Rd_addr[2] -pin U1|MEM_PipelineReg Rd_addr_in[2] -pin U1|U6 EX_Rd_addr[2]
load net U1|EX_Rd_addr[3] -attr @rip(#000000) Rd_addr[3] -attr @name EX_Rd_addr[3] -pin U1|EX_PipelineReg Rd_addr[3] -pin U1|MEM_PipelineReg Rd_addr_in[3] -pin U1|U6 EX_Rd_addr[3]
load net U1|EX_Rd_addr[4] -attr @rip(#000000) Rd_addr[4] -attr @name EX_Rd_addr[4] -pin U1|EX_PipelineReg Rd_addr[4] -pin U1|MEM_PipelineReg Rd_addr_in[4] -pin U1|U6 EX_Rd_addr[4]
load net U1|EX_RegWrite -attr @name EX_RegWrite -pin U1|EX_PipelineReg RegWrite -pin U1|MEM_PipelineReg RegWrite_in -pin U1|U6 EX_RegWrite
netloc U1|EX_RegWrite 1 5 5 2450 748 2870J 848 3320J 868 4150J 928 5040
load net U1|EX_RegWrite_in -attr @name EX_RegWrite_in -pin U1|EX_PipelineReg RegWrite_in -pin U1|U11 EX_RegWrite_in
netloc U1|EX_RegWrite_in 1 8 1 4240 488n
load net U1|EX_RegWrite_in_temp -attr @name EX_RegWrite_in_temp -pin U1|U11 EX_RegWrite_in_temp -pin U1|v1 RegWrite
netloc U1|EX_RegWrite_in_temp 1 7 1 3440 528n
load net U1|EX_Rs1_addr[0] -attr @rip(#000000) Rs1_addr[0] -attr @name EX_Rs1_addr[0] -pin U1|EX_PipelineReg Rs1_addr[0] -pin U1|U5 EX_Rs1_addr[0]
load net U1|EX_Rs1_addr[1] -attr @rip(#000000) Rs1_addr[1] -attr @name EX_Rs1_addr[1] -pin U1|EX_PipelineReg Rs1_addr[1] -pin U1|U5 EX_Rs1_addr[1]
load net U1|EX_Rs1_addr[2] -attr @rip(#000000) Rs1_addr[2] -attr @name EX_Rs1_addr[2] -pin U1|EX_PipelineReg Rs1_addr[2] -pin U1|U5 EX_Rs1_addr[2]
load net U1|EX_Rs1_addr[3] -attr @rip(#000000) Rs1_addr[3] -attr @name EX_Rs1_addr[3] -pin U1|EX_PipelineReg Rs1_addr[3] -pin U1|U5 EX_Rs1_addr[3]
load net U1|EX_Rs1_addr[4] -attr @rip(#000000) Rs1_addr[4] -attr @name EX_Rs1_addr[4] -pin U1|EX_PipelineReg Rs1_addr[4] -pin U1|U5 EX_Rs1_addr[4]
load net U1|EX_Rs1_data[0] -attr @rip(#000000) Rs1_data[0] -attr @name EX_Rs1_data[0] -pin U1|EX_PipelineReg Rs1_data[0] -pin U1|U5 EX_Rs1_data[0]
load net U1|EX_Rs1_data[10] -attr @rip(#000000) Rs1_data[10] -attr @name EX_Rs1_data[10] -pin U1|EX_PipelineReg Rs1_data[10] -pin U1|U5 EX_Rs1_data[10]
load net U1|EX_Rs1_data[11] -attr @rip(#000000) Rs1_data[11] -attr @name EX_Rs1_data[11] -pin U1|EX_PipelineReg Rs1_data[11] -pin U1|U5 EX_Rs1_data[11]
load net U1|EX_Rs1_data[12] -attr @rip(#000000) Rs1_data[12] -attr @name EX_Rs1_data[12] -pin U1|EX_PipelineReg Rs1_data[12] -pin U1|U5 EX_Rs1_data[12]
load net U1|EX_Rs1_data[13] -attr @rip(#000000) Rs1_data[13] -attr @name EX_Rs1_data[13] -pin U1|EX_PipelineReg Rs1_data[13] -pin U1|U5 EX_Rs1_data[13]
load net U1|EX_Rs1_data[14] -attr @rip(#000000) Rs1_data[14] -attr @name EX_Rs1_data[14] -pin U1|EX_PipelineReg Rs1_data[14] -pin U1|U5 EX_Rs1_data[14]
load net U1|EX_Rs1_data[15] -attr @rip(#000000) Rs1_data[15] -attr @name EX_Rs1_data[15] -pin U1|EX_PipelineReg Rs1_data[15] -pin U1|U5 EX_Rs1_data[15]
load net U1|EX_Rs1_data[16] -attr @rip(#000000) Rs1_data[16] -attr @name EX_Rs1_data[16] -pin U1|EX_PipelineReg Rs1_data[16] -pin U1|U5 EX_Rs1_data[16]
load net U1|EX_Rs1_data[17] -attr @rip(#000000) Rs1_data[17] -attr @name EX_Rs1_data[17] -pin U1|EX_PipelineReg Rs1_data[17] -pin U1|U5 EX_Rs1_data[17]
load net U1|EX_Rs1_data[18] -attr @rip(#000000) Rs1_data[18] -attr @name EX_Rs1_data[18] -pin U1|EX_PipelineReg Rs1_data[18] -pin U1|U5 EX_Rs1_data[18]
load net U1|EX_Rs1_data[19] -attr @rip(#000000) Rs1_data[19] -attr @name EX_Rs1_data[19] -pin U1|EX_PipelineReg Rs1_data[19] -pin U1|U5 EX_Rs1_data[19]
load net U1|EX_Rs1_data[1] -attr @rip(#000000) Rs1_data[1] -attr @name EX_Rs1_data[1] -pin U1|EX_PipelineReg Rs1_data[1] -pin U1|U5 EX_Rs1_data[1]
load net U1|EX_Rs1_data[20] -attr @rip(#000000) Rs1_data[20] -attr @name EX_Rs1_data[20] -pin U1|EX_PipelineReg Rs1_data[20] -pin U1|U5 EX_Rs1_data[20]
load net U1|EX_Rs1_data[21] -attr @rip(#000000) Rs1_data[21] -attr @name EX_Rs1_data[21] -pin U1|EX_PipelineReg Rs1_data[21] -pin U1|U5 EX_Rs1_data[21]
load net U1|EX_Rs1_data[22] -attr @rip(#000000) Rs1_data[22] -attr @name EX_Rs1_data[22] -pin U1|EX_PipelineReg Rs1_data[22] -pin U1|U5 EX_Rs1_data[22]
load net U1|EX_Rs1_data[23] -attr @rip(#000000) Rs1_data[23] -attr @name EX_Rs1_data[23] -pin U1|EX_PipelineReg Rs1_data[23] -pin U1|U5 EX_Rs1_data[23]
load net U1|EX_Rs1_data[24] -attr @rip(#000000) Rs1_data[24] -attr @name EX_Rs1_data[24] -pin U1|EX_PipelineReg Rs1_data[24] -pin U1|U5 EX_Rs1_data[24]
load net U1|EX_Rs1_data[25] -attr @rip(#000000) Rs1_data[25] -attr @name EX_Rs1_data[25] -pin U1|EX_PipelineReg Rs1_data[25] -pin U1|U5 EX_Rs1_data[25]
load net U1|EX_Rs1_data[26] -attr @rip(#000000) Rs1_data[26] -attr @name EX_Rs1_data[26] -pin U1|EX_PipelineReg Rs1_data[26] -pin U1|U5 EX_Rs1_data[26]
load net U1|EX_Rs1_data[27] -attr @rip(#000000) Rs1_data[27] -attr @name EX_Rs1_data[27] -pin U1|EX_PipelineReg Rs1_data[27] -pin U1|U5 EX_Rs1_data[27]
load net U1|EX_Rs1_data[28] -attr @rip(#000000) Rs1_data[28] -attr @name EX_Rs1_data[28] -pin U1|EX_PipelineReg Rs1_data[28] -pin U1|U5 EX_Rs1_data[28]
load net U1|EX_Rs1_data[29] -attr @rip(#000000) Rs1_data[29] -attr @name EX_Rs1_data[29] -pin U1|EX_PipelineReg Rs1_data[29] -pin U1|U5 EX_Rs1_data[29]
load net U1|EX_Rs1_data[2] -attr @rip(#000000) Rs1_data[2] -attr @name EX_Rs1_data[2] -pin U1|EX_PipelineReg Rs1_data[2] -pin U1|U5 EX_Rs1_data[2]
load net U1|EX_Rs1_data[30] -attr @rip(#000000) Rs1_data[30] -attr @name EX_Rs1_data[30] -pin U1|EX_PipelineReg Rs1_data[30] -pin U1|U5 EX_Rs1_data[30]
load net U1|EX_Rs1_data[31] -attr @rip(#000000) Rs1_data[31] -attr @name EX_Rs1_data[31] -pin U1|EX_PipelineReg Rs1_data[31] -pin U1|U5 EX_Rs1_data[31]
load net U1|EX_Rs1_data[3] -attr @rip(#000000) Rs1_data[3] -attr @name EX_Rs1_data[3] -pin U1|EX_PipelineReg Rs1_data[3] -pin U1|U5 EX_Rs1_data[3]
load net U1|EX_Rs1_data[4] -attr @rip(#000000) Rs1_data[4] -attr @name EX_Rs1_data[4] -pin U1|EX_PipelineReg Rs1_data[4] -pin U1|U5 EX_Rs1_data[4]
load net U1|EX_Rs1_data[5] -attr @rip(#000000) Rs1_data[5] -attr @name EX_Rs1_data[5] -pin U1|EX_PipelineReg Rs1_data[5] -pin U1|U5 EX_Rs1_data[5]
load net U1|EX_Rs1_data[6] -attr @rip(#000000) Rs1_data[6] -attr @name EX_Rs1_data[6] -pin U1|EX_PipelineReg Rs1_data[6] -pin U1|U5 EX_Rs1_data[6]
load net U1|EX_Rs1_data[7] -attr @rip(#000000) Rs1_data[7] -attr @name EX_Rs1_data[7] -pin U1|EX_PipelineReg Rs1_data[7] -pin U1|U5 EX_Rs1_data[7]
load net U1|EX_Rs1_data[8] -attr @rip(#000000) Rs1_data[8] -attr @name EX_Rs1_data[8] -pin U1|EX_PipelineReg Rs1_data[8] -pin U1|U5 EX_Rs1_data[8]
load net U1|EX_Rs1_data[9] -attr @rip(#000000) Rs1_data[9] -attr @name EX_Rs1_data[9] -pin U1|EX_PipelineReg Rs1_data[9] -pin U1|U5 EX_Rs1_data[9]
load net U1|EX_Rs1_data_in[0] -attr @rip(#000000) Rs1_data[0] -attr @name EX_Rs1_data_in[0] -pin U1|EX_PipelineReg Rs1_data_in[0] -pin U1|U2 Rs1_data[0]
load net U1|EX_Rs1_data_in[10] -attr @rip(#000000) Rs1_data[10] -attr @name EX_Rs1_data_in[10] -pin U1|EX_PipelineReg Rs1_data_in[10] -pin U1|U2 Rs1_data[10]
load net U1|EX_Rs1_data_in[11] -attr @rip(#000000) Rs1_data[11] -attr @name EX_Rs1_data_in[11] -pin U1|EX_PipelineReg Rs1_data_in[11] -pin U1|U2 Rs1_data[11]
load net U1|EX_Rs1_data_in[12] -attr @rip(#000000) Rs1_data[12] -attr @name EX_Rs1_data_in[12] -pin U1|EX_PipelineReg Rs1_data_in[12] -pin U1|U2 Rs1_data[12]
load net U1|EX_Rs1_data_in[13] -attr @rip(#000000) Rs1_data[13] -attr @name EX_Rs1_data_in[13] -pin U1|EX_PipelineReg Rs1_data_in[13] -pin U1|U2 Rs1_data[13]
load net U1|EX_Rs1_data_in[14] -attr @rip(#000000) Rs1_data[14] -attr @name EX_Rs1_data_in[14] -pin U1|EX_PipelineReg Rs1_data_in[14] -pin U1|U2 Rs1_data[14]
load net U1|EX_Rs1_data_in[15] -attr @rip(#000000) Rs1_data[15] -attr @name EX_Rs1_data_in[15] -pin U1|EX_PipelineReg Rs1_data_in[15] -pin U1|U2 Rs1_data[15]
load net U1|EX_Rs1_data_in[16] -attr @rip(#000000) Rs1_data[16] -attr @name EX_Rs1_data_in[16] -pin U1|EX_PipelineReg Rs1_data_in[16] -pin U1|U2 Rs1_data[16]
load net U1|EX_Rs1_data_in[17] -attr @rip(#000000) Rs1_data[17] -attr @name EX_Rs1_data_in[17] -pin U1|EX_PipelineReg Rs1_data_in[17] -pin U1|U2 Rs1_data[17]
load net U1|EX_Rs1_data_in[18] -attr @rip(#000000) Rs1_data[18] -attr @name EX_Rs1_data_in[18] -pin U1|EX_PipelineReg Rs1_data_in[18] -pin U1|U2 Rs1_data[18]
load net U1|EX_Rs1_data_in[19] -attr @rip(#000000) Rs1_data[19] -attr @name EX_Rs1_data_in[19] -pin U1|EX_PipelineReg Rs1_data_in[19] -pin U1|U2 Rs1_data[19]
load net U1|EX_Rs1_data_in[1] -attr @rip(#000000) Rs1_data[1] -attr @name EX_Rs1_data_in[1] -pin U1|EX_PipelineReg Rs1_data_in[1] -pin U1|U2 Rs1_data[1]
load net U1|EX_Rs1_data_in[20] -attr @rip(#000000) Rs1_data[20] -attr @name EX_Rs1_data_in[20] -pin U1|EX_PipelineReg Rs1_data_in[20] -pin U1|U2 Rs1_data[20]
load net U1|EX_Rs1_data_in[21] -attr @rip(#000000) Rs1_data[21] -attr @name EX_Rs1_data_in[21] -pin U1|EX_PipelineReg Rs1_data_in[21] -pin U1|U2 Rs1_data[21]
load net U1|EX_Rs1_data_in[22] -attr @rip(#000000) Rs1_data[22] -attr @name EX_Rs1_data_in[22] -pin U1|EX_PipelineReg Rs1_data_in[22] -pin U1|U2 Rs1_data[22]
load net U1|EX_Rs1_data_in[23] -attr @rip(#000000) Rs1_data[23] -attr @name EX_Rs1_data_in[23] -pin U1|EX_PipelineReg Rs1_data_in[23] -pin U1|U2 Rs1_data[23]
load net U1|EX_Rs1_data_in[24] -attr @rip(#000000) Rs1_data[24] -attr @name EX_Rs1_data_in[24] -pin U1|EX_PipelineReg Rs1_data_in[24] -pin U1|U2 Rs1_data[24]
load net U1|EX_Rs1_data_in[25] -attr @rip(#000000) Rs1_data[25] -attr @name EX_Rs1_data_in[25] -pin U1|EX_PipelineReg Rs1_data_in[25] -pin U1|U2 Rs1_data[25]
load net U1|EX_Rs1_data_in[26] -attr @rip(#000000) Rs1_data[26] -attr @name EX_Rs1_data_in[26] -pin U1|EX_PipelineReg Rs1_data_in[26] -pin U1|U2 Rs1_data[26]
load net U1|EX_Rs1_data_in[27] -attr @rip(#000000) Rs1_data[27] -attr @name EX_Rs1_data_in[27] -pin U1|EX_PipelineReg Rs1_data_in[27] -pin U1|U2 Rs1_data[27]
load net U1|EX_Rs1_data_in[28] -attr @rip(#000000) Rs1_data[28] -attr @name EX_Rs1_data_in[28] -pin U1|EX_PipelineReg Rs1_data_in[28] -pin U1|U2 Rs1_data[28]
load net U1|EX_Rs1_data_in[29] -attr @rip(#000000) Rs1_data[29] -attr @name EX_Rs1_data_in[29] -pin U1|EX_PipelineReg Rs1_data_in[29] -pin U1|U2 Rs1_data[29]
load net U1|EX_Rs1_data_in[2] -attr @rip(#000000) Rs1_data[2] -attr @name EX_Rs1_data_in[2] -pin U1|EX_PipelineReg Rs1_data_in[2] -pin U1|U2 Rs1_data[2]
load net U1|EX_Rs1_data_in[30] -attr @rip(#000000) Rs1_data[30] -attr @name EX_Rs1_data_in[30] -pin U1|EX_PipelineReg Rs1_data_in[30] -pin U1|U2 Rs1_data[30]
load net U1|EX_Rs1_data_in[31] -attr @rip(#000000) Rs1_data[31] -attr @name EX_Rs1_data_in[31] -pin U1|EX_PipelineReg Rs1_data_in[31] -pin U1|U2 Rs1_data[31]
load net U1|EX_Rs1_data_in[3] -attr @rip(#000000) Rs1_data[3] -attr @name EX_Rs1_data_in[3] -pin U1|EX_PipelineReg Rs1_data_in[3] -pin U1|U2 Rs1_data[3]
load net U1|EX_Rs1_data_in[4] -attr @rip(#000000) Rs1_data[4] -attr @name EX_Rs1_data_in[4] -pin U1|EX_PipelineReg Rs1_data_in[4] -pin U1|U2 Rs1_data[4]
load net U1|EX_Rs1_data_in[5] -attr @rip(#000000) Rs1_data[5] -attr @name EX_Rs1_data_in[5] -pin U1|EX_PipelineReg Rs1_data_in[5] -pin U1|U2 Rs1_data[5]
load net U1|EX_Rs1_data_in[6] -attr @rip(#000000) Rs1_data[6] -attr @name EX_Rs1_data_in[6] -pin U1|EX_PipelineReg Rs1_data_in[6] -pin U1|U2 Rs1_data[6]
load net U1|EX_Rs1_data_in[7] -attr @rip(#000000) Rs1_data[7] -attr @name EX_Rs1_data_in[7] -pin U1|EX_PipelineReg Rs1_data_in[7] -pin U1|U2 Rs1_data[7]
load net U1|EX_Rs1_data_in[8] -attr @rip(#000000) Rs1_data[8] -attr @name EX_Rs1_data_in[8] -pin U1|EX_PipelineReg Rs1_data_in[8] -pin U1|U2 Rs1_data[8]
load net U1|EX_Rs1_data_in[9] -attr @rip(#000000) Rs1_data[9] -attr @name EX_Rs1_data_in[9] -pin U1|EX_PipelineReg Rs1_data_in[9] -pin U1|U2 Rs1_data[9]
load net U1|EX_Rs2_addr[0] -attr @rip(#000000) Rs2_addr[0] -attr @name EX_Rs2_addr[0] -pin U1|EX_PipelineReg Rs2_addr[0] -pin U1|U5 EX_Rs2_addr[0]
load net U1|EX_Rs2_addr[1] -attr @rip(#000000) Rs2_addr[1] -attr @name EX_Rs2_addr[1] -pin U1|EX_PipelineReg Rs2_addr[1] -pin U1|U5 EX_Rs2_addr[1]
load net U1|EX_Rs2_addr[2] -attr @rip(#000000) Rs2_addr[2] -attr @name EX_Rs2_addr[2] -pin U1|EX_PipelineReg Rs2_addr[2] -pin U1|U5 EX_Rs2_addr[2]
load net U1|EX_Rs2_addr[3] -attr @rip(#000000) Rs2_addr[3] -attr @name EX_Rs2_addr[3] -pin U1|EX_PipelineReg Rs2_addr[3] -pin U1|U5 EX_Rs2_addr[3]
load net U1|EX_Rs2_addr[4] -attr @rip(#000000) Rs2_addr[4] -attr @name EX_Rs2_addr[4] -pin U1|EX_PipelineReg Rs2_addr[4] -pin U1|U5 EX_Rs2_addr[4]
load net U1|EX_Rs2_data[0] -attr @rip(#000000) Rs2_data[0] -attr @name EX_Rs2_data[0] -pin U1|EX_PipelineReg Rs2_data[0] -pin U1|U5 EX_Rs2_data[0]
load net U1|EX_Rs2_data[10] -attr @rip(#000000) Rs2_data[10] -attr @name EX_Rs2_data[10] -pin U1|EX_PipelineReg Rs2_data[10] -pin U1|U5 EX_Rs2_data[10]
load net U1|EX_Rs2_data[11] -attr @rip(#000000) Rs2_data[11] -attr @name EX_Rs2_data[11] -pin U1|EX_PipelineReg Rs2_data[11] -pin U1|U5 EX_Rs2_data[11]
load net U1|EX_Rs2_data[12] -attr @rip(#000000) Rs2_data[12] -attr @name EX_Rs2_data[12] -pin U1|EX_PipelineReg Rs2_data[12] -pin U1|U5 EX_Rs2_data[12]
load net U1|EX_Rs2_data[13] -attr @rip(#000000) Rs2_data[13] -attr @name EX_Rs2_data[13] -pin U1|EX_PipelineReg Rs2_data[13] -pin U1|U5 EX_Rs2_data[13]
load net U1|EX_Rs2_data[14] -attr @rip(#000000) Rs2_data[14] -attr @name EX_Rs2_data[14] -pin U1|EX_PipelineReg Rs2_data[14] -pin U1|U5 EX_Rs2_data[14]
load net U1|EX_Rs2_data[15] -attr @rip(#000000) Rs2_data[15] -attr @name EX_Rs2_data[15] -pin U1|EX_PipelineReg Rs2_data[15] -pin U1|U5 EX_Rs2_data[15]
load net U1|EX_Rs2_data[16] -attr @rip(#000000) Rs2_data[16] -attr @name EX_Rs2_data[16] -pin U1|EX_PipelineReg Rs2_data[16] -pin U1|U5 EX_Rs2_data[16]
load net U1|EX_Rs2_data[17] -attr @rip(#000000) Rs2_data[17] -attr @name EX_Rs2_data[17] -pin U1|EX_PipelineReg Rs2_data[17] -pin U1|U5 EX_Rs2_data[17]
load net U1|EX_Rs2_data[18] -attr @rip(#000000) Rs2_data[18] -attr @name EX_Rs2_data[18] -pin U1|EX_PipelineReg Rs2_data[18] -pin U1|U5 EX_Rs2_data[18]
load net U1|EX_Rs2_data[19] -attr @rip(#000000) Rs2_data[19] -attr @name EX_Rs2_data[19] -pin U1|EX_PipelineReg Rs2_data[19] -pin U1|U5 EX_Rs2_data[19]
load net U1|EX_Rs2_data[1] -attr @rip(#000000) Rs2_data[1] -attr @name EX_Rs2_data[1] -pin U1|EX_PipelineReg Rs2_data[1] -pin U1|U5 EX_Rs2_data[1]
load net U1|EX_Rs2_data[20] -attr @rip(#000000) Rs2_data[20] -attr @name EX_Rs2_data[20] -pin U1|EX_PipelineReg Rs2_data[20] -pin U1|U5 EX_Rs2_data[20]
load net U1|EX_Rs2_data[21] -attr @rip(#000000) Rs2_data[21] -attr @name EX_Rs2_data[21] -pin U1|EX_PipelineReg Rs2_data[21] -pin U1|U5 EX_Rs2_data[21]
load net U1|EX_Rs2_data[22] -attr @rip(#000000) Rs2_data[22] -attr @name EX_Rs2_data[22] -pin U1|EX_PipelineReg Rs2_data[22] -pin U1|U5 EX_Rs2_data[22]
load net U1|EX_Rs2_data[23] -attr @rip(#000000) Rs2_data[23] -attr @name EX_Rs2_data[23] -pin U1|EX_PipelineReg Rs2_data[23] -pin U1|U5 EX_Rs2_data[23]
load net U1|EX_Rs2_data[24] -attr @rip(#000000) Rs2_data[24] -attr @name EX_Rs2_data[24] -pin U1|EX_PipelineReg Rs2_data[24] -pin U1|U5 EX_Rs2_data[24]
load net U1|EX_Rs2_data[25] -attr @rip(#000000) Rs2_data[25] -attr @name EX_Rs2_data[25] -pin U1|EX_PipelineReg Rs2_data[25] -pin U1|U5 EX_Rs2_data[25]
load net U1|EX_Rs2_data[26] -attr @rip(#000000) Rs2_data[26] -attr @name EX_Rs2_data[26] -pin U1|EX_PipelineReg Rs2_data[26] -pin U1|U5 EX_Rs2_data[26]
load net U1|EX_Rs2_data[27] -attr @rip(#000000) Rs2_data[27] -attr @name EX_Rs2_data[27] -pin U1|EX_PipelineReg Rs2_data[27] -pin U1|U5 EX_Rs2_data[27]
load net U1|EX_Rs2_data[28] -attr @rip(#000000) Rs2_data[28] -attr @name EX_Rs2_data[28] -pin U1|EX_PipelineReg Rs2_data[28] -pin U1|U5 EX_Rs2_data[28]
load net U1|EX_Rs2_data[29] -attr @rip(#000000) Rs2_data[29] -attr @name EX_Rs2_data[29] -pin U1|EX_PipelineReg Rs2_data[29] -pin U1|U5 EX_Rs2_data[29]
load net U1|EX_Rs2_data[2] -attr @rip(#000000) Rs2_data[2] -attr @name EX_Rs2_data[2] -pin U1|EX_PipelineReg Rs2_data[2] -pin U1|U5 EX_Rs2_data[2]
load net U1|EX_Rs2_data[30] -attr @rip(#000000) Rs2_data[30] -attr @name EX_Rs2_data[30] -pin U1|EX_PipelineReg Rs2_data[30] -pin U1|U5 EX_Rs2_data[30]
load net U1|EX_Rs2_data[31] -attr @rip(#000000) Rs2_data[31] -attr @name EX_Rs2_data[31] -pin U1|EX_PipelineReg Rs2_data[31] -pin U1|U5 EX_Rs2_data[31]
load net U1|EX_Rs2_data[3] -attr @rip(#000000) Rs2_data[3] -attr @name EX_Rs2_data[3] -pin U1|EX_PipelineReg Rs2_data[3] -pin U1|U5 EX_Rs2_data[3]
load net U1|EX_Rs2_data[4] -attr @rip(#000000) Rs2_data[4] -attr @name EX_Rs2_data[4] -pin U1|EX_PipelineReg Rs2_data[4] -pin U1|U5 EX_Rs2_data[4]
load net U1|EX_Rs2_data[5] -attr @rip(#000000) Rs2_data[5] -attr @name EX_Rs2_data[5] -pin U1|EX_PipelineReg Rs2_data[5] -pin U1|U5 EX_Rs2_data[5]
load net U1|EX_Rs2_data[6] -attr @rip(#000000) Rs2_data[6] -attr @name EX_Rs2_data[6] -pin U1|EX_PipelineReg Rs2_data[6] -pin U1|U5 EX_Rs2_data[6]
load net U1|EX_Rs2_data[7] -attr @rip(#000000) Rs2_data[7] -attr @name EX_Rs2_data[7] -pin U1|EX_PipelineReg Rs2_data[7] -pin U1|U5 EX_Rs2_data[7]
load net U1|EX_Rs2_data[8] -attr @rip(#000000) Rs2_data[8] -attr @name EX_Rs2_data[8] -pin U1|EX_PipelineReg Rs2_data[8] -pin U1|U5 EX_Rs2_data[8]
load net U1|EX_Rs2_data[9] -attr @rip(#000000) Rs2_data[9] -attr @name EX_Rs2_data[9] -pin U1|EX_PipelineReg Rs2_data[9] -pin U1|U5 EX_Rs2_data[9]
load net U1|EX_Rs2_data_in[0] -attr @rip(#000000) Rs2_data[0] -attr @name EX_Rs2_data_in[0] -pin U1|EX_PipelineReg Data_out_in[0] -pin U1|EX_PipelineReg Rs2_data_in[0] -pin U1|U2 Rs2_data[0]
load net U1|EX_Rs2_data_in[10] -attr @rip(#000000) Rs2_data[10] -attr @name EX_Rs2_data_in[10] -pin U1|EX_PipelineReg Data_out_in[10] -pin U1|EX_PipelineReg Rs2_data_in[10] -pin U1|U2 Rs2_data[10]
load net U1|EX_Rs2_data_in[11] -attr @rip(#000000) Rs2_data[11] -attr @name EX_Rs2_data_in[11] -pin U1|EX_PipelineReg Data_out_in[11] -pin U1|EX_PipelineReg Rs2_data_in[11] -pin U1|U2 Rs2_data[11]
load net U1|EX_Rs2_data_in[12] -attr @rip(#000000) Rs2_data[12] -attr @name EX_Rs2_data_in[12] -pin U1|EX_PipelineReg Data_out_in[12] -pin U1|EX_PipelineReg Rs2_data_in[12] -pin U1|U2 Rs2_data[12]
load net U1|EX_Rs2_data_in[13] -attr @rip(#000000) Rs2_data[13] -attr @name EX_Rs2_data_in[13] -pin U1|EX_PipelineReg Data_out_in[13] -pin U1|EX_PipelineReg Rs2_data_in[13] -pin U1|U2 Rs2_data[13]
load net U1|EX_Rs2_data_in[14] -attr @rip(#000000) Rs2_data[14] -attr @name EX_Rs2_data_in[14] -pin U1|EX_PipelineReg Data_out_in[14] -pin U1|EX_PipelineReg Rs2_data_in[14] -pin U1|U2 Rs2_data[14]
load net U1|EX_Rs2_data_in[15] -attr @rip(#000000) Rs2_data[15] -attr @name EX_Rs2_data_in[15] -pin U1|EX_PipelineReg Data_out_in[15] -pin U1|EX_PipelineReg Rs2_data_in[15] -pin U1|U2 Rs2_data[15]
load net U1|EX_Rs2_data_in[16] -attr @rip(#000000) Rs2_data[16] -attr @name EX_Rs2_data_in[16] -pin U1|EX_PipelineReg Data_out_in[16] -pin U1|EX_PipelineReg Rs2_data_in[16] -pin U1|U2 Rs2_data[16]
load net U1|EX_Rs2_data_in[17] -attr @rip(#000000) Rs2_data[17] -attr @name EX_Rs2_data_in[17] -pin U1|EX_PipelineReg Data_out_in[17] -pin U1|EX_PipelineReg Rs2_data_in[17] -pin U1|U2 Rs2_data[17]
load net U1|EX_Rs2_data_in[18] -attr @rip(#000000) Rs2_data[18] -attr @name EX_Rs2_data_in[18] -pin U1|EX_PipelineReg Data_out_in[18] -pin U1|EX_PipelineReg Rs2_data_in[18] -pin U1|U2 Rs2_data[18]
load net U1|EX_Rs2_data_in[19] -attr @rip(#000000) Rs2_data[19] -attr @name EX_Rs2_data_in[19] -pin U1|EX_PipelineReg Data_out_in[19] -pin U1|EX_PipelineReg Rs2_data_in[19] -pin U1|U2 Rs2_data[19]
load net U1|EX_Rs2_data_in[1] -attr @rip(#000000) Rs2_data[1] -attr @name EX_Rs2_data_in[1] -pin U1|EX_PipelineReg Data_out_in[1] -pin U1|EX_PipelineReg Rs2_data_in[1] -pin U1|U2 Rs2_data[1]
load net U1|EX_Rs2_data_in[20] -attr @rip(#000000) Rs2_data[20] -attr @name EX_Rs2_data_in[20] -pin U1|EX_PipelineReg Data_out_in[20] -pin U1|EX_PipelineReg Rs2_data_in[20] -pin U1|U2 Rs2_data[20]
load net U1|EX_Rs2_data_in[21] -attr @rip(#000000) Rs2_data[21] -attr @name EX_Rs2_data_in[21] -pin U1|EX_PipelineReg Data_out_in[21] -pin U1|EX_PipelineReg Rs2_data_in[21] -pin U1|U2 Rs2_data[21]
load net U1|EX_Rs2_data_in[22] -attr @rip(#000000) Rs2_data[22] -attr @name EX_Rs2_data_in[22] -pin U1|EX_PipelineReg Data_out_in[22] -pin U1|EX_PipelineReg Rs2_data_in[22] -pin U1|U2 Rs2_data[22]
load net U1|EX_Rs2_data_in[23] -attr @rip(#000000) Rs2_data[23] -attr @name EX_Rs2_data_in[23] -pin U1|EX_PipelineReg Data_out_in[23] -pin U1|EX_PipelineReg Rs2_data_in[23] -pin U1|U2 Rs2_data[23]
load net U1|EX_Rs2_data_in[24] -attr @rip(#000000) Rs2_data[24] -attr @name EX_Rs2_data_in[24] -pin U1|EX_PipelineReg Data_out_in[24] -pin U1|EX_PipelineReg Rs2_data_in[24] -pin U1|U2 Rs2_data[24]
load net U1|EX_Rs2_data_in[25] -attr @rip(#000000) Rs2_data[25] -attr @name EX_Rs2_data_in[25] -pin U1|EX_PipelineReg Data_out_in[25] -pin U1|EX_PipelineReg Rs2_data_in[25] -pin U1|U2 Rs2_data[25]
load net U1|EX_Rs2_data_in[26] -attr @rip(#000000) Rs2_data[26] -attr @name EX_Rs2_data_in[26] -pin U1|EX_PipelineReg Data_out_in[26] -pin U1|EX_PipelineReg Rs2_data_in[26] -pin U1|U2 Rs2_data[26]
load net U1|EX_Rs2_data_in[27] -attr @rip(#000000) Rs2_data[27] -attr @name EX_Rs2_data_in[27] -pin U1|EX_PipelineReg Data_out_in[27] -pin U1|EX_PipelineReg Rs2_data_in[27] -pin U1|U2 Rs2_data[27]
load net U1|EX_Rs2_data_in[28] -attr @rip(#000000) Rs2_data[28] -attr @name EX_Rs2_data_in[28] -pin U1|EX_PipelineReg Data_out_in[28] -pin U1|EX_PipelineReg Rs2_data_in[28] -pin U1|U2 Rs2_data[28]
load net U1|EX_Rs2_data_in[29] -attr @rip(#000000) Rs2_data[29] -attr @name EX_Rs2_data_in[29] -pin U1|EX_PipelineReg Data_out_in[29] -pin U1|EX_PipelineReg Rs2_data_in[29] -pin U1|U2 Rs2_data[29]
load net U1|EX_Rs2_data_in[2] -attr @rip(#000000) Rs2_data[2] -attr @name EX_Rs2_data_in[2] -pin U1|EX_PipelineReg Data_out_in[2] -pin U1|EX_PipelineReg Rs2_data_in[2] -pin U1|U2 Rs2_data[2]
load net U1|EX_Rs2_data_in[30] -attr @rip(#000000) Rs2_data[30] -attr @name EX_Rs2_data_in[30] -pin U1|EX_PipelineReg Data_out_in[30] -pin U1|EX_PipelineReg Rs2_data_in[30] -pin U1|U2 Rs2_data[30]
load net U1|EX_Rs2_data_in[31] -attr @rip(#000000) Rs2_data[31] -attr @name EX_Rs2_data_in[31] -pin U1|EX_PipelineReg Data_out_in[31] -pin U1|EX_PipelineReg Rs2_data_in[31] -pin U1|U2 Rs2_data[31]
load net U1|EX_Rs2_data_in[3] -attr @rip(#000000) Rs2_data[3] -attr @name EX_Rs2_data_in[3] -pin U1|EX_PipelineReg Data_out_in[3] -pin U1|EX_PipelineReg Rs2_data_in[3] -pin U1|U2 Rs2_data[3]
load net U1|EX_Rs2_data_in[4] -attr @rip(#000000) Rs2_data[4] -attr @name EX_Rs2_data_in[4] -pin U1|EX_PipelineReg Data_out_in[4] -pin U1|EX_PipelineReg Rs2_data_in[4] -pin U1|U2 Rs2_data[4]
load net U1|EX_Rs2_data_in[5] -attr @rip(#000000) Rs2_data[5] -attr @name EX_Rs2_data_in[5] -pin U1|EX_PipelineReg Data_out_in[5] -pin U1|EX_PipelineReg Rs2_data_in[5] -pin U1|U2 Rs2_data[5]
load net U1|EX_Rs2_data_in[6] -attr @rip(#000000) Rs2_data[6] -attr @name EX_Rs2_data_in[6] -pin U1|EX_PipelineReg Data_out_in[6] -pin U1|EX_PipelineReg Rs2_data_in[6] -pin U1|U2 Rs2_data[6]
load net U1|EX_Rs2_data_in[7] -attr @rip(#000000) Rs2_data[7] -attr @name EX_Rs2_data_in[7] -pin U1|EX_PipelineReg Data_out_in[7] -pin U1|EX_PipelineReg Rs2_data_in[7] -pin U1|U2 Rs2_data[7]
load net U1|EX_Rs2_data_in[8] -attr @rip(#000000) Rs2_data[8] -attr @name EX_Rs2_data_in[8] -pin U1|EX_PipelineReg Data_out_in[8] -pin U1|EX_PipelineReg Rs2_data_in[8] -pin U1|U2 Rs2_data[8]
load net U1|EX_Rs2_data_in[9] -attr @rip(#000000) Rs2_data[9] -attr @name EX_Rs2_data_in[9] -pin U1|EX_PipelineReg Data_out_in[9] -pin U1|EX_PipelineReg Rs2_data_in[9] -pin U1|U2 Rs2_data[9]
load net U1|EX_byte_n[0] -attr @rip(#000000) byte_n[0] -attr @name EX_byte_n[0] -pin U1|EX_PipelineReg byte_n[0] -pin U1|MEM_PipelineReg byte_n_in[0]
load net U1|EX_byte_n[1] -attr @rip(#000000) byte_n[1] -attr @name EX_byte_n[1] -pin U1|EX_PipelineReg byte_n[1] -pin U1|MEM_PipelineReg byte_n_in[1]
load net U1|EX_byte_n_in[0] -attr @rip(#000000) byte_n[0] -attr @name EX_byte_n_in[0] -pin U1|EX_PipelineReg byte_n_in[0] -pin U1|v1 byte_n[0]
load net U1|EX_byte_n_in[1] -attr @rip(#000000) byte_n[1] -attr @name EX_byte_n_in[1] -pin U1|EX_PipelineReg byte_n_in[1] -pin U1|v1 byte_n[1]
load net U1|EX_jump_choose -attr @name EX_jump_choose -pin U1|EX_PipelineReg jump_choose -pin U1|U7 EX_jump_choose
netloc U1|EX_jump_choose 1 5 5 2470 1108 NJ 1108 NJ 1108 3950J 1168 4940
load net U1|EX_jump_choose_in -attr @name EX_jump_choose_in -pin U1|EX_PipelineReg jump_choose_in -pin U1|v1 jump_choose
netloc U1|EX_jump_choose_in 1 7 2 3480J 648 4360
load net U1|EX_sign -attr @name EX_sign -pin U1|EX_PipelineReg sign -pin U1|MEM_PipelineReg sign_in
netloc U1|EX_sign 1 9 1 5120 628n
load net U1|EX_sign_in -attr @name EX_sign_in -pin U1|EX_PipelineReg sign_in -pin U1|v1 sign
netloc U1|EX_sign_in 1 7 2 3500J 688 4400
load net U1|EX_wea[0] -attr @rip(#000000) wea[0] -attr @name EX_wea[0] -pin U1|EX_PipelineReg wea[0] -pin U1|MEM_PipelineReg wea_in[0]
load net U1|EX_wea[1] -attr @rip(#000000) wea[1] -attr @name EX_wea[1] -pin U1|EX_PipelineReg wea[1] -pin U1|MEM_PipelineReg wea_in[1]
load net U1|EX_wea[2] -attr @rip(#000000) wea[2] -attr @name EX_wea[2] -pin U1|EX_PipelineReg wea[2] -pin U1|MEM_PipelineReg wea_in[2]
load net U1|EX_wea[3] -attr @rip(#000000) wea[3] -attr @name EX_wea[3] -pin U1|EX_PipelineReg wea[3] -pin U1|MEM_PipelineReg wea_in[3]
load net U1|EX_wea_in[0] -attr @rip(#000000) EX_wea_in[0] -attr @name EX_wea_in[0] -pin U1|EX_PipelineReg wea_in[0] -pin U1|U11 EX_wea_in[0]
load net U1|EX_wea_in[1] -attr @rip(#000000) EX_wea_in[1] -attr @name EX_wea_in[1] -pin U1|EX_PipelineReg wea_in[1] -pin U1|U11 EX_wea_in[1]
load net U1|EX_wea_in[2] -attr @rip(#000000) EX_wea_in[2] -attr @name EX_wea_in[2] -pin U1|EX_PipelineReg wea_in[2] -pin U1|U11 EX_wea_in[2]
load net U1|EX_wea_in[3] -attr @rip(#000000) EX_wea_in[3] -attr @name EX_wea_in[3] -pin U1|EX_PipelineReg wea_in[3] -pin U1|U11 EX_wea_in[3]
load net U1|EX_wea_in_temp[0] -attr @rip(#000000) wea[0] -attr @name EX_wea_in_temp[0] -pin U1|U11 EX_wea_in_temp[0] -pin U1|v1 wea[0]
load net U1|EX_wea_in_temp[1] -attr @rip(#000000) wea[1] -attr @name EX_wea_in_temp[1] -pin U1|U11 EX_wea_in_temp[1] -pin U1|v1 wea[1]
load net U1|EX_wea_in_temp[2] -attr @rip(#000000) wea[2] -attr @name EX_wea_in_temp[2] -pin U1|U11 EX_wea_in_temp[2] -pin U1|v1 wea[2]
load net U1|EX_wea_in_temp[3] -attr @rip(#000000) wea[3] -attr @name EX_wea_in_temp[3] -pin U1|U11 EX_wea_in_temp[3] -pin U1|v1 wea[3]
load net U1|ID_PC[0] -attr @rip(#000000) PC[0] -attr @name ID_PC[0] -pin U1|EX_PipelineReg PC_in[0] -pin U1|ID_PipelineReg PC[0] -pin U1|U0 ID_PC[0]
load net U1|ID_PC[10] -attr @rip(#000000) PC[10] -attr @name ID_PC[10] -pin U1|EX_PipelineReg PC_in[10] -pin U1|ID_PipelineReg PC[10] -pin U1|U0 ID_PC[10]
load net U1|ID_PC[11] -attr @rip(#000000) PC[11] -attr @name ID_PC[11] -pin U1|EX_PipelineReg PC_in[11] -pin U1|ID_PipelineReg PC[11] -pin U1|U0 ID_PC[11]
load net U1|ID_PC[12] -attr @rip(#000000) PC[12] -attr @name ID_PC[12] -pin U1|EX_PipelineReg PC_in[12] -pin U1|ID_PipelineReg PC[12] -pin U1|U0 ID_PC[12]
load net U1|ID_PC[13] -attr @rip(#000000) PC[13] -attr @name ID_PC[13] -pin U1|EX_PipelineReg PC_in[13] -pin U1|ID_PipelineReg PC[13] -pin U1|U0 ID_PC[13]
load net U1|ID_PC[14] -attr @rip(#000000) PC[14] -attr @name ID_PC[14] -pin U1|EX_PipelineReg PC_in[14] -pin U1|ID_PipelineReg PC[14] -pin U1|U0 ID_PC[14]
load net U1|ID_PC[15] -attr @rip(#000000) PC[15] -attr @name ID_PC[15] -pin U1|EX_PipelineReg PC_in[15] -pin U1|ID_PipelineReg PC[15] -pin U1|U0 ID_PC[15]
load net U1|ID_PC[16] -attr @rip(#000000) PC[16] -attr @name ID_PC[16] -pin U1|EX_PipelineReg PC_in[16] -pin U1|ID_PipelineReg PC[16] -pin U1|U0 ID_PC[16]
load net U1|ID_PC[17] -attr @rip(#000000) PC[17] -attr @name ID_PC[17] -pin U1|EX_PipelineReg PC_in[17] -pin U1|ID_PipelineReg PC[17] -pin U1|U0 ID_PC[17]
load net U1|ID_PC[18] -attr @rip(#000000) PC[18] -attr @name ID_PC[18] -pin U1|EX_PipelineReg PC_in[18] -pin U1|ID_PipelineReg PC[18] -pin U1|U0 ID_PC[18]
load net U1|ID_PC[19] -attr @rip(#000000) PC[19] -attr @name ID_PC[19] -pin U1|EX_PipelineReg PC_in[19] -pin U1|ID_PipelineReg PC[19] -pin U1|U0 ID_PC[19]
load net U1|ID_PC[1] -attr @rip(#000000) PC[1] -attr @name ID_PC[1] -pin U1|EX_PipelineReg PC_in[1] -pin U1|ID_PipelineReg PC[1] -pin U1|U0 ID_PC[1]
load net U1|ID_PC[20] -attr @rip(#000000) PC[20] -attr @name ID_PC[20] -pin U1|EX_PipelineReg PC_in[20] -pin U1|ID_PipelineReg PC[20] -pin U1|U0 ID_PC[20]
load net U1|ID_PC[21] -attr @rip(#000000) PC[21] -attr @name ID_PC[21] -pin U1|EX_PipelineReg PC_in[21] -pin U1|ID_PipelineReg PC[21] -pin U1|U0 ID_PC[21]
load net U1|ID_PC[22] -attr @rip(#000000) PC[22] -attr @name ID_PC[22] -pin U1|EX_PipelineReg PC_in[22] -pin U1|ID_PipelineReg PC[22] -pin U1|U0 ID_PC[22]
load net U1|ID_PC[23] -attr @rip(#000000) PC[23] -attr @name ID_PC[23] -pin U1|EX_PipelineReg PC_in[23] -pin U1|ID_PipelineReg PC[23] -pin U1|U0 ID_PC[23]
load net U1|ID_PC[24] -attr @rip(#000000) PC[24] -attr @name ID_PC[24] -pin U1|EX_PipelineReg PC_in[24] -pin U1|ID_PipelineReg PC[24] -pin U1|U0 ID_PC[24]
load net U1|ID_PC[25] -attr @rip(#000000) PC[25] -attr @name ID_PC[25] -pin U1|EX_PipelineReg PC_in[25] -pin U1|ID_PipelineReg PC[25] -pin U1|U0 ID_PC[25]
load net U1|ID_PC[26] -attr @rip(#000000) PC[26] -attr @name ID_PC[26] -pin U1|EX_PipelineReg PC_in[26] -pin U1|ID_PipelineReg PC[26] -pin U1|U0 ID_PC[26]
load net U1|ID_PC[27] -attr @rip(#000000) PC[27] -attr @name ID_PC[27] -pin U1|EX_PipelineReg PC_in[27] -pin U1|ID_PipelineReg PC[27] -pin U1|U0 ID_PC[27]
load net U1|ID_PC[28] -attr @rip(#000000) PC[28] -attr @name ID_PC[28] -pin U1|EX_PipelineReg PC_in[28] -pin U1|ID_PipelineReg PC[28] -pin U1|U0 ID_PC[28]
load net U1|ID_PC[29] -attr @rip(#000000) PC[29] -attr @name ID_PC[29] -pin U1|EX_PipelineReg PC_in[29] -pin U1|ID_PipelineReg PC[29] -pin U1|U0 ID_PC[29]
load net U1|ID_PC[2] -attr @rip(#000000) PC[2] -attr @name ID_PC[2] -pin U1|EX_PipelineReg PC_in[2] -pin U1|ID_PipelineReg PC[2] -pin U1|U0 ID_PC[2]
load net U1|ID_PC[30] -attr @rip(#000000) PC[30] -attr @name ID_PC[30] -pin U1|EX_PipelineReg PC_in[30] -pin U1|ID_PipelineReg PC[30] -pin U1|U0 ID_PC[30]
load net U1|ID_PC[31] -attr @rip(#000000) PC[31] -attr @name ID_PC[31] -pin U1|EX_PipelineReg PC_in[31] -pin U1|ID_PipelineReg PC[31] -pin U1|U0 ID_PC[31]
load net U1|ID_PC[3] -attr @rip(#000000) PC[3] -attr @name ID_PC[3] -pin U1|EX_PipelineReg PC_in[3] -pin U1|ID_PipelineReg PC[3] -pin U1|U0 ID_PC[3]
load net U1|ID_PC[4] -attr @rip(#000000) PC[4] -attr @name ID_PC[4] -pin U1|EX_PipelineReg PC_in[4] -pin U1|ID_PipelineReg PC[4] -pin U1|U0 ID_PC[4]
load net U1|ID_PC[5] -attr @rip(#000000) PC[5] -attr @name ID_PC[5] -pin U1|EX_PipelineReg PC_in[5] -pin U1|ID_PipelineReg PC[5] -pin U1|U0 ID_PC[5]
load net U1|ID_PC[6] -attr @rip(#000000) PC[6] -attr @name ID_PC[6] -pin U1|EX_PipelineReg PC_in[6] -pin U1|ID_PipelineReg PC[6] -pin U1|U0 ID_PC[6]
load net U1|ID_PC[7] -attr @rip(#000000) PC[7] -attr @name ID_PC[7] -pin U1|EX_PipelineReg PC_in[7] -pin U1|ID_PipelineReg PC[7] -pin U1|U0 ID_PC[7]
load net U1|ID_PC[8] -attr @rip(#000000) PC[8] -attr @name ID_PC[8] -pin U1|EX_PipelineReg PC_in[8] -pin U1|ID_PipelineReg PC[8] -pin U1|U0 ID_PC[8]
load net U1|ID_PC[9] -attr @rip(#000000) PC[9] -attr @name ID_PC[9] -pin U1|EX_PipelineReg PC_in[9] -pin U1|ID_PipelineReg PC[9] -pin U1|U0 ID_PC[9]
load net U1|ID_inst[0] -attr @rip(#000000) inst[0] -attr @name ID_inst[0] -pin U1|ID_PipelineReg inst[0] -pin U1|U1 inst_field[0]
load net U1|ID_inst[10] -attr @rip(#000000) inst[10] -attr @name ID_inst[10] -pin U1|EX_PipelineReg Rd_addr_in[3] -pin U1|ID_PipelineReg inst[10] -pin U1|U1 inst_field[10]
load net U1|ID_inst[11] -attr @rip(#000000) inst[11] -attr @name ID_inst[11] -pin U1|EX_PipelineReg Rd_addr_in[4] -pin U1|ID_PipelineReg inst[11] -pin U1|U1 inst_field[11]
load net U1|ID_inst[12] -attr @rip(#000000) inst[12] -attr @name ID_inst[12] -pin U1|ID_PipelineReg inst[12] -pin U1|U1 inst_field[12] -pin U1|v1 Fun3[0]
load net U1|ID_inst[13] -attr @rip(#000000) inst[13] -attr @name ID_inst[13] -pin U1|ID_PipelineReg inst[13] -pin U1|U1 inst_field[13] -pin U1|v1 Fun3[1]
load net U1|ID_inst[14] -attr @rip(#000000) inst[14] -attr @name ID_inst[14] -pin U1|ID_PipelineReg inst[14] -pin U1|U1 inst_field[14] -pin U1|v1 Fun3[2]
load net U1|ID_inst[15] -attr @rip(#000000) inst[15] -attr @name ID_inst[15] -pin U1|EX_PipelineReg Rs1_addr_in[0] -pin U1|ID_PipelineReg inst[15] -pin U1|U1 inst_field[15] -pin U1|U2 Rs1_addr[0] -pin U1|U6 Rs1_addr[0]
load net U1|ID_inst[16] -attr @rip(#000000) inst[16] -attr @name ID_inst[16] -pin U1|EX_PipelineReg Rs1_addr_in[1] -pin U1|ID_PipelineReg inst[16] -pin U1|U1 inst_field[16] -pin U1|U2 Rs1_addr[1] -pin U1|U6 Rs1_addr[1]
load net U1|ID_inst[17] -attr @rip(#000000) inst[17] -attr @name ID_inst[17] -pin U1|EX_PipelineReg Rs1_addr_in[2] -pin U1|ID_PipelineReg inst[17] -pin U1|U1 inst_field[17] -pin U1|U2 Rs1_addr[2] -pin U1|U6 Rs1_addr[2]
load net U1|ID_inst[18] -attr @rip(#000000) inst[18] -attr @name ID_inst[18] -pin U1|EX_PipelineReg Rs1_addr_in[3] -pin U1|ID_PipelineReg inst[18] -pin U1|U1 inst_field[18] -pin U1|U2 Rs1_addr[3] -pin U1|U6 Rs1_addr[3]
load net U1|ID_inst[19] -attr @rip(#000000) inst[19] -attr @name ID_inst[19] -pin U1|EX_PipelineReg Rs1_addr_in[4] -pin U1|ID_PipelineReg inst[19] -pin U1|U1 inst_field[19] -pin U1|U2 Rs1_addr[4] -pin U1|U6 Rs1_addr[4]
load net U1|ID_inst[1] -attr @rip(#000000) inst[1] -attr @name ID_inst[1] -pin U1|ID_PipelineReg inst[1] -pin U1|U1 inst_field[1]
load net U1|ID_inst[20] -attr @rip(#000000) inst[20] -attr @name ID_inst[20] -pin U1|EX_PipelineReg Rs2_addr_in[0] -pin U1|ID_PipelineReg inst[20] -pin U1|U1 inst_field[20] -pin U1|U2 Rs2_addr[0] -pin U1|U6 Rs2_addr[0]
load net U1|ID_inst[21] -attr @rip(#000000) inst[21] -attr @name ID_inst[21] -pin U1|EX_PipelineReg Rs2_addr_in[1] -pin U1|ID_PipelineReg inst[21] -pin U1|U1 inst_field[21] -pin U1|U2 Rs2_addr[1] -pin U1|U6 Rs2_addr[1]
load net U1|ID_inst[22] -attr @rip(#000000) inst[22] -attr @name ID_inst[22] -pin U1|EX_PipelineReg Rs2_addr_in[2] -pin U1|ID_PipelineReg inst[22] -pin U1|U1 inst_field[22] -pin U1|U2 Rs2_addr[2] -pin U1|U6 Rs2_addr[2]
load net U1|ID_inst[23] -attr @rip(#000000) inst[23] -attr @name ID_inst[23] -pin U1|EX_PipelineReg Rs2_addr_in[3] -pin U1|ID_PipelineReg inst[23] -pin U1|U1 inst_field[23] -pin U1|U2 Rs2_addr[3] -pin U1|U6 Rs2_addr[3]
load net U1|ID_inst[24] -attr @rip(#000000) inst[24] -attr @name ID_inst[24] -pin U1|EX_PipelineReg Rs2_addr_in[4] -pin U1|ID_PipelineReg inst[24] -pin U1|U1 inst_field[24] -pin U1|U2 Rs2_addr[4] -pin U1|U6 Rs2_addr[4]
load net U1|ID_inst[25] -attr @rip(#000000) inst[25] -attr @name ID_inst[25] -pin U1|ID_PipelineReg inst[25] -pin U1|U1 inst_field[25] -pin U1|v1 Fun7[0]
load net U1|ID_inst[26] -attr @rip(#000000) inst[26] -attr @name ID_inst[26] -pin U1|ID_PipelineReg inst[26] -pin U1|U1 inst_field[26] -pin U1|v1 Fun7[1]
load net U1|ID_inst[27] -attr @rip(#000000) inst[27] -attr @name ID_inst[27] -pin U1|ID_PipelineReg inst[27] -pin U1|U1 inst_field[27] -pin U1|v1 Fun7[2]
load net U1|ID_inst[28] -attr @rip(#000000) inst[28] -attr @name ID_inst[28] -pin U1|ID_PipelineReg inst[28] -pin U1|U1 inst_field[28] -pin U1|v1 Fun7[3]
load net U1|ID_inst[29] -attr @rip(#000000) inst[29] -attr @name ID_inst[29] -pin U1|ID_PipelineReg inst[29] -pin U1|U1 inst_field[29] -pin U1|v1 Fun7[4]
load net U1|ID_inst[2] -attr @rip(#000000) inst[2] -attr @name ID_inst[2] -pin U1|ID_PipelineReg inst[2] -pin U1|U1 inst_field[2] -pin U1|v1 OPcode[0]
load net U1|ID_inst[30] -attr @rip(#000000) inst[30] -attr @name ID_inst[30] -pin U1|ID_PipelineReg inst[30] -pin U1|U1 inst_field[30] -pin U1|v1 Fun7[5]
load net U1|ID_inst[31] -attr @rip(#000000) inst[31] -attr @name ID_inst[31] -pin U1|ID_PipelineReg inst[31] -pin U1|U1 inst_field[31] -pin U1|v1 Fun7[6]
load net U1|ID_inst[3] -attr @rip(#000000) inst[3] -attr @name ID_inst[3] -pin U1|ID_PipelineReg inst[3] -pin U1|U1 inst_field[3] -pin U1|v1 OPcode[1]
load net U1|ID_inst[4] -attr @rip(#000000) inst[4] -attr @name ID_inst[4] -pin U1|ID_PipelineReg inst[4] -pin U1|U1 inst_field[4] -pin U1|v1 OPcode[2]
load net U1|ID_inst[5] -attr @rip(#000000) inst[5] -attr @name ID_inst[5] -pin U1|ID_PipelineReg inst[5] -pin U1|U1 inst_field[5] -pin U1|v1 OPcode[3]
load net U1|ID_inst[6] -attr @rip(#000000) inst[6] -attr @name ID_inst[6] -pin U1|ID_PipelineReg inst[6] -pin U1|U1 inst_field[6] -pin U1|v1 OPcode[4]
load net U1|ID_inst[7] -attr @rip(#000000) inst[7] -attr @name ID_inst[7] -pin U1|EX_PipelineReg Rd_addr_in[0] -pin U1|ID_PipelineReg inst[7] -pin U1|U1 inst_field[7]
load net U1|ID_inst[8] -attr @rip(#000000) inst[8] -attr @name ID_inst[8] -pin U1|EX_PipelineReg Rd_addr_in[1] -pin U1|ID_PipelineReg inst[8] -pin U1|U1 inst_field[8]
load net U1|ID_inst[9] -attr @rip(#000000) inst[9] -attr @name ID_inst[9] -pin U1|EX_PipelineReg Rd_addr_in[2] -pin U1|ID_PipelineReg inst[9] -pin U1|U1 inst_field[9]
load net U1|ID_pass -attr @name ID_pass -pin U1|U0 ID_pass -pin U1|U11 ID_pass
netloc U1|ID_pass 1 7 1 3600 568n
load net U1|Load_hazard -attr @name Load_hazard -pin U1|U0 Load_hazard -pin U1|U6 Load_hazard
netloc U1|Load_hazard 1 6 1 2890 888n
load net U1|MEM_Addr_out[0] -attr @rip(#000000) Addr_out[0] -attr @name MEM_Addr_out[0] -pin U1|MEM_PipelineReg Addr_out[0] -pin U1|U9 MEM_Addr_out[0]
load net U1|MEM_Addr_out[10] -attr @rip(#000000) Addr_out[10] -attr @name MEM_Addr_out[10] -pin U1|MEM_PipelineReg Addr_out[10] -pin U1|U9 MEM_Addr_out[10]
load net U1|MEM_Addr_out[11] -attr @rip(#000000) Addr_out[11] -attr @name MEM_Addr_out[11] -pin U1|MEM_PipelineReg Addr_out[11] -pin U1|U9 MEM_Addr_out[11]
load net U1|MEM_Addr_out[12] -attr @rip(#000000) Addr_out[12] -attr @name MEM_Addr_out[12] -pin U1|MEM_PipelineReg Addr_out[12] -pin U1|U9 MEM_Addr_out[12]
load net U1|MEM_Addr_out[13] -attr @rip(#000000) Addr_out[13] -attr @name MEM_Addr_out[13] -pin U1|MEM_PipelineReg Addr_out[13] -pin U1|U9 MEM_Addr_out[13]
load net U1|MEM_Addr_out[14] -attr @rip(#000000) Addr_out[14] -attr @name MEM_Addr_out[14] -pin U1|MEM_PipelineReg Addr_out[14] -pin U1|U9 MEM_Addr_out[14]
load net U1|MEM_Addr_out[15] -attr @rip(#000000) Addr_out[15] -attr @name MEM_Addr_out[15] -pin U1|MEM_PipelineReg Addr_out[15] -pin U1|U9 MEM_Addr_out[15]
load net U1|MEM_Addr_out[16] -attr @rip(#000000) Addr_out[16] -attr @name MEM_Addr_out[16] -pin U1|MEM_PipelineReg Addr_out[16] -pin U1|U9 MEM_Addr_out[16]
load net U1|MEM_Addr_out[17] -attr @rip(#000000) Addr_out[17] -attr @name MEM_Addr_out[17] -pin U1|MEM_PipelineReg Addr_out[17] -pin U1|U9 MEM_Addr_out[17]
load net U1|MEM_Addr_out[18] -attr @rip(#000000) Addr_out[18] -attr @name MEM_Addr_out[18] -pin U1|MEM_PipelineReg Addr_out[18] -pin U1|U9 MEM_Addr_out[18]
load net U1|MEM_Addr_out[19] -attr @rip(#000000) Addr_out[19] -attr @name MEM_Addr_out[19] -pin U1|MEM_PipelineReg Addr_out[19] -pin U1|U9 MEM_Addr_out[19]
load net U1|MEM_Addr_out[1] -attr @rip(#000000) Addr_out[1] -attr @name MEM_Addr_out[1] -pin U1|MEM_PipelineReg Addr_out[1] -pin U1|U9 MEM_Addr_out[1]
load net U1|MEM_Addr_out[20] -attr @rip(#000000) Addr_out[20] -attr @name MEM_Addr_out[20] -pin U1|MEM_PipelineReg Addr_out[20] -pin U1|U9 MEM_Addr_out[20]
load net U1|MEM_Addr_out[21] -attr @rip(#000000) Addr_out[21] -attr @name MEM_Addr_out[21] -pin U1|MEM_PipelineReg Addr_out[21] -pin U1|U9 MEM_Addr_out[21]
load net U1|MEM_Addr_out[22] -attr @rip(#000000) Addr_out[22] -attr @name MEM_Addr_out[22] -pin U1|MEM_PipelineReg Addr_out[22] -pin U1|U9 MEM_Addr_out[22]
load net U1|MEM_Addr_out[23] -attr @rip(#000000) Addr_out[23] -attr @name MEM_Addr_out[23] -pin U1|MEM_PipelineReg Addr_out[23] -pin U1|U9 MEM_Addr_out[23]
load net U1|MEM_Addr_out[24] -attr @rip(#000000) Addr_out[24] -attr @name MEM_Addr_out[24] -pin U1|MEM_PipelineReg Addr_out[24] -pin U1|U9 MEM_Addr_out[24]
load net U1|MEM_Addr_out[25] -attr @rip(#000000) Addr_out[25] -attr @name MEM_Addr_out[25] -pin U1|MEM_PipelineReg Addr_out[25] -pin U1|U9 MEM_Addr_out[25]
load net U1|MEM_Addr_out[26] -attr @rip(#000000) Addr_out[26] -attr @name MEM_Addr_out[26] -pin U1|MEM_PipelineReg Addr_out[26] -pin U1|U9 MEM_Addr_out[26]
load net U1|MEM_Addr_out[27] -attr @rip(#000000) Addr_out[27] -attr @name MEM_Addr_out[27] -pin U1|MEM_PipelineReg Addr_out[27] -pin U1|U9 MEM_Addr_out[27]
load net U1|MEM_Addr_out[28] -attr @rip(#000000) Addr_out[28] -attr @name MEM_Addr_out[28] -pin U1|MEM_PipelineReg Addr_out[28] -pin U1|U9 MEM_Addr_out[28]
load net U1|MEM_Addr_out[29] -attr @rip(#000000) Addr_out[29] -attr @name MEM_Addr_out[29] -pin U1|MEM_PipelineReg Addr_out[29] -pin U1|U9 MEM_Addr_out[29]
load net U1|MEM_Addr_out[2] -attr @rip(#000000) Addr_out[2] -attr @name MEM_Addr_out[2] -pin U1|MEM_PipelineReg Addr_out[2] -pin U1|U9 MEM_Addr_out[2]
load net U1|MEM_Addr_out[30] -attr @rip(#000000) Addr_out[30] -attr @name MEM_Addr_out[30] -pin U1|MEM_PipelineReg Addr_out[30] -pin U1|U9 MEM_Addr_out[30]
load net U1|MEM_Addr_out[31] -attr @rip(#000000) Addr_out[31] -attr @name MEM_Addr_out[31] -pin U1|MEM_PipelineReg Addr_out[31] -pin U1|U9 MEM_Addr_out[31]
load net U1|MEM_Addr_out[3] -attr @rip(#000000) Addr_out[3] -attr @name MEM_Addr_out[3] -pin U1|MEM_PipelineReg Addr_out[3] -pin U1|U9 MEM_Addr_out[3]
load net U1|MEM_Addr_out[4] -attr @rip(#000000) Addr_out[4] -attr @name MEM_Addr_out[4] -pin U1|MEM_PipelineReg Addr_out[4] -pin U1|U9 MEM_Addr_out[4]
load net U1|MEM_Addr_out[5] -attr @rip(#000000) Addr_out[5] -attr @name MEM_Addr_out[5] -pin U1|MEM_PipelineReg Addr_out[5] -pin U1|U9 MEM_Addr_out[5]
load net U1|MEM_Addr_out[6] -attr @rip(#000000) Addr_out[6] -attr @name MEM_Addr_out[6] -pin U1|MEM_PipelineReg Addr_out[6] -pin U1|U9 MEM_Addr_out[6]
load net U1|MEM_Addr_out[7] -attr @rip(#000000) Addr_out[7] -attr @name MEM_Addr_out[7] -pin U1|MEM_PipelineReg Addr_out[7] -pin U1|U9 MEM_Addr_out[7]
load net U1|MEM_Addr_out[8] -attr @rip(#000000) Addr_out[8] -attr @name MEM_Addr_out[8] -pin U1|MEM_PipelineReg Addr_out[8] -pin U1|U9 MEM_Addr_out[8]
load net U1|MEM_Addr_out[9] -attr @rip(#000000) Addr_out[9] -attr @name MEM_Addr_out[9] -pin U1|MEM_PipelineReg Addr_out[9] -pin U1|U9 MEM_Addr_out[9]
load net U1|MEM_Addr_out_in[0] -attr @rip(#000000) res[0] -attr @name MEM_Addr_out_in[0] -pin U1|MEM_PipelineReg Addr_out_in[0] -pin U1|U3 res[0] -pin U1|U7 ALU_out[0] -pin U1|U8 ALU_out[0]
load net U1|MEM_Addr_out_in[10] -attr @rip(#000000) res[10] -attr @name MEM_Addr_out_in[10] -pin U1|MEM_PipelineReg Addr_out_in[10] -pin U1|U3 res[10] -pin U1|U7 ALU_out[10] -pin U1|U8 ALU_out[10]
load net U1|MEM_Addr_out_in[11] -attr @rip(#000000) res[11] -attr @name MEM_Addr_out_in[11] -pin U1|MEM_PipelineReg Addr_out_in[11] -pin U1|U3 res[11] -pin U1|U7 ALU_out[11] -pin U1|U8 ALU_out[11]
load net U1|MEM_Addr_out_in[12] -attr @rip(#000000) res[12] -attr @name MEM_Addr_out_in[12] -pin U1|MEM_PipelineReg Addr_out_in[12] -pin U1|U3 res[12] -pin U1|U7 ALU_out[12] -pin U1|U8 ALU_out[12]
load net U1|MEM_Addr_out_in[13] -attr @rip(#000000) res[13] -attr @name MEM_Addr_out_in[13] -pin U1|MEM_PipelineReg Addr_out_in[13] -pin U1|U3 res[13] -pin U1|U7 ALU_out[13] -pin U1|U8 ALU_out[13]
load net U1|MEM_Addr_out_in[14] -attr @rip(#000000) res[14] -attr @name MEM_Addr_out_in[14] -pin U1|MEM_PipelineReg Addr_out_in[14] -pin U1|U3 res[14] -pin U1|U7 ALU_out[14] -pin U1|U8 ALU_out[14]
load net U1|MEM_Addr_out_in[15] -attr @rip(#000000) res[15] -attr @name MEM_Addr_out_in[15] -pin U1|MEM_PipelineReg Addr_out_in[15] -pin U1|U3 res[15] -pin U1|U7 ALU_out[15] -pin U1|U8 ALU_out[15]
load net U1|MEM_Addr_out_in[16] -attr @rip(#000000) res[16] -attr @name MEM_Addr_out_in[16] -pin U1|MEM_PipelineReg Addr_out_in[16] -pin U1|U3 res[16] -pin U1|U7 ALU_out[16] -pin U1|U8 ALU_out[16]
load net U1|MEM_Addr_out_in[17] -attr @rip(#000000) res[17] -attr @name MEM_Addr_out_in[17] -pin U1|MEM_PipelineReg Addr_out_in[17] -pin U1|U3 res[17] -pin U1|U7 ALU_out[17] -pin U1|U8 ALU_out[17]
load net U1|MEM_Addr_out_in[18] -attr @rip(#000000) res[18] -attr @name MEM_Addr_out_in[18] -pin U1|MEM_PipelineReg Addr_out_in[18] -pin U1|U3 res[18] -pin U1|U7 ALU_out[18] -pin U1|U8 ALU_out[18]
load net U1|MEM_Addr_out_in[19] -attr @rip(#000000) res[19] -attr @name MEM_Addr_out_in[19] -pin U1|MEM_PipelineReg Addr_out_in[19] -pin U1|U3 res[19] -pin U1|U7 ALU_out[19] -pin U1|U8 ALU_out[19]
load net U1|MEM_Addr_out_in[1] -attr @rip(#000000) res[1] -attr @name MEM_Addr_out_in[1] -pin U1|MEM_PipelineReg Addr_out_in[1] -pin U1|U3 res[1] -pin U1|U7 ALU_out[1] -pin U1|U8 ALU_out[1]
load net U1|MEM_Addr_out_in[20] -attr @rip(#000000) res[20] -attr @name MEM_Addr_out_in[20] -pin U1|MEM_PipelineReg Addr_out_in[20] -pin U1|U3 res[20] -pin U1|U7 ALU_out[20] -pin U1|U8 ALU_out[20]
load net U1|MEM_Addr_out_in[21] -attr @rip(#000000) res[21] -attr @name MEM_Addr_out_in[21] -pin U1|MEM_PipelineReg Addr_out_in[21] -pin U1|U3 res[21] -pin U1|U7 ALU_out[21] -pin U1|U8 ALU_out[21]
load net U1|MEM_Addr_out_in[22] -attr @rip(#000000) res[22] -attr @name MEM_Addr_out_in[22] -pin U1|MEM_PipelineReg Addr_out_in[22] -pin U1|U3 res[22] -pin U1|U7 ALU_out[22] -pin U1|U8 ALU_out[22]
load net U1|MEM_Addr_out_in[23] -attr @rip(#000000) res[23] -attr @name MEM_Addr_out_in[23] -pin U1|MEM_PipelineReg Addr_out_in[23] -pin U1|U3 res[23] -pin U1|U7 ALU_out[23] -pin U1|U8 ALU_out[23]
load net U1|MEM_Addr_out_in[24] -attr @rip(#000000) res[24] -attr @name MEM_Addr_out_in[24] -pin U1|MEM_PipelineReg Addr_out_in[24] -pin U1|U3 res[24] -pin U1|U7 ALU_out[24] -pin U1|U8 ALU_out[24]
load net U1|MEM_Addr_out_in[25] -attr @rip(#000000) res[25] -attr @name MEM_Addr_out_in[25] -pin U1|MEM_PipelineReg Addr_out_in[25] -pin U1|U3 res[25] -pin U1|U7 ALU_out[25] -pin U1|U8 ALU_out[25]
load net U1|MEM_Addr_out_in[26] -attr @rip(#000000) res[26] -attr @name MEM_Addr_out_in[26] -pin U1|MEM_PipelineReg Addr_out_in[26] -pin U1|U3 res[26] -pin U1|U7 ALU_out[26] -pin U1|U8 ALU_out[26]
load net U1|MEM_Addr_out_in[27] -attr @rip(#000000) res[27] -attr @name MEM_Addr_out_in[27] -pin U1|MEM_PipelineReg Addr_out_in[27] -pin U1|U3 res[27] -pin U1|U7 ALU_out[27] -pin U1|U8 ALU_out[27]
load net U1|MEM_Addr_out_in[28] -attr @rip(#000000) res[28] -attr @name MEM_Addr_out_in[28] -pin U1|MEM_PipelineReg Addr_out_in[28] -pin U1|U3 res[28] -pin U1|U7 ALU_out[28] -pin U1|U8 ALU_out[28]
load net U1|MEM_Addr_out_in[29] -attr @rip(#000000) res[29] -attr @name MEM_Addr_out_in[29] -pin U1|MEM_PipelineReg Addr_out_in[29] -pin U1|U3 res[29] -pin U1|U7 ALU_out[29] -pin U1|U8 ALU_out[29]
load net U1|MEM_Addr_out_in[2] -attr @rip(#000000) res[2] -attr @name MEM_Addr_out_in[2] -pin U1|MEM_PipelineReg Addr_out_in[2] -pin U1|U3 res[2] -pin U1|U7 ALU_out[2] -pin U1|U8 ALU_out[2]
load net U1|MEM_Addr_out_in[30] -attr @rip(#000000) res[30] -attr @name MEM_Addr_out_in[30] -pin U1|MEM_PipelineReg Addr_out_in[30] -pin U1|U3 res[30] -pin U1|U7 ALU_out[30] -pin U1|U8 ALU_out[30]
load net U1|MEM_Addr_out_in[31] -attr @rip(#000000) res[31] -attr @name MEM_Addr_out_in[31] -pin U1|MEM_PipelineReg Addr_out_in[31] -pin U1|U3 res[31] -pin U1|U7 ALU_out[31] -pin U1|U8 ALU_out[31]
load net U1|MEM_Addr_out_in[3] -attr @rip(#000000) res[3] -attr @name MEM_Addr_out_in[3] -pin U1|MEM_PipelineReg Addr_out_in[3] -pin U1|U3 res[3] -pin U1|U7 ALU_out[3] -pin U1|U8 ALU_out[3]
load net U1|MEM_Addr_out_in[4] -attr @rip(#000000) res[4] -attr @name MEM_Addr_out_in[4] -pin U1|MEM_PipelineReg Addr_out_in[4] -pin U1|U3 res[4] -pin U1|U7 ALU_out[4] -pin U1|U8 ALU_out[4]
load net U1|MEM_Addr_out_in[5] -attr @rip(#000000) res[5] -attr @name MEM_Addr_out_in[5] -pin U1|MEM_PipelineReg Addr_out_in[5] -pin U1|U3 res[5] -pin U1|U7 ALU_out[5] -pin U1|U8 ALU_out[5]
load net U1|MEM_Addr_out_in[6] -attr @rip(#000000) res[6] -attr @name MEM_Addr_out_in[6] -pin U1|MEM_PipelineReg Addr_out_in[6] -pin U1|U3 res[6] -pin U1|U7 ALU_out[6] -pin U1|U8 ALU_out[6]
load net U1|MEM_Addr_out_in[7] -attr @rip(#000000) res[7] -attr @name MEM_Addr_out_in[7] -pin U1|MEM_PipelineReg Addr_out_in[7] -pin U1|U3 res[7] -pin U1|U7 ALU_out[7] -pin U1|U8 ALU_out[7]
load net U1|MEM_Addr_out_in[8] -attr @rip(#000000) res[8] -attr @name MEM_Addr_out_in[8] -pin U1|MEM_PipelineReg Addr_out_in[8] -pin U1|U3 res[8] -pin U1|U7 ALU_out[8] -pin U1|U8 ALU_out[8]
load net U1|MEM_Addr_out_in[9] -attr @rip(#000000) res[9] -attr @name MEM_Addr_out_in[9] -pin U1|MEM_PipelineReg Addr_out_in[9] -pin U1|U3 res[9] -pin U1|U7 ALU_out[9] -pin U1|U8 ALU_out[9]
load net U1|MEM_Data_out[0] -attr @rip(#000000) Data_out[0] -attr @name MEM_Data_out[0] -pin U1|MEM_PipelineReg Data_out[0] -pin U1|U9 MEM_Data_out[0]
load net U1|MEM_Data_out[10] -attr @rip(#000000) Data_out[10] -attr @name MEM_Data_out[10] -pin U1|MEM_PipelineReg Data_out[10] -pin U1|U9 MEM_Data_out[10]
load net U1|MEM_Data_out[11] -attr @rip(#000000) Data_out[11] -attr @name MEM_Data_out[11] -pin U1|MEM_PipelineReg Data_out[11] -pin U1|U9 MEM_Data_out[11]
load net U1|MEM_Data_out[12] -attr @rip(#000000) Data_out[12] -attr @name MEM_Data_out[12] -pin U1|MEM_PipelineReg Data_out[12] -pin U1|U9 MEM_Data_out[12]
load net U1|MEM_Data_out[13] -attr @rip(#000000) Data_out[13] -attr @name MEM_Data_out[13] -pin U1|MEM_PipelineReg Data_out[13] -pin U1|U9 MEM_Data_out[13]
load net U1|MEM_Data_out[14] -attr @rip(#000000) Data_out[14] -attr @name MEM_Data_out[14] -pin U1|MEM_PipelineReg Data_out[14] -pin U1|U9 MEM_Data_out[14]
load net U1|MEM_Data_out[15] -attr @rip(#000000) Data_out[15] -attr @name MEM_Data_out[15] -pin U1|MEM_PipelineReg Data_out[15] -pin U1|U9 MEM_Data_out[15]
load net U1|MEM_Data_out[16] -attr @rip(#000000) Data_out[16] -attr @name MEM_Data_out[16] -pin U1|MEM_PipelineReg Data_out[16] -pin U1|U9 MEM_Data_out[16]
load net U1|MEM_Data_out[17] -attr @rip(#000000) Data_out[17] -attr @name MEM_Data_out[17] -pin U1|MEM_PipelineReg Data_out[17] -pin U1|U9 MEM_Data_out[17]
load net U1|MEM_Data_out[18] -attr @rip(#000000) Data_out[18] -attr @name MEM_Data_out[18] -pin U1|MEM_PipelineReg Data_out[18] -pin U1|U9 MEM_Data_out[18]
load net U1|MEM_Data_out[19] -attr @rip(#000000) Data_out[19] -attr @name MEM_Data_out[19] -pin U1|MEM_PipelineReg Data_out[19] -pin U1|U9 MEM_Data_out[19]
load net U1|MEM_Data_out[1] -attr @rip(#000000) Data_out[1] -attr @name MEM_Data_out[1] -pin U1|MEM_PipelineReg Data_out[1] -pin U1|U9 MEM_Data_out[1]
load net U1|MEM_Data_out[20] -attr @rip(#000000) Data_out[20] -attr @name MEM_Data_out[20] -pin U1|MEM_PipelineReg Data_out[20] -pin U1|U9 MEM_Data_out[20]
load net U1|MEM_Data_out[21] -attr @rip(#000000) Data_out[21] -attr @name MEM_Data_out[21] -pin U1|MEM_PipelineReg Data_out[21] -pin U1|U9 MEM_Data_out[21]
load net U1|MEM_Data_out[22] -attr @rip(#000000) Data_out[22] -attr @name MEM_Data_out[22] -pin U1|MEM_PipelineReg Data_out[22] -pin U1|U9 MEM_Data_out[22]
load net U1|MEM_Data_out[23] -attr @rip(#000000) Data_out[23] -attr @name MEM_Data_out[23] -pin U1|MEM_PipelineReg Data_out[23] -pin U1|U9 MEM_Data_out[23]
load net U1|MEM_Data_out[24] -attr @rip(#000000) Data_out[24] -attr @name MEM_Data_out[24] -pin U1|MEM_PipelineReg Data_out[24] -pin U1|U9 MEM_Data_out[24]
load net U1|MEM_Data_out[25] -attr @rip(#000000) Data_out[25] -attr @name MEM_Data_out[25] -pin U1|MEM_PipelineReg Data_out[25] -pin U1|U9 MEM_Data_out[25]
load net U1|MEM_Data_out[26] -attr @rip(#000000) Data_out[26] -attr @name MEM_Data_out[26] -pin U1|MEM_PipelineReg Data_out[26] -pin U1|U9 MEM_Data_out[26]
load net U1|MEM_Data_out[27] -attr @rip(#000000) Data_out[27] -attr @name MEM_Data_out[27] -pin U1|MEM_PipelineReg Data_out[27] -pin U1|U9 MEM_Data_out[27]
load net U1|MEM_Data_out[28] -attr @rip(#000000) Data_out[28] -attr @name MEM_Data_out[28] -pin U1|MEM_PipelineReg Data_out[28] -pin U1|U9 MEM_Data_out[28]
load net U1|MEM_Data_out[29] -attr @rip(#000000) Data_out[29] -attr @name MEM_Data_out[29] -pin U1|MEM_PipelineReg Data_out[29] -pin U1|U9 MEM_Data_out[29]
load net U1|MEM_Data_out[2] -attr @rip(#000000) Data_out[2] -attr @name MEM_Data_out[2] -pin U1|MEM_PipelineReg Data_out[2] -pin U1|U9 MEM_Data_out[2]
load net U1|MEM_Data_out[30] -attr @rip(#000000) Data_out[30] -attr @name MEM_Data_out[30] -pin U1|MEM_PipelineReg Data_out[30] -pin U1|U9 MEM_Data_out[30]
load net U1|MEM_Data_out[31] -attr @rip(#000000) Data_out[31] -attr @name MEM_Data_out[31] -pin U1|MEM_PipelineReg Data_out[31] -pin U1|U9 MEM_Data_out[31]
load net U1|MEM_Data_out[3] -attr @rip(#000000) Data_out[3] -attr @name MEM_Data_out[3] -pin U1|MEM_PipelineReg Data_out[3] -pin U1|U9 MEM_Data_out[3]
load net U1|MEM_Data_out[4] -attr @rip(#000000) Data_out[4] -attr @name MEM_Data_out[4] -pin U1|MEM_PipelineReg Data_out[4] -pin U1|U9 MEM_Data_out[4]
load net U1|MEM_Data_out[5] -attr @rip(#000000) Data_out[5] -attr @name MEM_Data_out[5] -pin U1|MEM_PipelineReg Data_out[5] -pin U1|U9 MEM_Data_out[5]
load net U1|MEM_Data_out[6] -attr @rip(#000000) Data_out[6] -attr @name MEM_Data_out[6] -pin U1|MEM_PipelineReg Data_out[6] -pin U1|U9 MEM_Data_out[6]
load net U1|MEM_Data_out[7] -attr @rip(#000000) Data_out[7] -attr @name MEM_Data_out[7] -pin U1|MEM_PipelineReg Data_out[7] -pin U1|U9 MEM_Data_out[7]
load net U1|MEM_Data_out[8] -attr @rip(#000000) Data_out[8] -attr @name MEM_Data_out[8] -pin U1|MEM_PipelineReg Data_out[8] -pin U1|U9 MEM_Data_out[8]
load net U1|MEM_Data_out[9] -attr @rip(#000000) Data_out[9] -attr @name MEM_Data_out[9] -pin U1|MEM_PipelineReg Data_out[9] -pin U1|U9 MEM_Data_out[9]
load net U1|MEM_Data_out_in[0] -attr @rip(#000000) MEM_Data_out_in[0] -attr @name MEM_Data_out_in[0] -pin U1|MEM_PipelineReg Data_out_in[0] -pin U1|U5 MEM_Data_out_in[0]
load net U1|MEM_Data_out_in[10] -attr @rip(#000000) MEM_Data_out_in[10] -attr @name MEM_Data_out_in[10] -pin U1|MEM_PipelineReg Data_out_in[10] -pin U1|U5 MEM_Data_out_in[10]
load net U1|MEM_Data_out_in[11] -attr @rip(#000000) MEM_Data_out_in[11] -attr @name MEM_Data_out_in[11] -pin U1|MEM_PipelineReg Data_out_in[11] -pin U1|U5 MEM_Data_out_in[11]
load net U1|MEM_Data_out_in[12] -attr @rip(#000000) MEM_Data_out_in[12] -attr @name MEM_Data_out_in[12] -pin U1|MEM_PipelineReg Data_out_in[12] -pin U1|U5 MEM_Data_out_in[12]
load net U1|MEM_Data_out_in[13] -attr @rip(#000000) MEM_Data_out_in[13] -attr @name MEM_Data_out_in[13] -pin U1|MEM_PipelineReg Data_out_in[13] -pin U1|U5 MEM_Data_out_in[13]
load net U1|MEM_Data_out_in[14] -attr @rip(#000000) MEM_Data_out_in[14] -attr @name MEM_Data_out_in[14] -pin U1|MEM_PipelineReg Data_out_in[14] -pin U1|U5 MEM_Data_out_in[14]
load net U1|MEM_Data_out_in[15] -attr @rip(#000000) MEM_Data_out_in[15] -attr @name MEM_Data_out_in[15] -pin U1|MEM_PipelineReg Data_out_in[15] -pin U1|U5 MEM_Data_out_in[15]
load net U1|MEM_Data_out_in[16] -attr @rip(#000000) MEM_Data_out_in[16] -attr @name MEM_Data_out_in[16] -pin U1|MEM_PipelineReg Data_out_in[16] -pin U1|U5 MEM_Data_out_in[16]
load net U1|MEM_Data_out_in[17] -attr @rip(#000000) MEM_Data_out_in[17] -attr @name MEM_Data_out_in[17] -pin U1|MEM_PipelineReg Data_out_in[17] -pin U1|U5 MEM_Data_out_in[17]
load net U1|MEM_Data_out_in[18] -attr @rip(#000000) MEM_Data_out_in[18] -attr @name MEM_Data_out_in[18] -pin U1|MEM_PipelineReg Data_out_in[18] -pin U1|U5 MEM_Data_out_in[18]
load net U1|MEM_Data_out_in[19] -attr @rip(#000000) MEM_Data_out_in[19] -attr @name MEM_Data_out_in[19] -pin U1|MEM_PipelineReg Data_out_in[19] -pin U1|U5 MEM_Data_out_in[19]
load net U1|MEM_Data_out_in[1] -attr @rip(#000000) MEM_Data_out_in[1] -attr @name MEM_Data_out_in[1] -pin U1|MEM_PipelineReg Data_out_in[1] -pin U1|U5 MEM_Data_out_in[1]
load net U1|MEM_Data_out_in[20] -attr @rip(#000000) MEM_Data_out_in[20] -attr @name MEM_Data_out_in[20] -pin U1|MEM_PipelineReg Data_out_in[20] -pin U1|U5 MEM_Data_out_in[20]
load net U1|MEM_Data_out_in[21] -attr @rip(#000000) MEM_Data_out_in[21] -attr @name MEM_Data_out_in[21] -pin U1|MEM_PipelineReg Data_out_in[21] -pin U1|U5 MEM_Data_out_in[21]
load net U1|MEM_Data_out_in[22] -attr @rip(#000000) MEM_Data_out_in[22] -attr @name MEM_Data_out_in[22] -pin U1|MEM_PipelineReg Data_out_in[22] -pin U1|U5 MEM_Data_out_in[22]
load net U1|MEM_Data_out_in[23] -attr @rip(#000000) MEM_Data_out_in[23] -attr @name MEM_Data_out_in[23] -pin U1|MEM_PipelineReg Data_out_in[23] -pin U1|U5 MEM_Data_out_in[23]
load net U1|MEM_Data_out_in[24] -attr @rip(#000000) MEM_Data_out_in[24] -attr @name MEM_Data_out_in[24] -pin U1|MEM_PipelineReg Data_out_in[24] -pin U1|U5 MEM_Data_out_in[24]
load net U1|MEM_Data_out_in[25] -attr @rip(#000000) MEM_Data_out_in[25] -attr @name MEM_Data_out_in[25] -pin U1|MEM_PipelineReg Data_out_in[25] -pin U1|U5 MEM_Data_out_in[25]
load net U1|MEM_Data_out_in[26] -attr @rip(#000000) MEM_Data_out_in[26] -attr @name MEM_Data_out_in[26] -pin U1|MEM_PipelineReg Data_out_in[26] -pin U1|U5 MEM_Data_out_in[26]
load net U1|MEM_Data_out_in[27] -attr @rip(#000000) MEM_Data_out_in[27] -attr @name MEM_Data_out_in[27] -pin U1|MEM_PipelineReg Data_out_in[27] -pin U1|U5 MEM_Data_out_in[27]
load net U1|MEM_Data_out_in[28] -attr @rip(#000000) MEM_Data_out_in[28] -attr @name MEM_Data_out_in[28] -pin U1|MEM_PipelineReg Data_out_in[28] -pin U1|U5 MEM_Data_out_in[28]
load net U1|MEM_Data_out_in[29] -attr @rip(#000000) MEM_Data_out_in[29] -attr @name MEM_Data_out_in[29] -pin U1|MEM_PipelineReg Data_out_in[29] -pin U1|U5 MEM_Data_out_in[29]
load net U1|MEM_Data_out_in[2] -attr @rip(#000000) MEM_Data_out_in[2] -attr @name MEM_Data_out_in[2] -pin U1|MEM_PipelineReg Data_out_in[2] -pin U1|U5 MEM_Data_out_in[2]
load net U1|MEM_Data_out_in[30] -attr @rip(#000000) MEM_Data_out_in[30] -attr @name MEM_Data_out_in[30] -pin U1|MEM_PipelineReg Data_out_in[30] -pin U1|U5 MEM_Data_out_in[30]
load net U1|MEM_Data_out_in[31] -attr @rip(#000000) MEM_Data_out_in[31] -attr @name MEM_Data_out_in[31] -pin U1|MEM_PipelineReg Data_out_in[31] -pin U1|U5 MEM_Data_out_in[31]
load net U1|MEM_Data_out_in[3] -attr @rip(#000000) MEM_Data_out_in[3] -attr @name MEM_Data_out_in[3] -pin U1|MEM_PipelineReg Data_out_in[3] -pin U1|U5 MEM_Data_out_in[3]
load net U1|MEM_Data_out_in[4] -attr @rip(#000000) MEM_Data_out_in[4] -attr @name MEM_Data_out_in[4] -pin U1|MEM_PipelineReg Data_out_in[4] -pin U1|U5 MEM_Data_out_in[4]
load net U1|MEM_Data_out_in[5] -attr @rip(#000000) MEM_Data_out_in[5] -attr @name MEM_Data_out_in[5] -pin U1|MEM_PipelineReg Data_out_in[5] -pin U1|U5 MEM_Data_out_in[5]
load net U1|MEM_Data_out_in[6] -attr @rip(#000000) MEM_Data_out_in[6] -attr @name MEM_Data_out_in[6] -pin U1|MEM_PipelineReg Data_out_in[6] -pin U1|U5 MEM_Data_out_in[6]
load net U1|MEM_Data_out_in[7] -attr @rip(#000000) MEM_Data_out_in[7] -attr @name MEM_Data_out_in[7] -pin U1|MEM_PipelineReg Data_out_in[7] -pin U1|U5 MEM_Data_out_in[7]
load net U1|MEM_Data_out_in[8] -attr @rip(#000000) MEM_Data_out_in[8] -attr @name MEM_Data_out_in[8] -pin U1|MEM_PipelineReg Data_out_in[8] -pin U1|U5 MEM_Data_out_in[8]
load net U1|MEM_Data_out_in[9] -attr @rip(#000000) MEM_Data_out_in[9] -attr @name MEM_Data_out_in[9] -pin U1|MEM_PipelineReg Data_out_in[9] -pin U1|U5 MEM_Data_out_in[9]
load net U1|MEM_MemtoReg[0] -attr @rip(#000000) MemtoReg[0] -attr @name MEM_MemtoReg[0] -pin U1|MEM_PipelineReg MemtoReg[0] -pin U1|U8 MEM_MemtoReg[0]
load net U1|MEM_MemtoReg[1] -attr @rip(#000000) MemtoReg[1] -attr @name MEM_MemtoReg[1] -pin U1|MEM_PipelineReg MemtoReg[1] -pin U1|U8 MEM_MemtoReg[1]
load net U1|MEM_PC[0] -attr @rip(#000000) PC[0] -attr @name MEM_PC[0] -pin U1|MEM_PipelineReg PC[0] -pin U1|WB_PipelineReg PC_in[0]
load net U1|MEM_PC[10] -attr @rip(#000000) PC[10] -attr @name MEM_PC[10] -pin U1|MEM_PipelineReg PC[10] -pin U1|WB_PipelineReg PC_in[10]
load net U1|MEM_PC[11] -attr @rip(#000000) PC[11] -attr @name MEM_PC[11] -pin U1|MEM_PipelineReg PC[11] -pin U1|WB_PipelineReg PC_in[11]
load net U1|MEM_PC[12] -attr @rip(#000000) PC[12] -attr @name MEM_PC[12] -pin U1|MEM_PipelineReg PC[12] -pin U1|WB_PipelineReg PC_in[12]
load net U1|MEM_PC[13] -attr @rip(#000000) PC[13] -attr @name MEM_PC[13] -pin U1|MEM_PipelineReg PC[13] -pin U1|WB_PipelineReg PC_in[13]
load net U1|MEM_PC[14] -attr @rip(#000000) PC[14] -attr @name MEM_PC[14] -pin U1|MEM_PipelineReg PC[14] -pin U1|WB_PipelineReg PC_in[14]
load net U1|MEM_PC[15] -attr @rip(#000000) PC[15] -attr @name MEM_PC[15] -pin U1|MEM_PipelineReg PC[15] -pin U1|WB_PipelineReg PC_in[15]
load net U1|MEM_PC[16] -attr @rip(#000000) PC[16] -attr @name MEM_PC[16] -pin U1|MEM_PipelineReg PC[16] -pin U1|WB_PipelineReg PC_in[16]
load net U1|MEM_PC[17] -attr @rip(#000000) PC[17] -attr @name MEM_PC[17] -pin U1|MEM_PipelineReg PC[17] -pin U1|WB_PipelineReg PC_in[17]
load net U1|MEM_PC[18] -attr @rip(#000000) PC[18] -attr @name MEM_PC[18] -pin U1|MEM_PipelineReg PC[18] -pin U1|WB_PipelineReg PC_in[18]
load net U1|MEM_PC[19] -attr @rip(#000000) PC[19] -attr @name MEM_PC[19] -pin U1|MEM_PipelineReg PC[19] -pin U1|WB_PipelineReg PC_in[19]
load net U1|MEM_PC[1] -attr @rip(#000000) PC[1] -attr @name MEM_PC[1] -pin U1|MEM_PipelineReg PC[1] -pin U1|WB_PipelineReg PC_in[1]
load net U1|MEM_PC[20] -attr @rip(#000000) PC[20] -attr @name MEM_PC[20] -pin U1|MEM_PipelineReg PC[20] -pin U1|WB_PipelineReg PC_in[20]
load net U1|MEM_PC[21] -attr @rip(#000000) PC[21] -attr @name MEM_PC[21] -pin U1|MEM_PipelineReg PC[21] -pin U1|WB_PipelineReg PC_in[21]
load net U1|MEM_PC[22] -attr @rip(#000000) PC[22] -attr @name MEM_PC[22] -pin U1|MEM_PipelineReg PC[22] -pin U1|WB_PipelineReg PC_in[22]
load net U1|MEM_PC[23] -attr @rip(#000000) PC[23] -attr @name MEM_PC[23] -pin U1|MEM_PipelineReg PC[23] -pin U1|WB_PipelineReg PC_in[23]
load net U1|MEM_PC[24] -attr @rip(#000000) PC[24] -attr @name MEM_PC[24] -pin U1|MEM_PipelineReg PC[24] -pin U1|WB_PipelineReg PC_in[24]
load net U1|MEM_PC[25] -attr @rip(#000000) PC[25] -attr @name MEM_PC[25] -pin U1|MEM_PipelineReg PC[25] -pin U1|WB_PipelineReg PC_in[25]
load net U1|MEM_PC[26] -attr @rip(#000000) PC[26] -attr @name MEM_PC[26] -pin U1|MEM_PipelineReg PC[26] -pin U1|WB_PipelineReg PC_in[26]
load net U1|MEM_PC[27] -attr @rip(#000000) PC[27] -attr @name MEM_PC[27] -pin U1|MEM_PipelineReg PC[27] -pin U1|WB_PipelineReg PC_in[27]
load net U1|MEM_PC[28] -attr @rip(#000000) PC[28] -attr @name MEM_PC[28] -pin U1|MEM_PipelineReg PC[28] -pin U1|WB_PipelineReg PC_in[28]
load net U1|MEM_PC[29] -attr @rip(#000000) PC[29] -attr @name MEM_PC[29] -pin U1|MEM_PipelineReg PC[29] -pin U1|WB_PipelineReg PC_in[29]
load net U1|MEM_PC[2] -attr @rip(#000000) PC[2] -attr @name MEM_PC[2] -pin U1|MEM_PipelineReg PC[2] -pin U1|WB_PipelineReg PC_in[2]
load net U1|MEM_PC[30] -attr @rip(#000000) PC[30] -attr @name MEM_PC[30] -pin U1|MEM_PipelineReg PC[30] -pin U1|WB_PipelineReg PC_in[30]
load net U1|MEM_PC[31] -attr @rip(#000000) PC[31] -attr @name MEM_PC[31] -pin U1|MEM_PipelineReg PC[31] -pin U1|WB_PipelineReg PC_in[31]
load net U1|MEM_PC[3] -attr @rip(#000000) PC[3] -attr @name MEM_PC[3] -pin U1|MEM_PipelineReg PC[3] -pin U1|WB_PipelineReg PC_in[3]
load net U1|MEM_PC[4] -attr @rip(#000000) PC[4] -attr @name MEM_PC[4] -pin U1|MEM_PipelineReg PC[4] -pin U1|WB_PipelineReg PC_in[4]
load net U1|MEM_PC[5] -attr @rip(#000000) PC[5] -attr @name MEM_PC[5] -pin U1|MEM_PipelineReg PC[5] -pin U1|WB_PipelineReg PC_in[5]
load net U1|MEM_PC[6] -attr @rip(#000000) PC[6] -attr @name MEM_PC[6] -pin U1|MEM_PipelineReg PC[6] -pin U1|WB_PipelineReg PC_in[6]
load net U1|MEM_PC[7] -attr @rip(#000000) PC[7] -attr @name MEM_PC[7] -pin U1|MEM_PipelineReg PC[7] -pin U1|WB_PipelineReg PC_in[7]
load net U1|MEM_PC[8] -attr @rip(#000000) PC[8] -attr @name MEM_PC[8] -pin U1|MEM_PipelineReg PC[8] -pin U1|WB_PipelineReg PC_in[8]
load net U1|MEM_PC[9] -attr @rip(#000000) PC[9] -attr @name MEM_PC[9] -pin U1|MEM_PipelineReg PC[9] -pin U1|WB_PipelineReg PC_in[9]
load net U1|MEM_Rd_addr[0] -attr @rip(#000000) Rd_addr[0] -attr @name MEM_Rd_addr[0] -pin U1|MEM_PipelineReg Rd_addr[0] -pin U1|U5 MEM_Rd_addr[0] -pin U1|WB_PipelineReg Rd_addr_in[0]
load net U1|MEM_Rd_addr[1] -attr @rip(#000000) Rd_addr[1] -attr @name MEM_Rd_addr[1] -pin U1|MEM_PipelineReg Rd_addr[1] -pin U1|U5 MEM_Rd_addr[1] -pin U1|WB_PipelineReg Rd_addr_in[1]
load net U1|MEM_Rd_addr[2] -attr @rip(#000000) Rd_addr[2] -attr @name MEM_Rd_addr[2] -pin U1|MEM_PipelineReg Rd_addr[2] -pin U1|U5 MEM_Rd_addr[2] -pin U1|WB_PipelineReg Rd_addr_in[2]
load net U1|MEM_Rd_addr[3] -attr @rip(#000000) Rd_addr[3] -attr @name MEM_Rd_addr[3] -pin U1|MEM_PipelineReg Rd_addr[3] -pin U1|U5 MEM_Rd_addr[3] -pin U1|WB_PipelineReg Rd_addr_in[3]
load net U1|MEM_Rd_addr[4] -attr @rip(#000000) Rd_addr[4] -attr @name MEM_Rd_addr[4] -pin U1|MEM_PipelineReg Rd_addr[4] -pin U1|U5 MEM_Rd_addr[4] -pin U1|WB_PipelineReg Rd_addr_in[4]
load net U1|MEM_Rd_data[0] -attr @rip(#000000) Rd_data[0] -attr @name MEM_Rd_data[0] -pin U1|MEM_PipelineReg Rd_data[0] -pin U1|U5 MEM_Rd_data[0] -pin U1|U8 MEM_Rd_data[0]
load net U1|MEM_Rd_data[10] -attr @rip(#000000) Rd_data[10] -attr @name MEM_Rd_data[10] -pin U1|MEM_PipelineReg Rd_data[10] -pin U1|U5 MEM_Rd_data[10] -pin U1|U8 MEM_Rd_data[10]
load net U1|MEM_Rd_data[11] -attr @rip(#000000) Rd_data[11] -attr @name MEM_Rd_data[11] -pin U1|MEM_PipelineReg Rd_data[11] -pin U1|U5 MEM_Rd_data[11] -pin U1|U8 MEM_Rd_data[11]
load net U1|MEM_Rd_data[12] -attr @rip(#000000) Rd_data[12] -attr @name MEM_Rd_data[12] -pin U1|MEM_PipelineReg Rd_data[12] -pin U1|U5 MEM_Rd_data[12] -pin U1|U8 MEM_Rd_data[12]
load net U1|MEM_Rd_data[13] -attr @rip(#000000) Rd_data[13] -attr @name MEM_Rd_data[13] -pin U1|MEM_PipelineReg Rd_data[13] -pin U1|U5 MEM_Rd_data[13] -pin U1|U8 MEM_Rd_data[13]
load net U1|MEM_Rd_data[14] -attr @rip(#000000) Rd_data[14] -attr @name MEM_Rd_data[14] -pin U1|MEM_PipelineReg Rd_data[14] -pin U1|U5 MEM_Rd_data[14] -pin U1|U8 MEM_Rd_data[14]
load net U1|MEM_Rd_data[15] -attr @rip(#000000) Rd_data[15] -attr @name MEM_Rd_data[15] -pin U1|MEM_PipelineReg Rd_data[15] -pin U1|U5 MEM_Rd_data[15] -pin U1|U8 MEM_Rd_data[15]
load net U1|MEM_Rd_data[16] -attr @rip(#000000) Rd_data[16] -attr @name MEM_Rd_data[16] -pin U1|MEM_PipelineReg Rd_data[16] -pin U1|U5 MEM_Rd_data[16] -pin U1|U8 MEM_Rd_data[16]
load net U1|MEM_Rd_data[17] -attr @rip(#000000) Rd_data[17] -attr @name MEM_Rd_data[17] -pin U1|MEM_PipelineReg Rd_data[17] -pin U1|U5 MEM_Rd_data[17] -pin U1|U8 MEM_Rd_data[17]
load net U1|MEM_Rd_data[18] -attr @rip(#000000) Rd_data[18] -attr @name MEM_Rd_data[18] -pin U1|MEM_PipelineReg Rd_data[18] -pin U1|U5 MEM_Rd_data[18] -pin U1|U8 MEM_Rd_data[18]
load net U1|MEM_Rd_data[19] -attr @rip(#000000) Rd_data[19] -attr @name MEM_Rd_data[19] -pin U1|MEM_PipelineReg Rd_data[19] -pin U1|U5 MEM_Rd_data[19] -pin U1|U8 MEM_Rd_data[19]
load net U1|MEM_Rd_data[1] -attr @rip(#000000) Rd_data[1] -attr @name MEM_Rd_data[1] -pin U1|MEM_PipelineReg Rd_data[1] -pin U1|U5 MEM_Rd_data[1] -pin U1|U8 MEM_Rd_data[1]
load net U1|MEM_Rd_data[20] -attr @rip(#000000) Rd_data[20] -attr @name MEM_Rd_data[20] -pin U1|MEM_PipelineReg Rd_data[20] -pin U1|U5 MEM_Rd_data[20] -pin U1|U8 MEM_Rd_data[20]
load net U1|MEM_Rd_data[21] -attr @rip(#000000) Rd_data[21] -attr @name MEM_Rd_data[21] -pin U1|MEM_PipelineReg Rd_data[21] -pin U1|U5 MEM_Rd_data[21] -pin U1|U8 MEM_Rd_data[21]
load net U1|MEM_Rd_data[22] -attr @rip(#000000) Rd_data[22] -attr @name MEM_Rd_data[22] -pin U1|MEM_PipelineReg Rd_data[22] -pin U1|U5 MEM_Rd_data[22] -pin U1|U8 MEM_Rd_data[22]
load net U1|MEM_Rd_data[23] -attr @rip(#000000) Rd_data[23] -attr @name MEM_Rd_data[23] -pin U1|MEM_PipelineReg Rd_data[23] -pin U1|U5 MEM_Rd_data[23] -pin U1|U8 MEM_Rd_data[23]
load net U1|MEM_Rd_data[24] -attr @rip(#000000) Rd_data[24] -attr @name MEM_Rd_data[24] -pin U1|MEM_PipelineReg Rd_data[24] -pin U1|U5 MEM_Rd_data[24] -pin U1|U8 MEM_Rd_data[24]
load net U1|MEM_Rd_data[25] -attr @rip(#000000) Rd_data[25] -attr @name MEM_Rd_data[25] -pin U1|MEM_PipelineReg Rd_data[25] -pin U1|U5 MEM_Rd_data[25] -pin U1|U8 MEM_Rd_data[25]
load net U1|MEM_Rd_data[26] -attr @rip(#000000) Rd_data[26] -attr @name MEM_Rd_data[26] -pin U1|MEM_PipelineReg Rd_data[26] -pin U1|U5 MEM_Rd_data[26] -pin U1|U8 MEM_Rd_data[26]
load net U1|MEM_Rd_data[27] -attr @rip(#000000) Rd_data[27] -attr @name MEM_Rd_data[27] -pin U1|MEM_PipelineReg Rd_data[27] -pin U1|U5 MEM_Rd_data[27] -pin U1|U8 MEM_Rd_data[27]
load net U1|MEM_Rd_data[28] -attr @rip(#000000) Rd_data[28] -attr @name MEM_Rd_data[28] -pin U1|MEM_PipelineReg Rd_data[28] -pin U1|U5 MEM_Rd_data[28] -pin U1|U8 MEM_Rd_data[28]
load net U1|MEM_Rd_data[29] -attr @rip(#000000) Rd_data[29] -attr @name MEM_Rd_data[29] -pin U1|MEM_PipelineReg Rd_data[29] -pin U1|U5 MEM_Rd_data[29] -pin U1|U8 MEM_Rd_data[29]
load net U1|MEM_Rd_data[2] -attr @rip(#000000) Rd_data[2] -attr @name MEM_Rd_data[2] -pin U1|MEM_PipelineReg Rd_data[2] -pin U1|U5 MEM_Rd_data[2] -pin U1|U8 MEM_Rd_data[2]
load net U1|MEM_Rd_data[30] -attr @rip(#000000) Rd_data[30] -attr @name MEM_Rd_data[30] -pin U1|MEM_PipelineReg Rd_data[30] -pin U1|U5 MEM_Rd_data[30] -pin U1|U8 MEM_Rd_data[30]
load net U1|MEM_Rd_data[31] -attr @rip(#000000) Rd_data[31] -attr @name MEM_Rd_data[31] -pin U1|MEM_PipelineReg Rd_data[31] -pin U1|U5 MEM_Rd_data[31] -pin U1|U8 MEM_Rd_data[31]
load net U1|MEM_Rd_data[3] -attr @rip(#000000) Rd_data[3] -attr @name MEM_Rd_data[3] -pin U1|MEM_PipelineReg Rd_data[3] -pin U1|U5 MEM_Rd_data[3] -pin U1|U8 MEM_Rd_data[3]
load net U1|MEM_Rd_data[4] -attr @rip(#000000) Rd_data[4] -attr @name MEM_Rd_data[4] -pin U1|MEM_PipelineReg Rd_data[4] -pin U1|U5 MEM_Rd_data[4] -pin U1|U8 MEM_Rd_data[4]
load net U1|MEM_Rd_data[5] -attr @rip(#000000) Rd_data[5] -attr @name MEM_Rd_data[5] -pin U1|MEM_PipelineReg Rd_data[5] -pin U1|U5 MEM_Rd_data[5] -pin U1|U8 MEM_Rd_data[5]
load net U1|MEM_Rd_data[6] -attr @rip(#000000) Rd_data[6] -attr @name MEM_Rd_data[6] -pin U1|MEM_PipelineReg Rd_data[6] -pin U1|U5 MEM_Rd_data[6] -pin U1|U8 MEM_Rd_data[6]
load net U1|MEM_Rd_data[7] -attr @rip(#000000) Rd_data[7] -attr @name MEM_Rd_data[7] -pin U1|MEM_PipelineReg Rd_data[7] -pin U1|U5 MEM_Rd_data[7] -pin U1|U8 MEM_Rd_data[7]
load net U1|MEM_Rd_data[8] -attr @rip(#000000) Rd_data[8] -attr @name MEM_Rd_data[8] -pin U1|MEM_PipelineReg Rd_data[8] -pin U1|U5 MEM_Rd_data[8] -pin U1|U8 MEM_Rd_data[8]
load net U1|MEM_Rd_data[9] -attr @rip(#000000) Rd_data[9] -attr @name MEM_Rd_data[9] -pin U1|MEM_PipelineReg Rd_data[9] -pin U1|U5 MEM_Rd_data[9] -pin U1|U8 MEM_Rd_data[9]
load net U1|MEM_Rd_data_in[0] -attr @rip(#000000) MEM_Rd_data_in[0] -attr @name MEM_Rd_data_in[0] -pin U1|MEM_PipelineReg Rd_data_in[0] -pin U1|U8 MEM_Rd_data_in[0]
load net U1|MEM_Rd_data_in[10] -attr @rip(#000000) MEM_Rd_data_in[10] -attr @name MEM_Rd_data_in[10] -pin U1|MEM_PipelineReg Rd_data_in[10] -pin U1|U8 MEM_Rd_data_in[10]
load net U1|MEM_Rd_data_in[11] -attr @rip(#000000) MEM_Rd_data_in[11] -attr @name MEM_Rd_data_in[11] -pin U1|MEM_PipelineReg Rd_data_in[11] -pin U1|U8 MEM_Rd_data_in[11]
load net U1|MEM_Rd_data_in[12] -attr @rip(#000000) MEM_Rd_data_in[12] -attr @name MEM_Rd_data_in[12] -pin U1|MEM_PipelineReg Rd_data_in[12] -pin U1|U8 MEM_Rd_data_in[12]
load net U1|MEM_Rd_data_in[13] -attr @rip(#000000) MEM_Rd_data_in[13] -attr @name MEM_Rd_data_in[13] -pin U1|MEM_PipelineReg Rd_data_in[13] -pin U1|U8 MEM_Rd_data_in[13]
load net U1|MEM_Rd_data_in[14] -attr @rip(#000000) MEM_Rd_data_in[14] -attr @name MEM_Rd_data_in[14] -pin U1|MEM_PipelineReg Rd_data_in[14] -pin U1|U8 MEM_Rd_data_in[14]
load net U1|MEM_Rd_data_in[15] -attr @rip(#000000) MEM_Rd_data_in[15] -attr @name MEM_Rd_data_in[15] -pin U1|MEM_PipelineReg Rd_data_in[15] -pin U1|U8 MEM_Rd_data_in[15]
load net U1|MEM_Rd_data_in[16] -attr @rip(#000000) MEM_Rd_data_in[16] -attr @name MEM_Rd_data_in[16] -pin U1|MEM_PipelineReg Rd_data_in[16] -pin U1|U8 MEM_Rd_data_in[16]
load net U1|MEM_Rd_data_in[17] -attr @rip(#000000) MEM_Rd_data_in[17] -attr @name MEM_Rd_data_in[17] -pin U1|MEM_PipelineReg Rd_data_in[17] -pin U1|U8 MEM_Rd_data_in[17]
load net U1|MEM_Rd_data_in[18] -attr @rip(#000000) MEM_Rd_data_in[18] -attr @name MEM_Rd_data_in[18] -pin U1|MEM_PipelineReg Rd_data_in[18] -pin U1|U8 MEM_Rd_data_in[18]
load net U1|MEM_Rd_data_in[19] -attr @rip(#000000) MEM_Rd_data_in[19] -attr @name MEM_Rd_data_in[19] -pin U1|MEM_PipelineReg Rd_data_in[19] -pin U1|U8 MEM_Rd_data_in[19]
load net U1|MEM_Rd_data_in[1] -attr @rip(#000000) MEM_Rd_data_in[1] -attr @name MEM_Rd_data_in[1] -pin U1|MEM_PipelineReg Rd_data_in[1] -pin U1|U8 MEM_Rd_data_in[1]
load net U1|MEM_Rd_data_in[20] -attr @rip(#000000) MEM_Rd_data_in[20] -attr @name MEM_Rd_data_in[20] -pin U1|MEM_PipelineReg Rd_data_in[20] -pin U1|U8 MEM_Rd_data_in[20]
load net U1|MEM_Rd_data_in[21] -attr @rip(#000000) MEM_Rd_data_in[21] -attr @name MEM_Rd_data_in[21] -pin U1|MEM_PipelineReg Rd_data_in[21] -pin U1|U8 MEM_Rd_data_in[21]
load net U1|MEM_Rd_data_in[22] -attr @rip(#000000) MEM_Rd_data_in[22] -attr @name MEM_Rd_data_in[22] -pin U1|MEM_PipelineReg Rd_data_in[22] -pin U1|U8 MEM_Rd_data_in[22]
load net U1|MEM_Rd_data_in[23] -attr @rip(#000000) MEM_Rd_data_in[23] -attr @name MEM_Rd_data_in[23] -pin U1|MEM_PipelineReg Rd_data_in[23] -pin U1|U8 MEM_Rd_data_in[23]
load net U1|MEM_Rd_data_in[24] -attr @rip(#000000) MEM_Rd_data_in[24] -attr @name MEM_Rd_data_in[24] -pin U1|MEM_PipelineReg Rd_data_in[24] -pin U1|U8 MEM_Rd_data_in[24]
load net U1|MEM_Rd_data_in[25] -attr @rip(#000000) MEM_Rd_data_in[25] -attr @name MEM_Rd_data_in[25] -pin U1|MEM_PipelineReg Rd_data_in[25] -pin U1|U8 MEM_Rd_data_in[25]
load net U1|MEM_Rd_data_in[26] -attr @rip(#000000) MEM_Rd_data_in[26] -attr @name MEM_Rd_data_in[26] -pin U1|MEM_PipelineReg Rd_data_in[26] -pin U1|U8 MEM_Rd_data_in[26]
load net U1|MEM_Rd_data_in[27] -attr @rip(#000000) MEM_Rd_data_in[27] -attr @name MEM_Rd_data_in[27] -pin U1|MEM_PipelineReg Rd_data_in[27] -pin U1|U8 MEM_Rd_data_in[27]
load net U1|MEM_Rd_data_in[28] -attr @rip(#000000) MEM_Rd_data_in[28] -attr @name MEM_Rd_data_in[28] -pin U1|MEM_PipelineReg Rd_data_in[28] -pin U1|U8 MEM_Rd_data_in[28]
load net U1|MEM_Rd_data_in[29] -attr @rip(#000000) MEM_Rd_data_in[29] -attr @name MEM_Rd_data_in[29] -pin U1|MEM_PipelineReg Rd_data_in[29] -pin U1|U8 MEM_Rd_data_in[29]
load net U1|MEM_Rd_data_in[2] -attr @rip(#000000) MEM_Rd_data_in[2] -attr @name MEM_Rd_data_in[2] -pin U1|MEM_PipelineReg Rd_data_in[2] -pin U1|U8 MEM_Rd_data_in[2]
load net U1|MEM_Rd_data_in[30] -attr @rip(#000000) MEM_Rd_data_in[30] -attr @name MEM_Rd_data_in[30] -pin U1|MEM_PipelineReg Rd_data_in[30] -pin U1|U8 MEM_Rd_data_in[30]
load net U1|MEM_Rd_data_in[31] -attr @rip(#000000) MEM_Rd_data_in[31] -attr @name MEM_Rd_data_in[31] -pin U1|MEM_PipelineReg Rd_data_in[31] -pin U1|U8 MEM_Rd_data_in[31]
load net U1|MEM_Rd_data_in[3] -attr @rip(#000000) MEM_Rd_data_in[3] -attr @name MEM_Rd_data_in[3] -pin U1|MEM_PipelineReg Rd_data_in[3] -pin U1|U8 MEM_Rd_data_in[3]
load net U1|MEM_Rd_data_in[4] -attr @rip(#000000) MEM_Rd_data_in[4] -attr @name MEM_Rd_data_in[4] -pin U1|MEM_PipelineReg Rd_data_in[4] -pin U1|U8 MEM_Rd_data_in[4]
load net U1|MEM_Rd_data_in[5] -attr @rip(#000000) MEM_Rd_data_in[5] -attr @name MEM_Rd_data_in[5] -pin U1|MEM_PipelineReg Rd_data_in[5] -pin U1|U8 MEM_Rd_data_in[5]
load net U1|MEM_Rd_data_in[6] -attr @rip(#000000) MEM_Rd_data_in[6] -attr @name MEM_Rd_data_in[6] -pin U1|MEM_PipelineReg Rd_data_in[6] -pin U1|U8 MEM_Rd_data_in[6]
load net U1|MEM_Rd_data_in[7] -attr @rip(#000000) MEM_Rd_data_in[7] -attr @name MEM_Rd_data_in[7] -pin U1|MEM_PipelineReg Rd_data_in[7] -pin U1|U8 MEM_Rd_data_in[7]
load net U1|MEM_Rd_data_in[8] -attr @rip(#000000) MEM_Rd_data_in[8] -attr @name MEM_Rd_data_in[8] -pin U1|MEM_PipelineReg Rd_data_in[8] -pin U1|U8 MEM_Rd_data_in[8]
load net U1|MEM_Rd_data_in[9] -attr @rip(#000000) MEM_Rd_data_in[9] -attr @name MEM_Rd_data_in[9] -pin U1|MEM_PipelineReg Rd_data_in[9] -pin U1|U8 MEM_Rd_data_in[9]
load net U1|MEM_RegWrite -attr @name MEM_RegWrite -pin U1|MEM_PipelineReg RegWrite -pin U1|U5 MEM_RegWrite -pin U1|WB_PipelineReg RegWrite_in
netloc U1|MEM_RegWrite 1 2 9 970 1708 1390 1428 NJ 1428 2370J 1448 NJ 1448 NJ 1448 NJ 1448 4860J 1538 5630
load net U1|MEM_byte_n[0] -attr @rip(#000000) byte_n[0] -attr @name MEM_byte_n[0] -pin U1|MEM_PipelineReg byte_n[0] -pin U1|U4 byte_n[0]
load net U1|MEM_byte_n[1] -attr @rip(#000000) byte_n[1] -attr @name MEM_byte_n[1] -pin U1|MEM_PipelineReg byte_n[1] -pin U1|U4 byte_n[1]
load net U1|MEM_sign -attr @name MEM_sign -pin U1|MEM_PipelineReg sign -pin U1|U4 sign
netloc U1|MEM_sign 1 0 11 160 1788 NJ 1788 NJ 1788 NJ 1788 2020J 1768 NJ 1768 NJ 1768 NJ 1768 NJ 1768 NJ 1768 5710
load net U1|MEM_wea[0] -attr @rip(#000000) wea[0] -attr @name MEM_wea[0] -pin U1|MEM_PipelineReg wea[0] -pin U1|U9 MEM_wea[0]
load net U1|MEM_wea[1] -attr @rip(#000000) wea[1] -attr @name MEM_wea[1] -pin U1|MEM_PipelineReg wea[1] -pin U1|U9 MEM_wea[1]
load net U1|MEM_wea[2] -attr @rip(#000000) wea[2] -attr @name MEM_wea[2] -pin U1|MEM_PipelineReg wea[2] -pin U1|U9 MEM_wea[2]
load net U1|MEM_wea[3] -attr @rip(#000000) wea[3] -attr @name MEM_wea[3] -pin U1|MEM_PipelineReg wea[3] -pin U1|U9 MEM_wea[3]
load net U1|MIO_ready -attr @name MIO_ready -hierPin U1 CPU_MIO -hierPin U1 MIO_ready
netloc U1|MIO_ready 1 0 12 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 NJ 1828 6350
load net U1|MemRW -attr @name MemRW -hierPin U1 MemRW -pin U1|U9 MemRW
netloc U1|MemRW 1 11 1 N 1458
load net U1|PC_in[0] -attr @rip(#000000) PC_out[0] -attr @name PC_in[0] -pin U1|PC_reg[31:0] D[0] -pin U1|U0 PC_out[0]
load net U1|PC_in[10] -attr @rip(#000000) PC_out[10] -attr @name PC_in[10] -pin U1|PC_reg[31:0] D[10] -pin U1|U0 PC_out[10]
load net U1|PC_in[11] -attr @rip(#000000) PC_out[11] -attr @name PC_in[11] -pin U1|PC_reg[31:0] D[11] -pin U1|U0 PC_out[11]
load net U1|PC_in[12] -attr @rip(#000000) PC_out[12] -attr @name PC_in[12] -pin U1|PC_reg[31:0] D[12] -pin U1|U0 PC_out[12]
load net U1|PC_in[13] -attr @rip(#000000) PC_out[13] -attr @name PC_in[13] -pin U1|PC_reg[31:0] D[13] -pin U1|U0 PC_out[13]
load net U1|PC_in[14] -attr @rip(#000000) PC_out[14] -attr @name PC_in[14] -pin U1|PC_reg[31:0] D[14] -pin U1|U0 PC_out[14]
load net U1|PC_in[15] -attr @rip(#000000) PC_out[15] -attr @name PC_in[15] -pin U1|PC_reg[31:0] D[15] -pin U1|U0 PC_out[15]
load net U1|PC_in[16] -attr @rip(#000000) PC_out[16] -attr @name PC_in[16] -pin U1|PC_reg[31:0] D[16] -pin U1|U0 PC_out[16]
load net U1|PC_in[17] -attr @rip(#000000) PC_out[17] -attr @name PC_in[17] -pin U1|PC_reg[31:0] D[17] -pin U1|U0 PC_out[17]
load net U1|PC_in[18] -attr @rip(#000000) PC_out[18] -attr @name PC_in[18] -pin U1|PC_reg[31:0] D[18] -pin U1|U0 PC_out[18]
load net U1|PC_in[19] -attr @rip(#000000) PC_out[19] -attr @name PC_in[19] -pin U1|PC_reg[31:0] D[19] -pin U1|U0 PC_out[19]
load net U1|PC_in[1] -attr @rip(#000000) PC_out[1] -attr @name PC_in[1] -pin U1|PC_reg[31:0] D[1] -pin U1|U0 PC_out[1]
load net U1|PC_in[20] -attr @rip(#000000) PC_out[20] -attr @name PC_in[20] -pin U1|PC_reg[31:0] D[20] -pin U1|U0 PC_out[20]
load net U1|PC_in[21] -attr @rip(#000000) PC_out[21] -attr @name PC_in[21] -pin U1|PC_reg[31:0] D[21] -pin U1|U0 PC_out[21]
load net U1|PC_in[22] -attr @rip(#000000) PC_out[22] -attr @name PC_in[22] -pin U1|PC_reg[31:0] D[22] -pin U1|U0 PC_out[22]
load net U1|PC_in[23] -attr @rip(#000000) PC_out[23] -attr @name PC_in[23] -pin U1|PC_reg[31:0] D[23] -pin U1|U0 PC_out[23]
load net U1|PC_in[24] -attr @rip(#000000) PC_out[24] -attr @name PC_in[24] -pin U1|PC_reg[31:0] D[24] -pin U1|U0 PC_out[24]
load net U1|PC_in[25] -attr @rip(#000000) PC_out[25] -attr @name PC_in[25] -pin U1|PC_reg[31:0] D[25] -pin U1|U0 PC_out[25]
load net U1|PC_in[26] -attr @rip(#000000) PC_out[26] -attr @name PC_in[26] -pin U1|PC_reg[31:0] D[26] -pin U1|U0 PC_out[26]
load net U1|PC_in[27] -attr @rip(#000000) PC_out[27] -attr @name PC_in[27] -pin U1|PC_reg[31:0] D[27] -pin U1|U0 PC_out[27]
load net U1|PC_in[28] -attr @rip(#000000) PC_out[28] -attr @name PC_in[28] -pin U1|PC_reg[31:0] D[28] -pin U1|U0 PC_out[28]
load net U1|PC_in[29] -attr @rip(#000000) PC_out[29] -attr @name PC_in[29] -pin U1|PC_reg[31:0] D[29] -pin U1|U0 PC_out[29]
load net U1|PC_in[2] -attr @rip(#000000) PC_out[2] -attr @name PC_in[2] -pin U1|PC_reg[31:0] D[2] -pin U1|U0 PC_out[2]
load net U1|PC_in[30] -attr @rip(#000000) PC_out[30] -attr @name PC_in[30] -pin U1|PC_reg[31:0] D[30] -pin U1|U0 PC_out[30]
load net U1|PC_in[31] -attr @rip(#000000) PC_out[31] -attr @name PC_in[31] -pin U1|PC_reg[31:0] D[31] -pin U1|U0 PC_out[31]
load net U1|PC_in[3] -attr @rip(#000000) PC_out[3] -attr @name PC_in[3] -pin U1|PC_reg[31:0] D[3] -pin U1|U0 PC_out[3]
load net U1|PC_in[4] -attr @rip(#000000) PC_out[4] -attr @name PC_in[4] -pin U1|PC_reg[31:0] D[4] -pin U1|U0 PC_out[4]
load net U1|PC_in[5] -attr @rip(#000000) PC_out[5] -attr @name PC_in[5] -pin U1|PC_reg[31:0] D[5] -pin U1|U0 PC_out[5]
load net U1|PC_in[6] -attr @rip(#000000) PC_out[6] -attr @name PC_in[6] -pin U1|PC_reg[31:0] D[6] -pin U1|U0 PC_out[6]
load net U1|PC_in[7] -attr @rip(#000000) PC_out[7] -attr @name PC_in[7] -pin U1|PC_reg[31:0] D[7] -pin U1|U0 PC_out[7]
load net U1|PC_in[8] -attr @rip(#000000) PC_out[8] -attr @name PC_in[8] -pin U1|PC_reg[31:0] D[8] -pin U1|U0 PC_out[8]
load net U1|PC_in[9] -attr @rip(#000000) PC_out[9] -attr @name PC_in[9] -pin U1|PC_reg[31:0] D[9] -pin U1|U0 PC_out[9]
load net U1|PC_jump[0] -attr @rip(#000000) PC_jump[0] -attr @name PC_jump[0] -pin U1|U0 PC_jump[0] -pin U1|U7 PC_jump[0]
load net U1|PC_jump[10] -attr @rip(#000000) PC_jump[10] -attr @name PC_jump[10] -pin U1|U0 PC_jump[10] -pin U1|U7 PC_jump[10]
load net U1|PC_jump[11] -attr @rip(#000000) PC_jump[11] -attr @name PC_jump[11] -pin U1|U0 PC_jump[11] -pin U1|U7 PC_jump[11]
load net U1|PC_jump[12] -attr @rip(#000000) PC_jump[12] -attr @name PC_jump[12] -pin U1|U0 PC_jump[12] -pin U1|U7 PC_jump[12]
load net U1|PC_jump[13] -attr @rip(#000000) PC_jump[13] -attr @name PC_jump[13] -pin U1|U0 PC_jump[13] -pin U1|U7 PC_jump[13]
load net U1|PC_jump[14] -attr @rip(#000000) PC_jump[14] -attr @name PC_jump[14] -pin U1|U0 PC_jump[14] -pin U1|U7 PC_jump[14]
load net U1|PC_jump[15] -attr @rip(#000000) PC_jump[15] -attr @name PC_jump[15] -pin U1|U0 PC_jump[15] -pin U1|U7 PC_jump[15]
load net U1|PC_jump[16] -attr @rip(#000000) PC_jump[16] -attr @name PC_jump[16] -pin U1|U0 PC_jump[16] -pin U1|U7 PC_jump[16]
load net U1|PC_jump[17] -attr @rip(#000000) PC_jump[17] -attr @name PC_jump[17] -pin U1|U0 PC_jump[17] -pin U1|U7 PC_jump[17]
load net U1|PC_jump[18] -attr @rip(#000000) PC_jump[18] -attr @name PC_jump[18] -pin U1|U0 PC_jump[18] -pin U1|U7 PC_jump[18]
load net U1|PC_jump[19] -attr @rip(#000000) PC_jump[19] -attr @name PC_jump[19] -pin U1|U0 PC_jump[19] -pin U1|U7 PC_jump[19]
load net U1|PC_jump[1] -attr @rip(#000000) PC_jump[1] -attr @name PC_jump[1] -pin U1|U0 PC_jump[1] -pin U1|U7 PC_jump[1]
load net U1|PC_jump[20] -attr @rip(#000000) PC_jump[20] -attr @name PC_jump[20] -pin U1|U0 PC_jump[20] -pin U1|U7 PC_jump[20]
load net U1|PC_jump[21] -attr @rip(#000000) PC_jump[21] -attr @name PC_jump[21] -pin U1|U0 PC_jump[21] -pin U1|U7 PC_jump[21]
load net U1|PC_jump[22] -attr @rip(#000000) PC_jump[22] -attr @name PC_jump[22] -pin U1|U0 PC_jump[22] -pin U1|U7 PC_jump[22]
load net U1|PC_jump[23] -attr @rip(#000000) PC_jump[23] -attr @name PC_jump[23] -pin U1|U0 PC_jump[23] -pin U1|U7 PC_jump[23]
load net U1|PC_jump[24] -attr @rip(#000000) PC_jump[24] -attr @name PC_jump[24] -pin U1|U0 PC_jump[24] -pin U1|U7 PC_jump[24]
load net U1|PC_jump[25] -attr @rip(#000000) PC_jump[25] -attr @name PC_jump[25] -pin U1|U0 PC_jump[25] -pin U1|U7 PC_jump[25]
load net U1|PC_jump[26] -attr @rip(#000000) PC_jump[26] -attr @name PC_jump[26] -pin U1|U0 PC_jump[26] -pin U1|U7 PC_jump[26]
load net U1|PC_jump[27] -attr @rip(#000000) PC_jump[27] -attr @name PC_jump[27] -pin U1|U0 PC_jump[27] -pin U1|U7 PC_jump[27]
load net U1|PC_jump[28] -attr @rip(#000000) PC_jump[28] -attr @name PC_jump[28] -pin U1|U0 PC_jump[28] -pin U1|U7 PC_jump[28]
load net U1|PC_jump[29] -attr @rip(#000000) PC_jump[29] -attr @name PC_jump[29] -pin U1|U0 PC_jump[29] -pin U1|U7 PC_jump[29]
load net U1|PC_jump[2] -attr @rip(#000000) PC_jump[2] -attr @name PC_jump[2] -pin U1|U0 PC_jump[2] -pin U1|U7 PC_jump[2]
load net U1|PC_jump[30] -attr @rip(#000000) PC_jump[30] -attr @name PC_jump[30] -pin U1|U0 PC_jump[30] -pin U1|U7 PC_jump[30]
load net U1|PC_jump[31] -attr @rip(#000000) PC_jump[31] -attr @name PC_jump[31] -pin U1|U0 PC_jump[31] -pin U1|U7 PC_jump[31]
load net U1|PC_jump[3] -attr @rip(#000000) PC_jump[3] -attr @name PC_jump[3] -pin U1|U0 PC_jump[3] -pin U1|U7 PC_jump[3]
load net U1|PC_jump[4] -attr @rip(#000000) PC_jump[4] -attr @name PC_jump[4] -pin U1|U0 PC_jump[4] -pin U1|U7 PC_jump[4]
load net U1|PC_jump[5] -attr @rip(#000000) PC_jump[5] -attr @name PC_jump[5] -pin U1|U0 PC_jump[5] -pin U1|U7 PC_jump[5]
load net U1|PC_jump[6] -attr @rip(#000000) PC_jump[6] -attr @name PC_jump[6] -pin U1|U0 PC_jump[6] -pin U1|U7 PC_jump[6]
load net U1|PC_jump[7] -attr @rip(#000000) PC_jump[7] -attr @name PC_jump[7] -pin U1|U0 PC_jump[7] -pin U1|U7 PC_jump[7]
load net U1|PC_jump[8] -attr @rip(#000000) PC_jump[8] -attr @name PC_jump[8] -pin U1|U0 PC_jump[8] -pin U1|U7 PC_jump[8]
load net U1|PC_jump[9] -attr @rip(#000000) PC_jump[9] -attr @name PC_jump[9] -pin U1|U0 PC_jump[9] -pin U1|U7 PC_jump[9]
load net U1|PC_out[0] -attr @rip(#000000) 0 -attr @name PC_out[0] -hierPin U1 PC_out[0] -pin U1|ID_PipelineReg PC_in[0] -pin U1|PC_reg[31:0] Q[0] -pin U1|U0 PC[0]
load net U1|PC_out[10] -attr @rip(#000000) 10 -attr @name PC_out[10] -hierPin U1 PC_out[10] -pin U1|ID_PipelineReg PC_in[10] -pin U1|PC_reg[31:0] Q[10] -pin U1|U0 PC[10]
load net U1|PC_out[11] -attr @rip(#000000) 11 -attr @name PC_out[11] -hierPin U1 PC_out[11] -pin U1|ID_PipelineReg PC_in[11] -pin U1|PC_reg[31:0] Q[11] -pin U1|U0 PC[11]
load net U1|PC_out[12] -attr @rip(#000000) 12 -attr @name PC_out[12] -hierPin U1 PC_out[12] -pin U1|ID_PipelineReg PC_in[12] -pin U1|PC_reg[31:0] Q[12] -pin U1|U0 PC[12]
load net U1|PC_out[13] -attr @rip(#000000) 13 -attr @name PC_out[13] -hierPin U1 PC_out[13] -pin U1|ID_PipelineReg PC_in[13] -pin U1|PC_reg[31:0] Q[13] -pin U1|U0 PC[13]
load net U1|PC_out[14] -attr @rip(#000000) 14 -attr @name PC_out[14] -hierPin U1 PC_out[14] -pin U1|ID_PipelineReg PC_in[14] -pin U1|PC_reg[31:0] Q[14] -pin U1|U0 PC[14]
load net U1|PC_out[15] -attr @rip(#000000) 15 -attr @name PC_out[15] -hierPin U1 PC_out[15] -pin U1|ID_PipelineReg PC_in[15] -pin U1|PC_reg[31:0] Q[15] -pin U1|U0 PC[15]
load net U1|PC_out[16] -attr @rip(#000000) 16 -attr @name PC_out[16] -hierPin U1 PC_out[16] -pin U1|ID_PipelineReg PC_in[16] -pin U1|PC_reg[31:0] Q[16] -pin U1|U0 PC[16]
load net U1|PC_out[17] -attr @rip(#000000) 17 -attr @name PC_out[17] -hierPin U1 PC_out[17] -pin U1|ID_PipelineReg PC_in[17] -pin U1|PC_reg[31:0] Q[17] -pin U1|U0 PC[17]
load net U1|PC_out[18] -attr @rip(#000000) 18 -attr @name PC_out[18] -hierPin U1 PC_out[18] -pin U1|ID_PipelineReg PC_in[18] -pin U1|PC_reg[31:0] Q[18] -pin U1|U0 PC[18]
load net U1|PC_out[19] -attr @rip(#000000) 19 -attr @name PC_out[19] -hierPin U1 PC_out[19] -pin U1|ID_PipelineReg PC_in[19] -pin U1|PC_reg[31:0] Q[19] -pin U1|U0 PC[19]
load net U1|PC_out[1] -attr @rip(#000000) 1 -attr @name PC_out[1] -hierPin U1 PC_out[1] -pin U1|ID_PipelineReg PC_in[1] -pin U1|PC_reg[31:0] Q[1] -pin U1|U0 PC[1]
load net U1|PC_out[20] -attr @rip(#000000) 20 -attr @name PC_out[20] -hierPin U1 PC_out[20] -pin U1|ID_PipelineReg PC_in[20] -pin U1|PC_reg[31:0] Q[20] -pin U1|U0 PC[20]
load net U1|PC_out[21] -attr @rip(#000000) 21 -attr @name PC_out[21] -hierPin U1 PC_out[21] -pin U1|ID_PipelineReg PC_in[21] -pin U1|PC_reg[31:0] Q[21] -pin U1|U0 PC[21]
load net U1|PC_out[22] -attr @rip(#000000) 22 -attr @name PC_out[22] -hierPin U1 PC_out[22] -pin U1|ID_PipelineReg PC_in[22] -pin U1|PC_reg[31:0] Q[22] -pin U1|U0 PC[22]
load net U1|PC_out[23] -attr @rip(#000000) 23 -attr @name PC_out[23] -hierPin U1 PC_out[23] -pin U1|ID_PipelineReg PC_in[23] -pin U1|PC_reg[31:0] Q[23] -pin U1|U0 PC[23]
load net U1|PC_out[24] -attr @rip(#000000) 24 -attr @name PC_out[24] -hierPin U1 PC_out[24] -pin U1|ID_PipelineReg PC_in[24] -pin U1|PC_reg[31:0] Q[24] -pin U1|U0 PC[24]
load net U1|PC_out[25] -attr @rip(#000000) 25 -attr @name PC_out[25] -hierPin U1 PC_out[25] -pin U1|ID_PipelineReg PC_in[25] -pin U1|PC_reg[31:0] Q[25] -pin U1|U0 PC[25]
load net U1|PC_out[26] -attr @rip(#000000) 26 -attr @name PC_out[26] -hierPin U1 PC_out[26] -pin U1|ID_PipelineReg PC_in[26] -pin U1|PC_reg[31:0] Q[26] -pin U1|U0 PC[26]
load net U1|PC_out[27] -attr @rip(#000000) 27 -attr @name PC_out[27] -hierPin U1 PC_out[27] -pin U1|ID_PipelineReg PC_in[27] -pin U1|PC_reg[31:0] Q[27] -pin U1|U0 PC[27]
load net U1|PC_out[28] -attr @rip(#000000) 28 -attr @name PC_out[28] -hierPin U1 PC_out[28] -pin U1|ID_PipelineReg PC_in[28] -pin U1|PC_reg[31:0] Q[28] -pin U1|U0 PC[28]
load net U1|PC_out[29] -attr @rip(#000000) 29 -attr @name PC_out[29] -hierPin U1 PC_out[29] -pin U1|ID_PipelineReg PC_in[29] -pin U1|PC_reg[31:0] Q[29] -pin U1|U0 PC[29]
load net U1|PC_out[2] -attr @rip(#000000) 2 -attr @name PC_out[2] -hierPin U1 PC_out[2] -pin U1|ID_PipelineReg PC_in[2] -pin U1|PC_reg[31:0] Q[2] -pin U1|U0 PC[2]
load net U1|PC_out[30] -attr @rip(#000000) 30 -attr @name PC_out[30] -hierPin U1 PC_out[30] -pin U1|ID_PipelineReg PC_in[30] -pin U1|PC_reg[31:0] Q[30] -pin U1|U0 PC[30]
load net U1|PC_out[31] -attr @rip(#000000) 31 -attr @name PC_out[31] -hierPin U1 PC_out[31] -pin U1|ID_PipelineReg PC_in[31] -pin U1|PC_reg[31:0] Q[31] -pin U1|U0 PC[31]
load net U1|PC_out[3] -attr @rip(#000000) 3 -attr @name PC_out[3] -hierPin U1 PC_out[3] -pin U1|ID_PipelineReg PC_in[3] -pin U1|PC_reg[31:0] Q[3] -pin U1|U0 PC[3]
load net U1|PC_out[4] -attr @rip(#000000) 4 -attr @name PC_out[4] -hierPin U1 PC_out[4] -pin U1|ID_PipelineReg PC_in[4] -pin U1|PC_reg[31:0] Q[4] -pin U1|U0 PC[4]
load net U1|PC_out[5] -attr @rip(#000000) 5 -attr @name PC_out[5] -hierPin U1 PC_out[5] -pin U1|ID_PipelineReg PC_in[5] -pin U1|PC_reg[31:0] Q[5] -pin U1|U0 PC[5]
load net U1|PC_out[6] -attr @rip(#000000) 6 -attr @name PC_out[6] -hierPin U1 PC_out[6] -pin U1|ID_PipelineReg PC_in[6] -pin U1|PC_reg[31:0] Q[6] -pin U1|U0 PC[6]
load net U1|PC_out[7] -attr @rip(#000000) 7 -attr @name PC_out[7] -hierPin U1 PC_out[7] -pin U1|ID_PipelineReg PC_in[7] -pin U1|PC_reg[31:0] Q[7] -pin U1|U0 PC[7]
load net U1|PC_out[8] -attr @rip(#000000) 8 -attr @name PC_out[8] -hierPin U1 PC_out[8] -pin U1|ID_PipelineReg PC_in[8] -pin U1|PC_reg[31:0] Q[8] -pin U1|U0 PC[8]
load net U1|PC_out[9] -attr @rip(#000000) 9 -attr @name PC_out[9] -hierPin U1 PC_out[9] -pin U1|ID_PipelineReg PC_in[9] -pin U1|PC_reg[31:0] Q[9] -pin U1|U0 PC[9]
load net U1|WB_Rd_addr[0] -attr @rip(#000000) Rd_addr[0] -attr @name WB_Rd_addr[0] -pin U1|U2 Wt_addr[0] -pin U1|U5 WB_Rd_addr[0] -pin U1|WB_PipelineReg Rd_addr[0]
load net U1|WB_Rd_addr[1] -attr @rip(#000000) Rd_addr[1] -attr @name WB_Rd_addr[1] -pin U1|U2 Wt_addr[1] -pin U1|U5 WB_Rd_addr[1] -pin U1|WB_PipelineReg Rd_addr[1]
load net U1|WB_Rd_addr[2] -attr @rip(#000000) Rd_addr[2] -attr @name WB_Rd_addr[2] -pin U1|U2 Wt_addr[2] -pin U1|U5 WB_Rd_addr[2] -pin U1|WB_PipelineReg Rd_addr[2]
load net U1|WB_Rd_addr[3] -attr @rip(#000000) Rd_addr[3] -attr @name WB_Rd_addr[3] -pin U1|U2 Wt_addr[3] -pin U1|U5 WB_Rd_addr[3] -pin U1|WB_PipelineReg Rd_addr[3]
load net U1|WB_Rd_addr[4] -attr @rip(#000000) Rd_addr[4] -attr @name WB_Rd_addr[4] -pin U1|U2 Wt_addr[4] -pin U1|U5 WB_Rd_addr[4] -pin U1|WB_PipelineReg Rd_addr[4]
load net U1|WB_Rd_data[0] -attr @rip(#000000) Rd_data[0] -attr @name WB_Rd_data[0] -pin U1|U2 Wt_data[0] -pin U1|U5 WB_Rd_data[0] -pin U1|WB_PipelineReg Rd_data[0]
load net U1|WB_Rd_data[10] -attr @rip(#000000) Rd_data[10] -attr @name WB_Rd_data[10] -pin U1|U2 Wt_data[10] -pin U1|U5 WB_Rd_data[10] -pin U1|WB_PipelineReg Rd_data[10]
load net U1|WB_Rd_data[11] -attr @rip(#000000) Rd_data[11] -attr @name WB_Rd_data[11] -pin U1|U2 Wt_data[11] -pin U1|U5 WB_Rd_data[11] -pin U1|WB_PipelineReg Rd_data[11]
load net U1|WB_Rd_data[12] -attr @rip(#000000) Rd_data[12] -attr @name WB_Rd_data[12] -pin U1|U2 Wt_data[12] -pin U1|U5 WB_Rd_data[12] -pin U1|WB_PipelineReg Rd_data[12]
load net U1|WB_Rd_data[13] -attr @rip(#000000) Rd_data[13] -attr @name WB_Rd_data[13] -pin U1|U2 Wt_data[13] -pin U1|U5 WB_Rd_data[13] -pin U1|WB_PipelineReg Rd_data[13]
load net U1|WB_Rd_data[14] -attr @rip(#000000) Rd_data[14] -attr @name WB_Rd_data[14] -pin U1|U2 Wt_data[14] -pin U1|U5 WB_Rd_data[14] -pin U1|WB_PipelineReg Rd_data[14]
load net U1|WB_Rd_data[15] -attr @rip(#000000) Rd_data[15] -attr @name WB_Rd_data[15] -pin U1|U2 Wt_data[15] -pin U1|U5 WB_Rd_data[15] -pin U1|WB_PipelineReg Rd_data[15]
load net U1|WB_Rd_data[16] -attr @rip(#000000) Rd_data[16] -attr @name WB_Rd_data[16] -pin U1|U2 Wt_data[16] -pin U1|U5 WB_Rd_data[16] -pin U1|WB_PipelineReg Rd_data[16]
load net U1|WB_Rd_data[17] -attr @rip(#000000) Rd_data[17] -attr @name WB_Rd_data[17] -pin U1|U2 Wt_data[17] -pin U1|U5 WB_Rd_data[17] -pin U1|WB_PipelineReg Rd_data[17]
load net U1|WB_Rd_data[18] -attr @rip(#000000) Rd_data[18] -attr @name WB_Rd_data[18] -pin U1|U2 Wt_data[18] -pin U1|U5 WB_Rd_data[18] -pin U1|WB_PipelineReg Rd_data[18]
load net U1|WB_Rd_data[19] -attr @rip(#000000) Rd_data[19] -attr @name WB_Rd_data[19] -pin U1|U2 Wt_data[19] -pin U1|U5 WB_Rd_data[19] -pin U1|WB_PipelineReg Rd_data[19]
load net U1|WB_Rd_data[1] -attr @rip(#000000) Rd_data[1] -attr @name WB_Rd_data[1] -pin U1|U2 Wt_data[1] -pin U1|U5 WB_Rd_data[1] -pin U1|WB_PipelineReg Rd_data[1]
load net U1|WB_Rd_data[20] -attr @rip(#000000) Rd_data[20] -attr @name WB_Rd_data[20] -pin U1|U2 Wt_data[20] -pin U1|U5 WB_Rd_data[20] -pin U1|WB_PipelineReg Rd_data[20]
load net U1|WB_Rd_data[21] -attr @rip(#000000) Rd_data[21] -attr @name WB_Rd_data[21] -pin U1|U2 Wt_data[21] -pin U1|U5 WB_Rd_data[21] -pin U1|WB_PipelineReg Rd_data[21]
load net U1|WB_Rd_data[22] -attr @rip(#000000) Rd_data[22] -attr @name WB_Rd_data[22] -pin U1|U2 Wt_data[22] -pin U1|U5 WB_Rd_data[22] -pin U1|WB_PipelineReg Rd_data[22]
load net U1|WB_Rd_data[23] -attr @rip(#000000) Rd_data[23] -attr @name WB_Rd_data[23] -pin U1|U2 Wt_data[23] -pin U1|U5 WB_Rd_data[23] -pin U1|WB_PipelineReg Rd_data[23]
load net U1|WB_Rd_data[24] -attr @rip(#000000) Rd_data[24] -attr @name WB_Rd_data[24] -pin U1|U2 Wt_data[24] -pin U1|U5 WB_Rd_data[24] -pin U1|WB_PipelineReg Rd_data[24]
load net U1|WB_Rd_data[25] -attr @rip(#000000) Rd_data[25] -attr @name WB_Rd_data[25] -pin U1|U2 Wt_data[25] -pin U1|U5 WB_Rd_data[25] -pin U1|WB_PipelineReg Rd_data[25]
load net U1|WB_Rd_data[26] -attr @rip(#000000) Rd_data[26] -attr @name WB_Rd_data[26] -pin U1|U2 Wt_data[26] -pin U1|U5 WB_Rd_data[26] -pin U1|WB_PipelineReg Rd_data[26]
load net U1|WB_Rd_data[27] -attr @rip(#000000) Rd_data[27] -attr @name WB_Rd_data[27] -pin U1|U2 Wt_data[27] -pin U1|U5 WB_Rd_data[27] -pin U1|WB_PipelineReg Rd_data[27]
load net U1|WB_Rd_data[28] -attr @rip(#000000) Rd_data[28] -attr @name WB_Rd_data[28] -pin U1|U2 Wt_data[28] -pin U1|U5 WB_Rd_data[28] -pin U1|WB_PipelineReg Rd_data[28]
load net U1|WB_Rd_data[29] -attr @rip(#000000) Rd_data[29] -attr @name WB_Rd_data[29] -pin U1|U2 Wt_data[29] -pin U1|U5 WB_Rd_data[29] -pin U1|WB_PipelineReg Rd_data[29]
load net U1|WB_Rd_data[2] -attr @rip(#000000) Rd_data[2] -attr @name WB_Rd_data[2] -pin U1|U2 Wt_data[2] -pin U1|U5 WB_Rd_data[2] -pin U1|WB_PipelineReg Rd_data[2]
load net U1|WB_Rd_data[30] -attr @rip(#000000) Rd_data[30] -attr @name WB_Rd_data[30] -pin U1|U2 Wt_data[30] -pin U1|U5 WB_Rd_data[30] -pin U1|WB_PipelineReg Rd_data[30]
load net U1|WB_Rd_data[31] -attr @rip(#000000) Rd_data[31] -attr @name WB_Rd_data[31] -pin U1|U2 Wt_data[31] -pin U1|U5 WB_Rd_data[31] -pin U1|WB_PipelineReg Rd_data[31]
load net U1|WB_Rd_data[3] -attr @rip(#000000) Rd_data[3] -attr @name WB_Rd_data[3] -pin U1|U2 Wt_data[3] -pin U1|U5 WB_Rd_data[3] -pin U1|WB_PipelineReg Rd_data[3]
load net U1|WB_Rd_data[4] -attr @rip(#000000) Rd_data[4] -attr @name WB_Rd_data[4] -pin U1|U2 Wt_data[4] -pin U1|U5 WB_Rd_data[4] -pin U1|WB_PipelineReg Rd_data[4]
load net U1|WB_Rd_data[5] -attr @rip(#000000) Rd_data[5] -attr @name WB_Rd_data[5] -pin U1|U2 Wt_data[5] -pin U1|U5 WB_Rd_data[5] -pin U1|WB_PipelineReg Rd_data[5]
load net U1|WB_Rd_data[6] -attr @rip(#000000) Rd_data[6] -attr @name WB_Rd_data[6] -pin U1|U2 Wt_data[6] -pin U1|U5 WB_Rd_data[6] -pin U1|WB_PipelineReg Rd_data[6]
load net U1|WB_Rd_data[7] -attr @rip(#000000) Rd_data[7] -attr @name WB_Rd_data[7] -pin U1|U2 Wt_data[7] -pin U1|U5 WB_Rd_data[7] -pin U1|WB_PipelineReg Rd_data[7]
load net U1|WB_Rd_data[8] -attr @rip(#000000) Rd_data[8] -attr @name WB_Rd_data[8] -pin U1|U2 Wt_data[8] -pin U1|U5 WB_Rd_data[8] -pin U1|WB_PipelineReg Rd_data[8]
load net U1|WB_Rd_data[9] -attr @rip(#000000) Rd_data[9] -attr @name WB_Rd_data[9] -pin U1|U2 Wt_data[9] -pin U1|U5 WB_Rd_data[9] -pin U1|WB_PipelineReg Rd_data[9]
load net U1|WB_Rd_data_in[0] -attr @rip(#000000) WB_Rd_data_in[0] -attr @name WB_Rd_data_in[0] -pin U1|U8 WB_Rd_data_in[0] -pin U1|WB_PipelineReg Rd_data_in[0]
load net U1|WB_Rd_data_in[10] -attr @rip(#000000) WB_Rd_data_in[10] -attr @name WB_Rd_data_in[10] -pin U1|U8 WB_Rd_data_in[10] -pin U1|WB_PipelineReg Rd_data_in[10]
load net U1|WB_Rd_data_in[11] -attr @rip(#000000) WB_Rd_data_in[11] -attr @name WB_Rd_data_in[11] -pin U1|U8 WB_Rd_data_in[11] -pin U1|WB_PipelineReg Rd_data_in[11]
load net U1|WB_Rd_data_in[12] -attr @rip(#000000) WB_Rd_data_in[12] -attr @name WB_Rd_data_in[12] -pin U1|U8 WB_Rd_data_in[12] -pin U1|WB_PipelineReg Rd_data_in[12]
load net U1|WB_Rd_data_in[13] -attr @rip(#000000) WB_Rd_data_in[13] -attr @name WB_Rd_data_in[13] -pin U1|U8 WB_Rd_data_in[13] -pin U1|WB_PipelineReg Rd_data_in[13]
load net U1|WB_Rd_data_in[14] -attr @rip(#000000) WB_Rd_data_in[14] -attr @name WB_Rd_data_in[14] -pin U1|U8 WB_Rd_data_in[14] -pin U1|WB_PipelineReg Rd_data_in[14]
load net U1|WB_Rd_data_in[15] -attr @rip(#000000) WB_Rd_data_in[15] -attr @name WB_Rd_data_in[15] -pin U1|U8 WB_Rd_data_in[15] -pin U1|WB_PipelineReg Rd_data_in[15]
load net U1|WB_Rd_data_in[16] -attr @rip(#000000) WB_Rd_data_in[16] -attr @name WB_Rd_data_in[16] -pin U1|U8 WB_Rd_data_in[16] -pin U1|WB_PipelineReg Rd_data_in[16]
load net U1|WB_Rd_data_in[17] -attr @rip(#000000) WB_Rd_data_in[17] -attr @name WB_Rd_data_in[17] -pin U1|U8 WB_Rd_data_in[17] -pin U1|WB_PipelineReg Rd_data_in[17]
load net U1|WB_Rd_data_in[18] -attr @rip(#000000) WB_Rd_data_in[18] -attr @name WB_Rd_data_in[18] -pin U1|U8 WB_Rd_data_in[18] -pin U1|WB_PipelineReg Rd_data_in[18]
load net U1|WB_Rd_data_in[19] -attr @rip(#000000) WB_Rd_data_in[19] -attr @name WB_Rd_data_in[19] -pin U1|U8 WB_Rd_data_in[19] -pin U1|WB_PipelineReg Rd_data_in[19]
load net U1|WB_Rd_data_in[1] -attr @rip(#000000) WB_Rd_data_in[1] -attr @name WB_Rd_data_in[1] -pin U1|U8 WB_Rd_data_in[1] -pin U1|WB_PipelineReg Rd_data_in[1]
load net U1|WB_Rd_data_in[20] -attr @rip(#000000) WB_Rd_data_in[20] -attr @name WB_Rd_data_in[20] -pin U1|U8 WB_Rd_data_in[20] -pin U1|WB_PipelineReg Rd_data_in[20]
load net U1|WB_Rd_data_in[21] -attr @rip(#000000) WB_Rd_data_in[21] -attr @name WB_Rd_data_in[21] -pin U1|U8 WB_Rd_data_in[21] -pin U1|WB_PipelineReg Rd_data_in[21]
load net U1|WB_Rd_data_in[22] -attr @rip(#000000) WB_Rd_data_in[22] -attr @name WB_Rd_data_in[22] -pin U1|U8 WB_Rd_data_in[22] -pin U1|WB_PipelineReg Rd_data_in[22]
load net U1|WB_Rd_data_in[23] -attr @rip(#000000) WB_Rd_data_in[23] -attr @name WB_Rd_data_in[23] -pin U1|U8 WB_Rd_data_in[23] -pin U1|WB_PipelineReg Rd_data_in[23]
load net U1|WB_Rd_data_in[24] -attr @rip(#000000) WB_Rd_data_in[24] -attr @name WB_Rd_data_in[24] -pin U1|U8 WB_Rd_data_in[24] -pin U1|WB_PipelineReg Rd_data_in[24]
load net U1|WB_Rd_data_in[25] -attr @rip(#000000) WB_Rd_data_in[25] -attr @name WB_Rd_data_in[25] -pin U1|U8 WB_Rd_data_in[25] -pin U1|WB_PipelineReg Rd_data_in[25]
load net U1|WB_Rd_data_in[26] -attr @rip(#000000) WB_Rd_data_in[26] -attr @name WB_Rd_data_in[26] -pin U1|U8 WB_Rd_data_in[26] -pin U1|WB_PipelineReg Rd_data_in[26]
load net U1|WB_Rd_data_in[27] -attr @rip(#000000) WB_Rd_data_in[27] -attr @name WB_Rd_data_in[27] -pin U1|U8 WB_Rd_data_in[27] -pin U1|WB_PipelineReg Rd_data_in[27]
load net U1|WB_Rd_data_in[28] -attr @rip(#000000) WB_Rd_data_in[28] -attr @name WB_Rd_data_in[28] -pin U1|U8 WB_Rd_data_in[28] -pin U1|WB_PipelineReg Rd_data_in[28]
load net U1|WB_Rd_data_in[29] -attr @rip(#000000) WB_Rd_data_in[29] -attr @name WB_Rd_data_in[29] -pin U1|U8 WB_Rd_data_in[29] -pin U1|WB_PipelineReg Rd_data_in[29]
load net U1|WB_Rd_data_in[2] -attr @rip(#000000) WB_Rd_data_in[2] -attr @name WB_Rd_data_in[2] -pin U1|U8 WB_Rd_data_in[2] -pin U1|WB_PipelineReg Rd_data_in[2]
load net U1|WB_Rd_data_in[30] -attr @rip(#000000) WB_Rd_data_in[30] -attr @name WB_Rd_data_in[30] -pin U1|U8 WB_Rd_data_in[30] -pin U1|WB_PipelineReg Rd_data_in[30]
load net U1|WB_Rd_data_in[31] -attr @rip(#000000) WB_Rd_data_in[31] -attr @name WB_Rd_data_in[31] -pin U1|U8 WB_Rd_data_in[31] -pin U1|WB_PipelineReg Rd_data_in[31]
load net U1|WB_Rd_data_in[3] -attr @rip(#000000) WB_Rd_data_in[3] -attr @name WB_Rd_data_in[3] -pin U1|U8 WB_Rd_data_in[3] -pin U1|WB_PipelineReg Rd_data_in[3]
load net U1|WB_Rd_data_in[4] -attr @rip(#000000) WB_Rd_data_in[4] -attr @name WB_Rd_data_in[4] -pin U1|U8 WB_Rd_data_in[4] -pin U1|WB_PipelineReg Rd_data_in[4]
load net U1|WB_Rd_data_in[5] -attr @rip(#000000) WB_Rd_data_in[5] -attr @name WB_Rd_data_in[5] -pin U1|U8 WB_Rd_data_in[5] -pin U1|WB_PipelineReg Rd_data_in[5]
load net U1|WB_Rd_data_in[6] -attr @rip(#000000) WB_Rd_data_in[6] -attr @name WB_Rd_data_in[6] -pin U1|U8 WB_Rd_data_in[6] -pin U1|WB_PipelineReg Rd_data_in[6]
load net U1|WB_Rd_data_in[7] -attr @rip(#000000) WB_Rd_data_in[7] -attr @name WB_Rd_data_in[7] -pin U1|U8 WB_Rd_data_in[7] -pin U1|WB_PipelineReg Rd_data_in[7]
load net U1|WB_Rd_data_in[8] -attr @rip(#000000) WB_Rd_data_in[8] -attr @name WB_Rd_data_in[8] -pin U1|U8 WB_Rd_data_in[8] -pin U1|WB_PipelineReg Rd_data_in[8]
load net U1|WB_Rd_data_in[9] -attr @rip(#000000) WB_Rd_data_in[9] -attr @name WB_Rd_data_in[9] -pin U1|U8 WB_Rd_data_in[9] -pin U1|WB_PipelineReg Rd_data_in[9]
load net U1|WB_RegWrite -attr @name WB_RegWrite -pin U1|U2 RegWrite -pin U1|U5 WB_RegWrite -pin U1|WB_PipelineReg RegWrite
netloc U1|WB_RegWrite 1 3 5 1510 1368 NJ 1368 NJ 1368 2950J 1168 3420J
load net U1|adder_1[0] -attr @rip(#000000) adder_1[0] -attr @name adder_1[0] -pin U1|U3 A[0] -pin U1|U5 adder_1[0]
load net U1|adder_1[10] -attr @rip(#000000) adder_1[10] -attr @name adder_1[10] -pin U1|U3 A[10] -pin U1|U5 adder_1[10]
load net U1|adder_1[11] -attr @rip(#000000) adder_1[11] -attr @name adder_1[11] -pin U1|U3 A[11] -pin U1|U5 adder_1[11]
load net U1|adder_1[12] -attr @rip(#000000) adder_1[12] -attr @name adder_1[12] -pin U1|U3 A[12] -pin U1|U5 adder_1[12]
load net U1|adder_1[13] -attr @rip(#000000) adder_1[13] -attr @name adder_1[13] -pin U1|U3 A[13] -pin U1|U5 adder_1[13]
load net U1|adder_1[14] -attr @rip(#000000) adder_1[14] -attr @name adder_1[14] -pin U1|U3 A[14] -pin U1|U5 adder_1[14]
load net U1|adder_1[15] -attr @rip(#000000) adder_1[15] -attr @name adder_1[15] -pin U1|U3 A[15] -pin U1|U5 adder_1[15]
load net U1|adder_1[16] -attr @rip(#000000) adder_1[16] -attr @name adder_1[16] -pin U1|U3 A[16] -pin U1|U5 adder_1[16]
load net U1|adder_1[17] -attr @rip(#000000) adder_1[17] -attr @name adder_1[17] -pin U1|U3 A[17] -pin U1|U5 adder_1[17]
load net U1|adder_1[18] -attr @rip(#000000) adder_1[18] -attr @name adder_1[18] -pin U1|U3 A[18] -pin U1|U5 adder_1[18]
load net U1|adder_1[19] -attr @rip(#000000) adder_1[19] -attr @name adder_1[19] -pin U1|U3 A[19] -pin U1|U5 adder_1[19]
load net U1|adder_1[1] -attr @rip(#000000) adder_1[1] -attr @name adder_1[1] -pin U1|U3 A[1] -pin U1|U5 adder_1[1]
load net U1|adder_1[20] -attr @rip(#000000) adder_1[20] -attr @name adder_1[20] -pin U1|U3 A[20] -pin U1|U5 adder_1[20]
load net U1|adder_1[21] -attr @rip(#000000) adder_1[21] -attr @name adder_1[21] -pin U1|U3 A[21] -pin U1|U5 adder_1[21]
load net U1|adder_1[22] -attr @rip(#000000) adder_1[22] -attr @name adder_1[22] -pin U1|U3 A[22] -pin U1|U5 adder_1[22]
load net U1|adder_1[23] -attr @rip(#000000) adder_1[23] -attr @name adder_1[23] -pin U1|U3 A[23] -pin U1|U5 adder_1[23]
load net U1|adder_1[24] -attr @rip(#000000) adder_1[24] -attr @name adder_1[24] -pin U1|U3 A[24] -pin U1|U5 adder_1[24]
load net U1|adder_1[25] -attr @rip(#000000) adder_1[25] -attr @name adder_1[25] -pin U1|U3 A[25] -pin U1|U5 adder_1[25]
load net U1|adder_1[26] -attr @rip(#000000) adder_1[26] -attr @name adder_1[26] -pin U1|U3 A[26] -pin U1|U5 adder_1[26]
load net U1|adder_1[27] -attr @rip(#000000) adder_1[27] -attr @name adder_1[27] -pin U1|U3 A[27] -pin U1|U5 adder_1[27]
load net U1|adder_1[28] -attr @rip(#000000) adder_1[28] -attr @name adder_1[28] -pin U1|U3 A[28] -pin U1|U5 adder_1[28]
load net U1|adder_1[29] -attr @rip(#000000) adder_1[29] -attr @name adder_1[29] -pin U1|U3 A[29] -pin U1|U5 adder_1[29]
load net U1|adder_1[2] -attr @rip(#000000) adder_1[2] -attr @name adder_1[2] -pin U1|U3 A[2] -pin U1|U5 adder_1[2]
load net U1|adder_1[30] -attr @rip(#000000) adder_1[30] -attr @name adder_1[30] -pin U1|U3 A[30] -pin U1|U5 adder_1[30]
load net U1|adder_1[31] -attr @rip(#000000) adder_1[31] -attr @name adder_1[31] -pin U1|U3 A[31] -pin U1|U5 adder_1[31]
load net U1|adder_1[3] -attr @rip(#000000) adder_1[3] -attr @name adder_1[3] -pin U1|U3 A[3] -pin U1|U5 adder_1[3]
load net U1|adder_1[4] -attr @rip(#000000) adder_1[4] -attr @name adder_1[4] -pin U1|U3 A[4] -pin U1|U5 adder_1[4]
load net U1|adder_1[5] -attr @rip(#000000) adder_1[5] -attr @name adder_1[5] -pin U1|U3 A[5] -pin U1|U5 adder_1[5]
load net U1|adder_1[6] -attr @rip(#000000) adder_1[6] -attr @name adder_1[6] -pin U1|U3 A[6] -pin U1|U5 adder_1[6]
load net U1|adder_1[7] -attr @rip(#000000) adder_1[7] -attr @name adder_1[7] -pin U1|U3 A[7] -pin U1|U5 adder_1[7]
load net U1|adder_1[8] -attr @rip(#000000) adder_1[8] -attr @name adder_1[8] -pin U1|U3 A[8] -pin U1|U5 adder_1[8]
load net U1|adder_1[9] -attr @rip(#000000) adder_1[9] -attr @name adder_1[9] -pin U1|U3 A[9] -pin U1|U5 adder_1[9]
load net U1|adder_2[0] -attr @rip(#000000) adder_2[0] -attr @name adder_2[0] -pin U1|U3 B[0] -pin U1|U5 adder_2[0]
load net U1|adder_2[10] -attr @rip(#000000) adder_2[10] -attr @name adder_2[10] -pin U1|U3 B[10] -pin U1|U5 adder_2[10]
load net U1|adder_2[11] -attr @rip(#000000) adder_2[11] -attr @name adder_2[11] -pin U1|U3 B[11] -pin U1|U5 adder_2[11]
load net U1|adder_2[12] -attr @rip(#000000) adder_2[12] -attr @name adder_2[12] -pin U1|U3 B[12] -pin U1|U5 adder_2[12]
load net U1|adder_2[13] -attr @rip(#000000) adder_2[13] -attr @name adder_2[13] -pin U1|U3 B[13] -pin U1|U5 adder_2[13]
load net U1|adder_2[14] -attr @rip(#000000) adder_2[14] -attr @name adder_2[14] -pin U1|U3 B[14] -pin U1|U5 adder_2[14]
load net U1|adder_2[15] -attr @rip(#000000) adder_2[15] -attr @name adder_2[15] -pin U1|U3 B[15] -pin U1|U5 adder_2[15]
load net U1|adder_2[16] -attr @rip(#000000) adder_2[16] -attr @name adder_2[16] -pin U1|U3 B[16] -pin U1|U5 adder_2[16]
load net U1|adder_2[17] -attr @rip(#000000) adder_2[17] -attr @name adder_2[17] -pin U1|U3 B[17] -pin U1|U5 adder_2[17]
load net U1|adder_2[18] -attr @rip(#000000) adder_2[18] -attr @name adder_2[18] -pin U1|U3 B[18] -pin U1|U5 adder_2[18]
load net U1|adder_2[19] -attr @rip(#000000) adder_2[19] -attr @name adder_2[19] -pin U1|U3 B[19] -pin U1|U5 adder_2[19]
load net U1|adder_2[1] -attr @rip(#000000) adder_2[1] -attr @name adder_2[1] -pin U1|U3 B[1] -pin U1|U5 adder_2[1]
load net U1|adder_2[20] -attr @rip(#000000) adder_2[20] -attr @name adder_2[20] -pin U1|U3 B[20] -pin U1|U5 adder_2[20]
load net U1|adder_2[21] -attr @rip(#000000) adder_2[21] -attr @name adder_2[21] -pin U1|U3 B[21] -pin U1|U5 adder_2[21]
load net U1|adder_2[22] -attr @rip(#000000) adder_2[22] -attr @name adder_2[22] -pin U1|U3 B[22] -pin U1|U5 adder_2[22]
load net U1|adder_2[23] -attr @rip(#000000) adder_2[23] -attr @name adder_2[23] -pin U1|U3 B[23] -pin U1|U5 adder_2[23]
load net U1|adder_2[24] -attr @rip(#000000) adder_2[24] -attr @name adder_2[24] -pin U1|U3 B[24] -pin U1|U5 adder_2[24]
load net U1|adder_2[25] -attr @rip(#000000) adder_2[25] -attr @name adder_2[25] -pin U1|U3 B[25] -pin U1|U5 adder_2[25]
load net U1|adder_2[26] -attr @rip(#000000) adder_2[26] -attr @name adder_2[26] -pin U1|U3 B[26] -pin U1|U5 adder_2[26]
load net U1|adder_2[27] -attr @rip(#000000) adder_2[27] -attr @name adder_2[27] -pin U1|U3 B[27] -pin U1|U5 adder_2[27]
load net U1|adder_2[28] -attr @rip(#000000) adder_2[28] -attr @name adder_2[28] -pin U1|U3 B[28] -pin U1|U5 adder_2[28]
load net U1|adder_2[29] -attr @rip(#000000) adder_2[29] -attr @name adder_2[29] -pin U1|U3 B[29] -pin U1|U5 adder_2[29]
load net U1|adder_2[2] -attr @rip(#000000) adder_2[2] -attr @name adder_2[2] -pin U1|U3 B[2] -pin U1|U5 adder_2[2]
load net U1|adder_2[30] -attr @rip(#000000) adder_2[30] -attr @name adder_2[30] -pin U1|U3 B[30] -pin U1|U5 adder_2[30]
load net U1|adder_2[31] -attr @rip(#000000) adder_2[31] -attr @name adder_2[31] -pin U1|U3 B[31] -pin U1|U5 adder_2[31]
load net U1|adder_2[3] -attr @rip(#000000) adder_2[3] -attr @name adder_2[3] -pin U1|U3 B[3] -pin U1|U5 adder_2[3]
load net U1|adder_2[4] -attr @rip(#000000) adder_2[4] -attr @name adder_2[4] -pin U1|U3 B[4] -pin U1|U5 adder_2[4]
load net U1|adder_2[5] -attr @rip(#000000) adder_2[5] -attr @name adder_2[5] -pin U1|U3 B[5] -pin U1|U5 adder_2[5]
load net U1|adder_2[6] -attr @rip(#000000) adder_2[6] -attr @name adder_2[6] -pin U1|U3 B[6] -pin U1|U5 adder_2[6]
load net U1|adder_2[7] -attr @rip(#000000) adder_2[7] -attr @name adder_2[7] -pin U1|U3 B[7] -pin U1|U5 adder_2[7]
load net U1|adder_2[8] -attr @rip(#000000) adder_2[8] -attr @name adder_2[8] -pin U1|U3 B[8] -pin U1|U5 adder_2[8]
load net U1|adder_2[9] -attr @rip(#000000) adder_2[9] -attr @name adder_2[9] -pin U1|U3 B[9] -pin U1|U5 adder_2[9]
load net U1|change -attr @name change -pin U1|U0 change -pin U1|U7 change
netloc U1|change 1 6 1 2830 1228n
load net U1|clk -attr @name clk -hierPin U1 clk -pin U1|PC_reg[31:0] C -pin U1|U2 clk -pin U1|clk0_i I0
netloc U1|clk 1 0 11 NJ 1848 480 1688 NJ 1688 NJ 1688 1880J 1728 NJ 1728 NJ 1728 3560 988 4070J 1048 4980J 1438 5810
load net U1|clk0 -attr @name clk0 -pin U1|EX_PipelineReg clk -pin U1|ID_PipelineReg clk -pin U1|MEM_PipelineReg clk -pin U1|WB_PipelineReg clk -pin U1|clk0_i O
netloc U1|clk0 1 2 8 890 1728 NJ 1728 1940 1488 2310J 1508 NJ 1508 NJ 1508 4380 1008 4960J
load net U1|inst_in[0] -attr @rip(#000000) inst_in[0] -attr @name inst_in[0] -hierPin U1 inst_in[0] -pin U1|ID_PipelineReg inst_in[0]
load net U1|inst_in[10] -attr @rip(#000000) inst_in[10] -attr @name inst_in[10] -hierPin U1 inst_in[10] -pin U1|ID_PipelineReg inst_in[10]
load net U1|inst_in[11] -attr @rip(#000000) inst_in[11] -attr @name inst_in[11] -hierPin U1 inst_in[11] -pin U1|ID_PipelineReg inst_in[11]
load net U1|inst_in[12] -attr @rip(#000000) inst_in[12] -attr @name inst_in[12] -hierPin U1 inst_in[12] -pin U1|ID_PipelineReg inst_in[12]
load net U1|inst_in[13] -attr @rip(#000000) inst_in[13] -attr @name inst_in[13] -hierPin U1 inst_in[13] -pin U1|ID_PipelineReg inst_in[13]
load net U1|inst_in[14] -attr @rip(#000000) inst_in[14] -attr @name inst_in[14] -hierPin U1 inst_in[14] -pin U1|ID_PipelineReg inst_in[14]
load net U1|inst_in[15] -attr @rip(#000000) inst_in[15] -attr @name inst_in[15] -hierPin U1 inst_in[15] -pin U1|ID_PipelineReg inst_in[15]
load net U1|inst_in[16] -attr @rip(#000000) inst_in[16] -attr @name inst_in[16] -hierPin U1 inst_in[16] -pin U1|ID_PipelineReg inst_in[16]
load net U1|inst_in[17] -attr @rip(#000000) inst_in[17] -attr @name inst_in[17] -hierPin U1 inst_in[17] -pin U1|ID_PipelineReg inst_in[17]
load net U1|inst_in[18] -attr @rip(#000000) inst_in[18] -attr @name inst_in[18] -hierPin U1 inst_in[18] -pin U1|ID_PipelineReg inst_in[18]
load net U1|inst_in[19] -attr @rip(#000000) inst_in[19] -attr @name inst_in[19] -hierPin U1 inst_in[19] -pin U1|ID_PipelineReg inst_in[19]
load net U1|inst_in[1] -attr @rip(#000000) inst_in[1] -attr @name inst_in[1] -hierPin U1 inst_in[1] -pin U1|ID_PipelineReg inst_in[1]
load net U1|inst_in[20] -attr @rip(#000000) inst_in[20] -attr @name inst_in[20] -hierPin U1 inst_in[20] -pin U1|ID_PipelineReg inst_in[20]
load net U1|inst_in[21] -attr @rip(#000000) inst_in[21] -attr @name inst_in[21] -hierPin U1 inst_in[21] -pin U1|ID_PipelineReg inst_in[21]
load net U1|inst_in[22] -attr @rip(#000000) inst_in[22] -attr @name inst_in[22] -hierPin U1 inst_in[22] -pin U1|ID_PipelineReg inst_in[22]
load net U1|inst_in[23] -attr @rip(#000000) inst_in[23] -attr @name inst_in[23] -hierPin U1 inst_in[23] -pin U1|ID_PipelineReg inst_in[23]
load net U1|inst_in[24] -attr @rip(#000000) inst_in[24] -attr @name inst_in[24] -hierPin U1 inst_in[24] -pin U1|ID_PipelineReg inst_in[24]
load net U1|inst_in[25] -attr @rip(#000000) inst_in[25] -attr @name inst_in[25] -hierPin U1 inst_in[25] -pin U1|ID_PipelineReg inst_in[25]
load net U1|inst_in[26] -attr @rip(#000000) inst_in[26] -attr @name inst_in[26] -hierPin U1 inst_in[26] -pin U1|ID_PipelineReg inst_in[26]
load net U1|inst_in[27] -attr @rip(#000000) inst_in[27] -attr @name inst_in[27] -hierPin U1 inst_in[27] -pin U1|ID_PipelineReg inst_in[27]
load net U1|inst_in[28] -attr @rip(#000000) inst_in[28] -attr @name inst_in[28] -hierPin U1 inst_in[28] -pin U1|ID_PipelineReg inst_in[28]
load net U1|inst_in[29] -attr @rip(#000000) inst_in[29] -attr @name inst_in[29] -hierPin U1 inst_in[29] -pin U1|ID_PipelineReg inst_in[29]
load net U1|inst_in[2] -attr @rip(#000000) inst_in[2] -attr @name inst_in[2] -hierPin U1 inst_in[2] -pin U1|ID_PipelineReg inst_in[2]
load net U1|inst_in[30] -attr @rip(#000000) inst_in[30] -attr @name inst_in[30] -hierPin U1 inst_in[30] -pin U1|ID_PipelineReg inst_in[30]
load net U1|inst_in[31] -attr @rip(#000000) inst_in[31] -attr @name inst_in[31] -hierPin U1 inst_in[31] -pin U1|ID_PipelineReg inst_in[31]
load net U1|inst_in[3] -attr @rip(#000000) inst_in[3] -attr @name inst_in[3] -hierPin U1 inst_in[3] -pin U1|ID_PipelineReg inst_in[3]
load net U1|inst_in[4] -attr @rip(#000000) inst_in[4] -attr @name inst_in[4] -hierPin U1 inst_in[4] -pin U1|ID_PipelineReg inst_in[4]
load net U1|inst_in[5] -attr @rip(#000000) inst_in[5] -attr @name inst_in[5] -hierPin U1 inst_in[5] -pin U1|ID_PipelineReg inst_in[5]
load net U1|inst_in[6] -attr @rip(#000000) inst_in[6] -attr @name inst_in[6] -hierPin U1 inst_in[6] -pin U1|ID_PipelineReg inst_in[6]
load net U1|inst_in[7] -attr @rip(#000000) inst_in[7] -attr @name inst_in[7] -hierPin U1 inst_in[7] -pin U1|ID_PipelineReg inst_in[7]
load net U1|inst_in[8] -attr @rip(#000000) inst_in[8] -attr @name inst_in[8] -hierPin U1 inst_in[8] -pin U1|ID_PipelineReg inst_in[8]
load net U1|inst_in[9] -attr @rip(#000000) inst_in[9] -attr @name inst_in[9] -hierPin U1 inst_in[9] -pin U1|ID_PipelineReg inst_in[9]
load net U1|mem_out[0] -attr @rip(#000000) mem_data[0] -attr @name mem_out[0] -pin U1|U4 mem_data[0] -pin U1|U8 mem_out[0]
load net U1|mem_out[10] -attr @rip(#000000) mem_data[10] -attr @name mem_out[10] -pin U1|U4 mem_data[10] -pin U1|U8 mem_out[10]
load net U1|mem_out[11] -attr @rip(#000000) mem_data[11] -attr @name mem_out[11] -pin U1|U4 mem_data[11] -pin U1|U8 mem_out[11]
load net U1|mem_out[12] -attr @rip(#000000) mem_data[12] -attr @name mem_out[12] -pin U1|U4 mem_data[12] -pin U1|U8 mem_out[12]
load net U1|mem_out[13] -attr @rip(#000000) mem_data[13] -attr @name mem_out[13] -pin U1|U4 mem_data[13] -pin U1|U8 mem_out[13]
load net U1|mem_out[14] -attr @rip(#000000) mem_data[14] -attr @name mem_out[14] -pin U1|U4 mem_data[14] -pin U1|U8 mem_out[14]
load net U1|mem_out[15] -attr @rip(#000000) mem_data[15] -attr @name mem_out[15] -pin U1|U4 mem_data[15] -pin U1|U8 mem_out[15]
load net U1|mem_out[16] -attr @rip(#000000) mem_data[16] -attr @name mem_out[16] -pin U1|U4 mem_data[16] -pin U1|U8 mem_out[16]
load net U1|mem_out[17] -attr @rip(#000000) mem_data[17] -attr @name mem_out[17] -pin U1|U4 mem_data[17] -pin U1|U8 mem_out[17]
load net U1|mem_out[18] -attr @rip(#000000) mem_data[18] -attr @name mem_out[18] -pin U1|U4 mem_data[18] -pin U1|U8 mem_out[18]
load net U1|mem_out[19] -attr @rip(#000000) mem_data[19] -attr @name mem_out[19] -pin U1|U4 mem_data[19] -pin U1|U8 mem_out[19]
load net U1|mem_out[1] -attr @rip(#000000) mem_data[1] -attr @name mem_out[1] -pin U1|U4 mem_data[1] -pin U1|U8 mem_out[1]
load net U1|mem_out[20] -attr @rip(#000000) mem_data[20] -attr @name mem_out[20] -pin U1|U4 mem_data[20] -pin U1|U8 mem_out[20]
load net U1|mem_out[21] -attr @rip(#000000) mem_data[21] -attr @name mem_out[21] -pin U1|U4 mem_data[21] -pin U1|U8 mem_out[21]
load net U1|mem_out[22] -attr @rip(#000000) mem_data[22] -attr @name mem_out[22] -pin U1|U4 mem_data[22] -pin U1|U8 mem_out[22]
load net U1|mem_out[23] -attr @rip(#000000) mem_data[23] -attr @name mem_out[23] -pin U1|U4 mem_data[23] -pin U1|U8 mem_out[23]
load net U1|mem_out[24] -attr @rip(#000000) mem_data[24] -attr @name mem_out[24] -pin U1|U4 mem_data[24] -pin U1|U8 mem_out[24]
load net U1|mem_out[25] -attr @rip(#000000) mem_data[25] -attr @name mem_out[25] -pin U1|U4 mem_data[25] -pin U1|U8 mem_out[25]
load net U1|mem_out[26] -attr @rip(#000000) mem_data[26] -attr @name mem_out[26] -pin U1|U4 mem_data[26] -pin U1|U8 mem_out[26]
load net U1|mem_out[27] -attr @rip(#000000) mem_data[27] -attr @name mem_out[27] -pin U1|U4 mem_data[27] -pin U1|U8 mem_out[27]
load net U1|mem_out[28] -attr @rip(#000000) mem_data[28] -attr @name mem_out[28] -pin U1|U4 mem_data[28] -pin U1|U8 mem_out[28]
load net U1|mem_out[29] -attr @rip(#000000) mem_data[29] -attr @name mem_out[29] -pin U1|U4 mem_data[29] -pin U1|U8 mem_out[29]
load net U1|mem_out[2] -attr @rip(#000000) mem_data[2] -attr @name mem_out[2] -pin U1|U4 mem_data[2] -pin U1|U8 mem_out[2]
load net U1|mem_out[30] -attr @rip(#000000) mem_data[30] -attr @name mem_out[30] -pin U1|U4 mem_data[30] -pin U1|U8 mem_out[30]
load net U1|mem_out[31] -attr @rip(#000000) mem_data[31] -attr @name mem_out[31] -pin U1|U4 mem_data[31] -pin U1|U8 mem_out[31]
load net U1|mem_out[3] -attr @rip(#000000) mem_data[3] -attr @name mem_out[3] -pin U1|U4 mem_data[3] -pin U1|U8 mem_out[3]
load net U1|mem_out[4] -attr @rip(#000000) mem_data[4] -attr @name mem_out[4] -pin U1|U4 mem_data[4] -pin U1|U8 mem_out[4]
load net U1|mem_out[5] -attr @rip(#000000) mem_data[5] -attr @name mem_out[5] -pin U1|U4 mem_data[5] -pin U1|U8 mem_out[5]
load net U1|mem_out[6] -attr @rip(#000000) mem_data[6] -attr @name mem_out[6] -pin U1|U4 mem_data[6] -pin U1|U8 mem_out[6]
load net U1|mem_out[7] -attr @rip(#000000) mem_data[7] -attr @name mem_out[7] -pin U1|U4 mem_data[7] -pin U1|U8 mem_out[7]
load net U1|mem_out[8] -attr @rip(#000000) mem_data[8] -attr @name mem_out[8] -pin U1|U4 mem_data[8] -pin U1|U8 mem_out[8]
load net U1|mem_out[9] -attr @rip(#000000) mem_data[9] -attr @name mem_out[9] -pin U1|U4 mem_data[9] -pin U1|U8 mem_out[9]
load net U1|rst -attr @name rst -hierPin U1 rst -pin U1|EX_PipelineReg rst -pin U1|ID_PipelineReg rst -pin U1|MEM_PipelineReg rst -pin U1|PC_reg[31:0] CLR -pin U1|U2 rst -pin U1|WB_PipelineReg rst
netloc U1|rst 1 0 11 NJ 1888 NJ 1888 930 1748 NJ 1748 1960 1648 NJ 1648 NJ 1648 3580 788 4420 1028 5000 1458 5770J
load net U1|wea[0] -attr @rip(#000000) wea[0] -attr @name wea[0] -hierPin U1 wea[0] -pin U1|U9 wea[0]
load net U1|wea[1] -attr @rip(#000000) wea[1] -attr @name wea[1] -hierPin U1 wea[1] -pin U1|U9 wea[1]
load net U1|wea[2] -attr @rip(#000000) wea[2] -attr @name wea[2] -hierPin U1 wea[2] -pin U1|U9 wea[2]
load net U1|wea[3] -attr @rip(#000000) wea[3] -attr @name wea[3] -hierPin U1 wea[3] -pin U1|U9 wea[3]
load net U1|zero -attr @name zero -pin U1|U3 zero -pin U1|U7 zero
netloc U1|zero 1 5 1 2370 1208n
load netBundle @U1|Data_in 32 U1|Data_in[31] U1|Data_in[30] U1|Data_in[29] U1|Data_in[28] U1|Data_in[27] U1|Data_in[26] U1|Data_in[25] U1|Data_in[24] U1|Data_in[23] U1|Data_in[22] U1|Data_in[21] U1|Data_in[20] U1|Data_in[19] U1|Data_in[18] U1|Data_in[17] U1|Data_in[16] U1|Data_in[15] U1|Data_in[14] U1|Data_in[13] U1|Data_in[12] U1|Data_in[11] U1|Data_in[10] U1|Data_in[9] U1|Data_in[8] U1|Data_in[7] U1|Data_in[6] U1|Data_in[5] U1|Data_in[4] U1|Data_in[3] U1|Data_in[2] U1|Data_in[1] U1|Data_in[0] -autobundled
netbloc @U1|Data_in 1 0 11 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 NJ 1808 5890
load netBundle @U1|inst_in 32 U1|inst_in[31] U1|inst_in[30] U1|inst_in[29] U1|inst_in[28] U1|inst_in[27] U1|inst_in[26] U1|inst_in[25] U1|inst_in[24] U1|inst_in[23] U1|inst_in[22] U1|inst_in[21] U1|inst_in[20] U1|inst_in[19] U1|inst_in[18] U1|inst_in[17] U1|inst_in[16] U1|inst_in[15] U1|inst_in[14] U1|inst_in[13] U1|inst_in[12] U1|inst_in[11] U1|inst_in[10] U1|inst_in[9] U1|inst_in[8] U1|inst_in[7] U1|inst_in[6] U1|inst_in[5] U1|inst_in[4] U1|inst_in[3] U1|inst_in[2] U1|inst_in[1] U1|inst_in[0] -autobundled
netbloc @U1|inst_in 1 0 5 NJ 1868 NJ 1868 NJ 1868 NJ 1868 1980
load netBundle @U1|EX_ALU_Control 4 U1|EX_ALU_Control[3] U1|EX_ALU_Control[2] U1|EX_ALU_Control[1] U1|EX_ALU_Control[0] -autobundled
netbloc @U1|EX_ALU_Control 1 4 6 2020 788 NJ 788 2810J 868 3300J 888 4130J 948 4960
load netBundle @U1|EX_Data_out 32 U1|EX_Data_out[31] U1|EX_Data_out[30] U1|EX_Data_out[29] U1|EX_Data_out[28] U1|EX_Data_out[27] U1|EX_Data_out[26] U1|EX_Data_out[25] U1|EX_Data_out[24] U1|EX_Data_out[23] U1|EX_Data_out[22] U1|EX_Data_out[21] U1|EX_Data_out[20] U1|EX_Data_out[19] U1|EX_Data_out[18] U1|EX_Data_out[17] U1|EX_Data_out[16] U1|EX_Data_out[15] U1|EX_Data_out[14] U1|EX_Data_out[13] U1|EX_Data_out[12] U1|EX_Data_out[11] U1|EX_Data_out[10] U1|EX_Data_out[9] U1|EX_Data_out[8] U1|EX_Data_out[7] U1|EX_Data_out[6] U1|EX_Data_out[5] U1|EX_Data_out[4] U1|EX_Data_out[3] U1|EX_Data_out[2] U1|EX_Data_out[1] U1|EX_Data_out[0] -autobundled
netbloc @U1|EX_Data_out 1 3 7 1430 628 NJ 628 NJ 628 2970J 728 NJ 728 4400J 808 4840
load netBundle @U1|EX_Imm 32 U1|EX_Imm[31] U1|EX_Imm[30] U1|EX_Imm[29] U1|EX_Imm[28] U1|EX_Imm[27] U1|EX_Imm[26] U1|EX_Imm[25] U1|EX_Imm[24] U1|EX_Imm[23] U1|EX_Imm[22] U1|EX_Imm[21] U1|EX_Imm[20] U1|EX_Imm[19] U1|EX_Imm[18] U1|EX_Imm[17] U1|EX_Imm[16] U1|EX_Imm[15] U1|EX_Imm[14] U1|EX_Imm[13] U1|EX_Imm[12] U1|EX_Imm[11] U1|EX_Imm[10] U1|EX_Imm[9] U1|EX_Imm[8] U1|EX_Imm[7] U1|EX_Imm[6] U1|EX_Imm[5] U1|EX_Imm[4] U1|EX_Imm[3] U1|EX_Imm[2] U1|EX_Imm[1] U1|EX_Imm[0] -autobundled
netbloc @U1|EX_Imm 1 1 9 440 1208 NJ 1208 1430 1268 NJ 1268 2390 1048 NJ 1048 NJ 1048 4010J 1108 4900
load netBundle @U1|EX_MemtoReg 2 U1|EX_MemtoReg[1] U1|EX_MemtoReg[0] -autobundled
netbloc @U1|EX_MemtoReg 1 1 9 500 1228 NJ 1228 NJ 1228 1900J 1108 2330 688 2830J 788 3400J 808 4320J 868 5180
load netBundle @U1|EX_PC 32 U1|EX_PC[31] U1|EX_PC[30] U1|EX_PC[29] U1|EX_PC[28] U1|EX_PC[27] U1|EX_PC[26] U1|EX_PC[25] U1|EX_PC[24] U1|EX_PC[23] U1|EX_PC[22] U1|EX_PC[21] U1|EX_PC[20] U1|EX_PC[19] U1|EX_PC[18] U1|EX_PC[17] U1|EX_PC[16] U1|EX_PC[15] U1|EX_PC[14] U1|EX_PC[13] U1|EX_PC[12] U1|EX_PC[11] U1|EX_PC[10] U1|EX_PC[9] U1|EX_PC[8] U1|EX_PC[7] U1|EX_PC[6] U1|EX_PC[5] U1|EX_PC[4] U1|EX_PC[3] U1|EX_PC[2] U1|EX_PC[1] U1|EX_PC[0] -autobundled
netbloc @U1|EX_PC 1 1 9 460 1288 NJ 1288 NJ 1288 NJ 1288 2350 1088 NJ 1088 NJ 1088 3970J 1148 5020
load netBundle @U1|EX_Rd_addr 5 U1|EX_Rd_addr[4] U1|EX_Rd_addr[3] U1|EX_Rd_addr[2] U1|EX_Rd_addr[1] U1|EX_Rd_addr[0] -autobundled
netbloc @U1|EX_Rd_addr 1 5 5 2430 728 2890J 828 3340J 848 4170J 908 5160
load netBundle @U1|EX_Rs1_addr 5 U1|EX_Rs1_addr[4] U1|EX_Rs1_addr[3] U1|EX_Rs1_addr[2] U1|EX_Rs1_addr[1] U1|EX_Rs1_addr[0] -autobundled
netbloc @U1|EX_Rs1_addr 1 3 7 1470 648 NJ 648 NJ 648 2950J 748 NJ 748 4360J 828 4820
load netBundle @U1|EX_Rs1_data 32 U1|EX_Rs1_data[31] U1|EX_Rs1_data[30] U1|EX_Rs1_data[29] U1|EX_Rs1_data[28] U1|EX_Rs1_data[27] U1|EX_Rs1_data[26] U1|EX_Rs1_data[25] U1|EX_Rs1_data[24] U1|EX_Rs1_data[23] U1|EX_Rs1_data[22] U1|EX_Rs1_data[21] U1|EX_Rs1_data[20] U1|EX_Rs1_data[19] U1|EX_Rs1_data[18] U1|EX_Rs1_data[17] U1|EX_Rs1_data[16] U1|EX_Rs1_data[15] U1|EX_Rs1_data[14] U1|EX_Rs1_data[13] U1|EX_Rs1_data[12] U1|EX_Rs1_data[11] U1|EX_Rs1_data[10] U1|EX_Rs1_data[9] U1|EX_Rs1_data[8] U1|EX_Rs1_data[7] U1|EX_Rs1_data[6] U1|EX_Rs1_data[5] U1|EX_Rs1_data[4] U1|EX_Rs1_data[3] U1|EX_Rs1_data[2] U1|EX_Rs1_data[1] U1|EX_Rs1_data[0] -autobundled
netbloc @U1|EX_Rs1_data 1 3 7 1510 668 NJ 668 NJ 668 2930J 768 NJ 768 4340J 848 4780
load netBundle @U1|EX_Rs2_addr 5 U1|EX_Rs2_addr[4] U1|EX_Rs2_addr[3] U1|EX_Rs2_addr[2] U1|EX_Rs2_addr[1] U1|EX_Rs2_addr[0] -autobundled
netbloc @U1|EX_Rs2_addr 1 3 7 1490 708 NJ 708 NJ 708 2910J 808 3360J 828 4190J 888 4860
load netBundle @U1|EX_Rs2_data 32 U1|EX_Rs2_data[31] U1|EX_Rs2_data[30] U1|EX_Rs2_data[29] U1|EX_Rs2_data[28] U1|EX_Rs2_data[27] U1|EX_Rs2_data[26] U1|EX_Rs2_data[25] U1|EX_Rs2_data[24] U1|EX_Rs2_data[23] U1|EX_Rs2_data[22] U1|EX_Rs2_data[21] U1|EX_Rs2_data[20] U1|EX_Rs2_data[19] U1|EX_Rs2_data[18] U1|EX_Rs2_data[17] U1|EX_Rs2_data[16] U1|EX_Rs2_data[15] U1|EX_Rs2_data[14] U1|EX_Rs2_data[13] U1|EX_Rs2_data[12] U1|EX_Rs2_data[11] U1|EX_Rs2_data[10] U1|EX_Rs2_data[9] U1|EX_Rs2_data[8] U1|EX_Rs2_data[7] U1|EX_Rs2_data[6] U1|EX_Rs2_data[5] U1|EX_Rs2_data[4] U1|EX_Rs2_data[3] U1|EX_Rs2_data[2] U1|EX_Rs2_data[1] U1|EX_Rs2_data[0] -autobundled
netbloc @U1|EX_Rs2_data 1 3 7 1450 888 NJ 888 2430J 968 NJ 968 3300J 948 4110J 968 4800
load netBundle @U1|EX_byte_n 2 U1|EX_byte_n[1] U1|EX_byte_n[0] -autobundled
netbloc @U1|EX_byte_n 1 9 1 5140 588n
load netBundle @U1|EX_wea 4 U1|EX_wea[3] U1|EX_wea[2] U1|EX_wea[1] U1|EX_wea[0] -autobundled
netbloc @U1|EX_wea 1 9 1 5080 648n
load netBundle @U1|ID_PC 32 U1|ID_PC[31] U1|ID_PC[30] U1|ID_PC[29] U1|ID_PC[28] U1|ID_PC[27] U1|ID_PC[26] U1|ID_PC[25] U1|ID_PC[24] U1|ID_PC[23] U1|ID_PC[22] U1|ID_PC[21] U1|ID_PC[20] U1|ID_PC[19] U1|ID_PC[18] U1|ID_PC[17] U1|ID_PC[16] U1|ID_PC[15] U1|ID_PC[14] U1|ID_PC[13] U1|ID_PC[12] U1|ID_PC[11] U1|ID_PC[10] U1|ID_PC[9] U1|ID_PC[8] U1|ID_PC[7] U1|ID_PC[6] U1|ID_PC[5] U1|ID_PC[4] U1|ID_PC[3] U1|ID_PC[2] U1|ID_PC[1] U1|ID_PC[0] -autobundled
netbloc @U1|ID_PC 1 5 4 2450 1388 2970 1188 NJ 1188 4300
load netBundle @U1|ID_inst 32 U1|ID_inst[31] U1|ID_inst[30] U1|ID_inst[29] U1|ID_inst[28] U1|ID_inst[27] U1|ID_inst[26] U1|ID_inst[25] U1|ID_inst[24] U1|ID_inst[23] U1|ID_inst[22] U1|ID_inst[21] U1|ID_inst[20] U1|ID_inst[19] U1|ID_inst[18] U1|ID_inst[17] U1|ID_inst[16] U1|ID_inst[15] U1|ID_inst[14] U1|ID_inst[13] U1|ID_inst[12] U1|ID_inst[11] U1|ID_inst[10] U1|ID_inst[9] U1|ID_inst[8] U1|ID_inst[7] U1|ID_inst[6] U1|ID_inst[5] U1|ID_inst[4] U1|ID_inst[3] U1|ID_inst[2] U1|ID_inst[1] U1|ID_inst[0] -autobundled
netbloc @U1|ID_inst 1 5 4 2410 768 2850 688 3340 668 4260
load netBundle @U1|MEM_Addr_out 32 U1|MEM_Addr_out[31] U1|MEM_Addr_out[30] U1|MEM_Addr_out[29] U1|MEM_Addr_out[28] U1|MEM_Addr_out[27] U1|MEM_Addr_out[26] U1|MEM_Addr_out[25] U1|MEM_Addr_out[24] U1|MEM_Addr_out[23] U1|MEM_Addr_out[22] U1|MEM_Addr_out[21] U1|MEM_Addr_out[20] U1|MEM_Addr_out[19] U1|MEM_Addr_out[18] U1|MEM_Addr_out[17] U1|MEM_Addr_out[16] U1|MEM_Addr_out[15] U1|MEM_Addr_out[14] U1|MEM_Addr_out[13] U1|MEM_Addr_out[12] U1|MEM_Addr_out[11] U1|MEM_Addr_out[10] U1|MEM_Addr_out[9] U1|MEM_Addr_out[8] U1|MEM_Addr_out[7] U1|MEM_Addr_out[6] U1|MEM_Addr_out[5] U1|MEM_Addr_out[4] U1|MEM_Addr_out[3] U1|MEM_Addr_out[2] U1|MEM_Addr_out[1] U1|MEM_Addr_out[0] -autobundled
netbloc @U1|MEM_Addr_out 1 10 1 5870 958n
load netBundle @U1|MEM_Data_out 32 U1|MEM_Data_out[31] U1|MEM_Data_out[30] U1|MEM_Data_out[29] U1|MEM_Data_out[28] U1|MEM_Data_out[27] U1|MEM_Data_out[26] U1|MEM_Data_out[25] U1|MEM_Data_out[24] U1|MEM_Data_out[23] U1|MEM_Data_out[22] U1|MEM_Data_out[21] U1|MEM_Data_out[20] U1|MEM_Data_out[19] U1|MEM_Data_out[18] U1|MEM_Data_out[17] U1|MEM_Data_out[16] U1|MEM_Data_out[15] U1|MEM_Data_out[14] U1|MEM_Data_out[13] U1|MEM_Data_out[12] U1|MEM_Data_out[11] U1|MEM_Data_out[10] U1|MEM_Data_out[9] U1|MEM_Data_out[8] U1|MEM_Data_out[7] U1|MEM_Data_out[6] U1|MEM_Data_out[5] U1|MEM_Data_out[4] U1|MEM_Data_out[3] U1|MEM_Data_out[2] U1|MEM_Data_out[1] U1|MEM_Data_out[0] -autobundled
netbloc @U1|MEM_Data_out 1 10 1 5830 978n
load netBundle @U1|MEM_MemtoReg 2 U1|MEM_MemtoReg[1] U1|MEM_MemtoReg[0] -autobundled
netbloc @U1|MEM_MemtoReg 1 1 10 480 1308 NJ 1308 1370J 1448 NJ 1448 2350J 1468 NJ 1468 NJ 1468 NJ 1468 4780J 1558 5670
load netBundle @U1|MEM_PC 32 U1|MEM_PC[31] U1|MEM_PC[30] U1|MEM_PC[29] U1|MEM_PC[28] U1|MEM_PC[27] U1|MEM_PC[26] U1|MEM_PC[25] U1|MEM_PC[24] U1|MEM_PC[23] U1|MEM_PC[22] U1|MEM_PC[21] U1|MEM_PC[20] U1|MEM_PC[19] U1|MEM_PC[18] U1|MEM_PC[17] U1|MEM_PC[16] U1|MEM_PC[15] U1|MEM_PC[14] U1|MEM_PC[13] U1|MEM_PC[12] U1|MEM_PC[11] U1|MEM_PC[10] U1|MEM_PC[9] U1|MEM_PC[8] U1|MEM_PC[7] U1|MEM_PC[6] U1|MEM_PC[5] U1|MEM_PC[4] U1|MEM_PC[3] U1|MEM_PC[2] U1|MEM_PC[1] U1|MEM_PC[0] -autobundled
netbloc @U1|MEM_PC 1 2 9 950 1448 1290J 1488 1920J 1688 NJ 1688 NJ 1688 NJ 1688 NJ 1688 NJ 1688 5750
load netBundle @U1|MEM_Rd_addr 5 U1|MEM_Rd_addr[4] U1|MEM_Rd_addr[3] U1|MEM_Rd_addr[2] U1|MEM_Rd_addr[1] U1|MEM_Rd_addr[0] -autobundled
netbloc @U1|MEM_Rd_addr 1 2 9 970 1468 1270 1388 NJ 1388 2430J 1408 NJ 1408 NJ 1408 NJ 1408 5160J 1498 5730
load netBundle @U1|MEM_Rd_data 32 U1|MEM_Rd_data[31] U1|MEM_Rd_data[30] U1|MEM_Rd_data[29] U1|MEM_Rd_data[28] U1|MEM_Rd_data[27] U1|MEM_Rd_data[26] U1|MEM_Rd_data[25] U1|MEM_Rd_data[24] U1|MEM_Rd_data[23] U1|MEM_Rd_data[22] U1|MEM_Rd_data[21] U1|MEM_Rd_data[20] U1|MEM_Rd_data[19] U1|MEM_Rd_data[18] U1|MEM_Rd_data[17] U1|MEM_Rd_data[16] U1|MEM_Rd_data[15] U1|MEM_Rd_data[14] U1|MEM_Rd_data[13] U1|MEM_Rd_data[12] U1|MEM_Rd_data[11] U1|MEM_Rd_data[10] U1|MEM_Rd_data[9] U1|MEM_Rd_data[8] U1|MEM_Rd_data[7] U1|MEM_Rd_data[6] U1|MEM_Rd_data[5] U1|MEM_Rd_data[4] U1|MEM_Rd_data[3] U1|MEM_Rd_data[2] U1|MEM_Rd_data[1] U1|MEM_Rd_data[0] -autobundled
netbloc @U1|MEM_Rd_data 1 1 10 520 1528 910J 1428 1330 1408 NJ 1408 2390J 1428 NJ 1428 NJ 1428 NJ 1428 4940J 1518 5690
load netBundle @U1|MEM_byte_n 2 U1|MEM_byte_n[1] U1|MEM_byte_n[0] -autobundled
netbloc @U1|MEM_byte_n 1 0 11 160 1548 NJ 1548 930J 1488 1270J 1668 1900J 1708 NJ 1708 NJ 1708 NJ 1708 NJ 1708 NJ 1708 5650
load netBundle @U1|MEM_wea 4 U1|MEM_wea[3] U1|MEM_wea[2] U1|MEM_wea[1] U1|MEM_wea[0] -autobundled
netbloc @U1|MEM_wea 1 10 1 5790 1138n
load netBundle @U1|PC_in 32 U1|PC_in[31] U1|PC_in[30] U1|PC_in[29] U1|PC_in[28] U1|PC_in[27] U1|PC_in[26] U1|PC_in[25] U1|PC_in[24] U1|PC_in[23] U1|PC_in[22] U1|PC_in[21] U1|PC_in[20] U1|PC_in[19] U1|PC_in[18] U1|PC_in[17] U1|PC_in[16] U1|PC_in[15] U1|PC_in[14] U1|PC_in[13] U1|PC_in[12] U1|PC_in[11] U1|PC_in[10] U1|PC_in[9] U1|PC_in[8] U1|PC_in[7] U1|PC_in[6] U1|PC_in[5] U1|PC_in[4] U1|PC_in[3] U1|PC_in[2] U1|PC_in[1] U1|PC_in[0] -autobundled
netbloc @U1|PC_in 1 7 4 NJ 1288 NJ 1288 5180J 1478 5850
load netBundle @U1|EX_Imm_in 32 U1|EX_Imm_in[31] U1|EX_Imm_in[30] U1|EX_Imm_in[29] U1|EX_Imm_in[28] U1|EX_Imm_in[27] U1|EX_Imm_in[26] U1|EX_Imm_in[25] U1|EX_Imm_in[24] U1|EX_Imm_in[23] U1|EX_Imm_in[22] U1|EX_Imm_in[21] U1|EX_Imm_in[20] U1|EX_Imm_in[19] U1|EX_Imm_in[18] U1|EX_Imm_in[17] U1|EX_Imm_in[16] U1|EX_Imm_in[15] U1|EX_Imm_in[14] U1|EX_Imm_in[13] U1|EX_Imm_in[12] U1|EX_Imm_in[11] U1|EX_Imm_in[10] U1|EX_Imm_in[9] U1|EX_Imm_in[8] U1|EX_Imm_in[7] U1|EX_Imm_in[6] U1|EX_Imm_in[5] U1|EX_Imm_in[4] U1|EX_Imm_in[3] U1|EX_Imm_in[2] U1|EX_Imm_in[1] U1|EX_Imm_in[0] -autobundled
netbloc @U1|EX_Imm_in 1 8 1 4420 138n
load netBundle @U1|EX_wea_in 4 U1|EX_wea_in[3] U1|EX_wea_in[2] U1|EX_wea_in[1] U1|EX_wea_in[0] -autobundled
netbloc @U1|EX_wea_in 1 8 1 4010 548n
load netBundle @U1|EX_Rs1_data_in 32 U1|EX_Rs1_data_in[31] U1|EX_Rs1_data_in[30] U1|EX_Rs1_data_in[29] U1|EX_Rs1_data_in[28] U1|EX_Rs1_data_in[27] U1|EX_Rs1_data_in[26] U1|EX_Rs1_data_in[25] U1|EX_Rs1_data_in[24] U1|EX_Rs1_data_in[23] U1|EX_Rs1_data_in[22] U1|EX_Rs1_data_in[21] U1|EX_Rs1_data_in[20] U1|EX_Rs1_data_in[19] U1|EX_Rs1_data_in[18] U1|EX_Rs1_data_in[17] U1|EX_Rs1_data_in[16] U1|EX_Rs1_data_in[15] U1|EX_Rs1_data_in[14] U1|EX_Rs1_data_in[13] U1|EX_Rs1_data_in[12] U1|EX_Rs1_data_in[11] U1|EX_Rs1_data_in[10] U1|EX_Rs1_data_in[9] U1|EX_Rs1_data_in[8] U1|EX_Rs1_data_in[7] U1|EX_Rs1_data_in[6] U1|EX_Rs1_data_in[5] U1|EX_Rs1_data_in[4] U1|EX_Rs1_data_in[3] U1|EX_Rs1_data_in[2] U1|EX_Rs1_data_in[1] U1|EX_Rs1_data_in[0] -autobundled
netbloc @U1|EX_Rs1_data_in 1 8 1 4380 288n
load netBundle @U1|EX_Rs2_data_in 32 U1|EX_Rs2_data_in[31] U1|EX_Rs2_data_in[30] U1|EX_Rs2_data_in[29] U1|EX_Rs2_data_in[28] U1|EX_Rs2_data_in[27] U1|EX_Rs2_data_in[26] U1|EX_Rs2_data_in[25] U1|EX_Rs2_data_in[24] U1|EX_Rs2_data_in[23] U1|EX_Rs2_data_in[22] U1|EX_Rs2_data_in[21] U1|EX_Rs2_data_in[20] U1|EX_Rs2_data_in[19] U1|EX_Rs2_data_in[18] U1|EX_Rs2_data_in[17] U1|EX_Rs2_data_in[16] U1|EX_Rs2_data_in[15] U1|EX_Rs2_data_in[14] U1|EX_Rs2_data_in[13] U1|EX_Rs2_data_in[12] U1|EX_Rs2_data_in[11] U1|EX_Rs2_data_in[10] U1|EX_Rs2_data_in[9] U1|EX_Rs2_data_in[8] U1|EX_Rs2_data_in[7] U1|EX_Rs2_data_in[6] U1|EX_Rs2_data_in[5] U1|EX_Rs2_data_in[4] U1|EX_Rs2_data_in[3] U1|EX_Rs2_data_in[2] U1|EX_Rs2_data_in[1] U1|EX_Rs2_data_in[0] -autobundled
netbloc @U1|EX_Rs2_data_in 1 8 1 4120 308n
load netBundle @U1|MEM_Addr_out_in 32 U1|MEM_Addr_out_in[31] U1|MEM_Addr_out_in[30] U1|MEM_Addr_out_in[29] U1|MEM_Addr_out_in[28] U1|MEM_Addr_out_in[27] U1|MEM_Addr_out_in[26] U1|MEM_Addr_out_in[25] U1|MEM_Addr_out_in[24] U1|MEM_Addr_out_in[23] U1|MEM_Addr_out_in[22] U1|MEM_Addr_out_in[21] U1|MEM_Addr_out_in[20] U1|MEM_Addr_out_in[19] U1|MEM_Addr_out_in[18] U1|MEM_Addr_out_in[17] U1|MEM_Addr_out_in[16] U1|MEM_Addr_out_in[15] U1|MEM_Addr_out_in[14] U1|MEM_Addr_out_in[13] U1|MEM_Addr_out_in[12] U1|MEM_Addr_out_in[11] U1|MEM_Addr_out_in[10] U1|MEM_Addr_out_in[9] U1|MEM_Addr_out_in[8] U1|MEM_Addr_out_in[7] U1|MEM_Addr_out_in[6] U1|MEM_Addr_out_in[5] U1|MEM_Addr_out_in[4] U1|MEM_Addr_out_in[3] U1|MEM_Addr_out_in[2] U1|MEM_Addr_out_in[1] U1|MEM_Addr_out_in[0] -autobundled
netbloc @U1|MEM_Addr_out_in 1 1 9 520 1248 NJ 1248 NJ 1248 1920J 1128 2370 1008 NJ 1008 NJ 1008 4050J 1068 5060
load netBundle @U1|mem_out 32 U1|mem_out[31] U1|mem_out[30] U1|mem_out[29] U1|mem_out[28] U1|mem_out[27] U1|mem_out[26] U1|mem_out[25] U1|mem_out[24] U1|mem_out[23] U1|mem_out[22] U1|mem_out[21] U1|mem_out[20] U1|mem_out[19] U1|mem_out[18] U1|mem_out[17] U1|mem_out[16] U1|mem_out[15] U1|mem_out[14] U1|mem_out[13] U1|mem_out[12] U1|mem_out[11] U1|mem_out[10] U1|mem_out[9] U1|mem_out[8] U1|mem_out[7] U1|mem_out[6] U1|mem_out[5] U1|mem_out[4] U1|mem_out[3] U1|mem_out[2] U1|mem_out[1] U1|mem_out[0] -autobundled
netbloc @U1|mem_out 1 1 1 440 1488n
load netBundle @U1|MEM_Data_out_in 32 U1|MEM_Data_out_in[31] U1|MEM_Data_out_in[30] U1|MEM_Data_out_in[29] U1|MEM_Data_out_in[28] U1|MEM_Data_out_in[27] U1|MEM_Data_out_in[26] U1|MEM_Data_out_in[25] U1|MEM_Data_out_in[24] U1|MEM_Data_out_in[23] U1|MEM_Data_out_in[22] U1|MEM_Data_out_in[21] U1|MEM_Data_out_in[20] U1|MEM_Data_out_in[19] U1|MEM_Data_out_in[18] U1|MEM_Data_out_in[17] U1|MEM_Data_out_in[16] U1|MEM_Data_out_in[15] U1|MEM_Data_out_in[14] U1|MEM_Data_out_in[13] U1|MEM_Data_out_in[12] U1|MEM_Data_out_in[11] U1|MEM_Data_out_in[10] U1|MEM_Data_out_in[9] U1|MEM_Data_out_in[8] U1|MEM_Data_out_in[7] U1|MEM_Data_out_in[6] U1|MEM_Data_out_in[5] U1|MEM_Data_out_in[4] U1|MEM_Data_out_in[3] U1|MEM_Data_out_in[2] U1|MEM_Data_out_in[1] U1|MEM_Data_out_in[0] -autobundled
netbloc @U1|MEM_Data_out_in 1 4 6 1900J 988 NJ 988 NJ 988 3440J 968 4090J 988 5000
load netBundle @U1|adder_1 32 U1|adder_1[31] U1|adder_1[30] U1|adder_1[29] U1|adder_1[28] U1|adder_1[27] U1|adder_1[26] U1|adder_1[25] U1|adder_1[24] U1|adder_1[23] U1|adder_1[22] U1|adder_1[21] U1|adder_1[20] U1|adder_1[19] U1|adder_1[18] U1|adder_1[17] U1|adder_1[16] U1|adder_1[15] U1|adder_1[14] U1|adder_1[13] U1|adder_1[12] U1|adder_1[11] U1|adder_1[10] U1|adder_1[9] U1|adder_1[8] U1|adder_1[7] U1|adder_1[6] U1|adder_1[5] U1|adder_1[4] U1|adder_1[3] U1|adder_1[2] U1|adder_1[1] U1|adder_1[0] -autobundled
netbloc @U1|adder_1 1 4 1 1980 1068n
load netBundle @U1|adder_2 32 U1|adder_2[31] U1|adder_2[30] U1|adder_2[29] U1|adder_2[28] U1|adder_2[27] U1|adder_2[26] U1|adder_2[25] U1|adder_2[24] U1|adder_2[23] U1|adder_2[22] U1|adder_2[21] U1|adder_2[20] U1|adder_2[19] U1|adder_2[18] U1|adder_2[17] U1|adder_2[16] U1|adder_2[15] U1|adder_2[14] U1|adder_2[13] U1|adder_2[12] U1|adder_2[11] U1|adder_2[10] U1|adder_2[9] U1|adder_2[8] U1|adder_2[7] U1|adder_2[6] U1|adder_2[5] U1|adder_2[4] U1|adder_2[3] U1|adder_2[2] U1|adder_2[1] U1|adder_2[0] -autobundled
netbloc @U1|adder_2 1 4 1 1940 1088n
load netBundle @U1|PC_jump 32 U1|PC_jump[31] U1|PC_jump[30] U1|PC_jump[29] U1|PC_jump[28] U1|PC_jump[27] U1|PC_jump[26] U1|PC_jump[25] U1|PC_jump[24] U1|PC_jump[23] U1|PC_jump[22] U1|PC_jump[21] U1|PC_jump[20] U1|PC_jump[19] U1|PC_jump[18] U1|PC_jump[17] U1|PC_jump[16] U1|PC_jump[15] U1|PC_jump[14] U1|PC_jump[13] U1|PC_jump[12] U1|PC_jump[11] U1|PC_jump[10] U1|PC_jump[9] U1|PC_jump[8] U1|PC_jump[7] U1|PC_jump[6] U1|PC_jump[5] U1|PC_jump[4] U1|PC_jump[3] U1|PC_jump[2] U1|PC_jump[1] U1|PC_jump[0] -autobundled
netbloc @U1|PC_jump 1 6 1 2850 1208n
load netBundle @U1|MEM_Rd_data_in 32 U1|MEM_Rd_data_in[31] U1|MEM_Rd_data_in[30] U1|MEM_Rd_data_in[29] U1|MEM_Rd_data_in[28] U1|MEM_Rd_data_in[27] U1|MEM_Rd_data_in[26] U1|MEM_Rd_data_in[25] U1|MEM_Rd_data_in[24] U1|MEM_Rd_data_in[23] U1|MEM_Rd_data_in[22] U1|MEM_Rd_data_in[21] U1|MEM_Rd_data_in[20] U1|MEM_Rd_data_in[19] U1|MEM_Rd_data_in[18] U1|MEM_Rd_data_in[17] U1|MEM_Rd_data_in[16] U1|MEM_Rd_data_in[15] U1|MEM_Rd_data_in[14] U1|MEM_Rd_data_in[13] U1|MEM_Rd_data_in[12] U1|MEM_Rd_data_in[11] U1|MEM_Rd_data_in[10] U1|MEM_Rd_data_in[9] U1|MEM_Rd_data_in[8] U1|MEM_Rd_data_in[7] U1|MEM_Rd_data_in[6] U1|MEM_Rd_data_in[5] U1|MEM_Rd_data_in[4] U1|MEM_Rd_data_in[3] U1|MEM_Rd_data_in[2] U1|MEM_Rd_data_in[1] U1|MEM_Rd_data_in[0] -autobundled
netbloc @U1|MEM_Rd_data_in 1 2 8 NJ 1408 1310J 1468 NJ 1468 2330J 1488 NJ 1488 NJ 1488 NJ 1488 5100
load netBundle @U1|WB_Rd_data_in 32 U1|WB_Rd_data_in[31] U1|WB_Rd_data_in[30] U1|WB_Rd_data_in[29] U1|WB_Rd_data_in[28] U1|WB_Rd_data_in[27] U1|WB_Rd_data_in[26] U1|WB_Rd_data_in[25] U1|WB_Rd_data_in[24] U1|WB_Rd_data_in[23] U1|WB_Rd_data_in[22] U1|WB_Rd_data_in[21] U1|WB_Rd_data_in[20] U1|WB_Rd_data_in[19] U1|WB_Rd_data_in[18] U1|WB_Rd_data_in[17] U1|WB_Rd_data_in[16] U1|WB_Rd_data_in[15] U1|WB_Rd_data_in[14] U1|WB_Rd_data_in[13] U1|WB_Rd_data_in[12] U1|WB_Rd_data_in[11] U1|WB_Rd_data_in[10] U1|WB_Rd_data_in[9] U1|WB_Rd_data_in[8] U1|WB_Rd_data_in[7] U1|WB_Rd_data_in[6] U1|WB_Rd_data_in[5] U1|WB_Rd_data_in[4] U1|WB_Rd_data_in[3] U1|WB_Rd_data_in[2] U1|WB_Rd_data_in[1] U1|WB_Rd_data_in[0] -autobundled
netbloc @U1|WB_Rd_data_in 1 2 1 890 1428n
load netBundle @U1|Addr_out 32 U1|Addr_out[31] U1|Addr_out[30] U1|Addr_out[29] U1|Addr_out[28] U1|Addr_out[27] U1|Addr_out[26] U1|Addr_out[25] U1|Addr_out[24] U1|Addr_out[23] U1|Addr_out[22] U1|Addr_out[21] U1|Addr_out[20] U1|Addr_out[19] U1|Addr_out[18] U1|Addr_out[17] U1|Addr_out[16] U1|Addr_out[15] U1|Addr_out[14] U1|Addr_out[13] U1|Addr_out[12] U1|Addr_out[11] U1|Addr_out[10] U1|Addr_out[9] U1|Addr_out[8] U1|Addr_out[7] U1|Addr_out[6] U1|Addr_out[5] U1|Addr_out[4] U1|Addr_out[3] U1|Addr_out[2] U1|Addr_out[1] U1|Addr_out[0] -autobundled
netbloc @U1|Addr_out 1 11 1 N 1398
load netBundle @U1|Data_in_shift 32 U1|Data_in_shift[31] U1|Data_in_shift[30] U1|Data_in_shift[29] U1|Data_in_shift[28] U1|Data_in_shift[27] U1|Data_in_shift[26] U1|Data_in_shift[25] U1|Data_in_shift[24] U1|Data_in_shift[23] U1|Data_in_shift[22] U1|Data_in_shift[21] U1|Data_in_shift[20] U1|Data_in_shift[19] U1|Data_in_shift[18] U1|Data_in_shift[17] U1|Data_in_shift[16] U1|Data_in_shift[15] U1|Data_in_shift[14] U1|Data_in_shift[13] U1|Data_in_shift[12] U1|Data_in_shift[11] U1|Data_in_shift[10] U1|Data_in_shift[9] U1|Data_in_shift[8] U1|Data_in_shift[7] U1|Data_in_shift[6] U1|Data_in_shift[5] U1|Data_in_shift[4] U1|Data_in_shift[3] U1|Data_in_shift[2] U1|Data_in_shift[1] U1|Data_in_shift[0] -autobundled
netbloc @U1|Data_in_shift 1 0 12 140 1768 NJ 1768 NJ 1768 NJ 1768 2000J 1748 NJ 1748 NJ 1748 NJ 1748 NJ 1748 NJ 1748 NJ 1748 6290
load netBundle @U1|Data_out 32 U1|Data_out[31] U1|Data_out[30] U1|Data_out[29] U1|Data_out[28] U1|Data_out[27] U1|Data_out[26] U1|Data_out[25] U1|Data_out[24] U1|Data_out[23] U1|Data_out[22] U1|Data_out[21] U1|Data_out[20] U1|Data_out[19] U1|Data_out[18] U1|Data_out[17] U1|Data_out[16] U1|Data_out[15] U1|Data_out[14] U1|Data_out[13] U1|Data_out[12] U1|Data_out[11] U1|Data_out[10] U1|Data_out[9] U1|Data_out[8] U1|Data_out[7] U1|Data_out[6] U1|Data_out[5] U1|Data_out[4] U1|Data_out[3] U1|Data_out[2] U1|Data_out[1] U1|Data_out[0] -autobundled
netbloc @U1|Data_out 1 11 1 N 1438
load netBundle @U1|wea 4 U1|wea[3] U1|wea[2] U1|wea[1] U1|wea[0] -autobundled
netbloc @U1|wea 1 11 1 6310 1478n
load netBundle @U1|WB_Rd_addr 5 U1|WB_Rd_addr[4] U1|WB_Rd_addr[3] U1|WB_Rd_addr[2] U1|WB_Rd_addr[1] U1|WB_Rd_addr[0] -autobundled
netbloc @U1|WB_Rd_addr 1 3 5 1350 1328 NJ 1328 NJ 1328 2810J 1128 3380J
load netBundle @U1|WB_Rd_data 32 U1|WB_Rd_data[31] U1|WB_Rd_data[30] U1|WB_Rd_data[29] U1|WB_Rd_data[28] U1|WB_Rd_data[27] U1|WB_Rd_data[26] U1|WB_Rd_data[25] U1|WB_Rd_data[24] U1|WB_Rd_data[23] U1|WB_Rd_data[22] U1|WB_Rd_data[21] U1|WB_Rd_data[20] U1|WB_Rd_data[19] U1|WB_Rd_data[18] U1|WB_Rd_data[17] U1|WB_Rd_data[16] U1|WB_Rd_data[15] U1|WB_Rd_data[14] U1|WB_Rd_data[13] U1|WB_Rd_data[12] U1|WB_Rd_data[11] U1|WB_Rd_data[10] U1|WB_Rd_data[9] U1|WB_Rd_data[8] U1|WB_Rd_data[7] U1|WB_Rd_data[6] U1|WB_Rd_data[5] U1|WB_Rd_data[4] U1|WB_Rd_data[3] U1|WB_Rd_data[2] U1|WB_Rd_data[1] U1|WB_Rd_data[0] -autobundled
netbloc @U1|WB_Rd_data 1 3 5 1410 1348 NJ 1348 NJ 1348 2910J 1148 3460J
load netBundle @U1|EX_ALU_Control_in 4 U1|EX_ALU_Control_in[3] U1|EX_ALU_Control_in[2] U1|EX_ALU_Control_in[1] U1|EX_ALU_Control_in[0] -autobundled
netbloc @U1|EX_ALU_Control_in 1 7 2 3360J 408 4140
load netBundle @U1|EX_ImmSell_in 3 U1|EX_ImmSell_in[2] U1|EX_ImmSell_in[1] U1|EX_ImmSell_in[0] -autobundled
netbloc @U1|EX_ImmSell_in 1 7 2 3320 428 4180
load netBundle @U1|EX_MemtoReg_in 2 U1|EX_MemtoReg_in[1] U1|EX_MemtoReg_in[0] -autobundled
netbloc @U1|EX_MemtoReg_in 1 7 2 3500J 608 4220
load netBundle @U1|EX_byte_n_in 2 U1|EX_byte_n_in[1] U1|EX_byte_n_in[0] -autobundled
netbloc @U1|EX_byte_n_in 1 7 2 3540J 628 4280
load netBundle @U1|EX_wea_in_temp 4 U1|EX_wea_in_temp[3] U1|EX_wea_in_temp[2] U1|EX_wea_in_temp[1] U1|EX_wea_in_temp[0] -autobundled
netbloc @U1|EX_wea_in_temp 1 7 1 3520 548n
load netBundle @U1|PC_out 32 U1|PC_out[31] U1|PC_out[30] U1|PC_out[29] U1|PC_out[28] U1|PC_out[27] U1|PC_out[26] U1|PC_out[25] U1|PC_out[24] U1|PC_out[23] U1|PC_out[22] U1|PC_out[21] U1|PC_out[20] U1|PC_out[19] U1|PC_out[18] U1|PC_out[17] U1|PC_out[16] U1|PC_out[15] U1|PC_out[14] U1|PC_out[13] U1|PC_out[12] U1|PC_out[11] U1|PC_out[10] U1|PC_out[9] U1|PC_out[8] U1|PC_out[7] U1|PC_out[6] U1|PC_out[5] U1|PC_out[4] U1|PC_out[3] U1|PC_out[2] U1|PC_out[1] U1|PC_out[0] -autobundled
netbloc @U1|PC_out 1 4 8 2020 1668 NJ 1668 2990 1788 NJ 1788 NJ 1788 NJ 1788 NJ 1788 6330
levelinfo -pg 1 0 110 6490
levelinfo -hier U1 * 260 670 1100 1660 2160 2630 3110 3760 4590 5450 6090 *
pagesize -pg 1 -db -bbox -sgen 0 -10 6490 1930
pagesize -hier U1 -db -bbox -sgen 110 28 6380 1898
show
fullfit
#
# initialize ictrl to current module CSSTE work:CSSTE:NOFILE
ictrl init topinfo |
