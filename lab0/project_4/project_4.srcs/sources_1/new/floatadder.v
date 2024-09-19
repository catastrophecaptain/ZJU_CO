`timescale 1ns / 1ps
module floatadder (
    input wire clk,
    input wire [31:0] adder1,
    input wire [31:0] adder2,
    input wire start,
    output wire [31:0] sum,
    output reg finish,
    output reg overflow,
    output reg error
);
  reg state;  // 记录 multiplier 是不是正在进行运算
  reg [4:0] cnt;  // 记录当前计算已经经历了几个周期（运算与移位）
  wire [4:0] cnt_next = cnt + 5'b1;  // 下一个周期
  wire exp_more = adder1[30:23] > adder2[30:23];  // 比较指数大小
  wire [22:0] exp_diff = exp_more ? (adder1[30:23] - adder2[30:23]) : (adder2[30:23] - adder1[30:23]);// 指数差
  wire[25:0] adder1_ext=(~|adder1[30:23])?(adder1[31]?{1'b1,-{1'b0,adder1[22:0],1'b0}}:{1'b0,{1'b0,adder1[22:0],1'b0}}):(adder1[31]?{1'b1,-{2'b01,adder1[22:0]}}:{1'b0,{2'b01,adder1[22:0]}});// 扩展尾数,防止运算过程中溢出
  wire [25:0] adder1_rl = $signed(adder1_ext) >>> exp_diff;  // 预先对齐
  wire[25:0] adder2_ext=(~|adder2[30:23])?(adder2[31]?{1'b1,-{1'b0,adder2[22:0],1'b0}}:{1'b0,{1'b0,adder2[22:0],1'b0}}):(adder2[31]?{1'b1,-{2'b01,adder2[22:0]}}:{1'b0,{2'b01,adder2[22:0]}});
  wire [25:0] adder2_rl = $signed(adder2_ext) >>> exp_diff;
  reg [7:0] exp;  // 结果指数
  reg [25:0] res;  // 结果尾数

  assign sum[30:23] = exp;  // 输出结果指数
  assign sum[31] = res[25];  // 输出结果符号
  wire [23:0] value = res[25] ? ~res[25:2] + 1 : res[25:2];// 对结果尾数进行符号处理,使其为正
  assign sum[22:0] = value[22:0];  // 输出结果尾数

  // 初始化
  initial begin
    state <= 0;
    cnt <= 0;
    exp <= 0;
    res <= 0;
    finish <= 0;
    overflow <= 0;
    error <= 0;
  end
  always @(posedge clk) begin
    // 初始化
    if (~state && start) begin
      state <= 1;
      cnt <= 0;
      // 指数对齐
      exp <= exp_more ? adder1[30:23] : adder2[30:23];
      res <= 0;
      finish <= 0;
      overflow <= 0;
      error <= 0;
      // 尾数对齐并计算
      res <= (exp_more ? adder1_ext : adder1_rl) + (~exp_more ? adder2_ext : adder2_rl);
    // 运算结束操作,cnt==24时计算结束
    end else if (state & cnt[4] & cnt[3]) begin
      // 溢出
      overflow <= &exp;
      // 根据溢出,为0,近0值,规范化数进行处理
      res[24:0] <= ~|res[23:0] ? 25'b0 : &exp ? 0 : ~|exp ? res[24:0] : res[24:0] << 1'b1;
      // 尾数为0指数置为0
      exp <= ~|res[23:0] ? 0 : exp;
      //w位数为零,则符号位为0
      res[25] <= ~|res[23:0] ? 0 : res[25];
      // 结束,输出完成信号
      state <= 0;
      finish <= 1;
      cnt <= 0;
      // 进位计算
    end else if (state & ~(|cnt[4:0])) begin
        // 判断输入是否为NAN或者INF
      if (&exp) begin
        error <= 1;
        finish <= 1;
        state <= 0;
        cnt <= 0;
        // 判断是否进位
      end else if (res[25] ^ res[24]) begin
        // 进位无需退位操作,直接跳转到结束
        cnt <= 24;
        exp <= exp + 1;
      end else begin
        // 无进位可能需要退位操作
        cnt <= cnt_next;
        // 退位操作
        res[24:0] = res[24:0] << 1'b1;
      end
      // 退位操作
    end else if (state) begin
        // 判断是否为近零值,即退无可退
      if (~|exp) begin
        cnt <= 24;
        // 判断是否退位完成
      end else if (res[25] ^ res[24]) begin
        // 退位完成,进入结束
        cnt <= 24;
      end else begin
        // 退位未完成,继续退位 
        cnt <= cnt_next;
        res[24:0] = res[24:0] << 1'b1;
        exp <= exp - 1;
      end
    end
  end
endmodule
