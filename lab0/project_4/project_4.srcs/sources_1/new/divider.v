module divider (
    input             clk,
    input             rst,
    input             start,        // 开始运算
    input      [31:0] dividend,     // 被除数
    input      [31:0] divisor,      // 除数
    output reg        divide_zero,  // 除零异常
    output reg        finish,       // 运算结束信号
    output     [31:0] res,          // 商
    output     [31:0] rem           // 余数
);


  reg state;  // 记录 multiplier 是不是正在进行运算
  reg [31:0] divisor_temp;  // 保存当前运算中的除数

  reg [5:0] cnt;  // 记录当前计算已经经历了几个周期（运算与移位）
  wire [5:0] cnt_next = cnt + 6'b1;
  reg [63:0] temp = 0;  // 保存当前运算的中间结果
  assign rem = temp[63:32];  // 余数
  assign res = temp[31:0];  // 商
  wire more = temp[62:31] >= divisor_temp;  //判断temp够除
  initial begin
    temp <= 0;
    state <= 0;
    finish <= 0;
    cnt <= 0;
    divisor_temp <= 0;
  end

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      temp <= 0;
      state <= 0;
      finish <= 0;
      cnt <= 0;
      divisor_temp <= 0;
    end else if (~state && start) begin
      divide_zero <= ~(|divisor);
      divisor_temp <= divisor;
      state <= (|divisor);
      cnt <= 0;
      temp <= {32'b0, dividend};
      finish <= ~(|divisor);
    end else if (state & cnt[5] & ~divide_zero) begin
      cnt <= 0;
      finish <= 1;
      state <= 0;
    end else if (state & ~divide_zero) begin
      cnt  <= cnt_next;
      temp <= {(more ? (temp[62:31] - divisor_temp[31:0]) : temp[62:31]), temp[30:0], more};
    end
  end

endmodule