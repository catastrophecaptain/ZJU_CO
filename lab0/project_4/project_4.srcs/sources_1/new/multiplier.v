module multiplier (
    input clk,
    input start,
    input [31:0] A,
    input [31:0] B,
    output reg finish,
    output reg [63:0] res
);

  reg state;  // 记录 multiplier 是不是正在进行运算
  reg [31:0] multiplicand;  // 保存当前运算中的被乘数

  reg [5:0] cnt;  // 记录当前计算已经经历了几个周期（运算与移位）
  wire [5:0] cnt_next = cnt + 6'b1;

  reg sign = 0;  // 记录当前运算的结果是否是负数

  initial begin
    res <= 0;
    state <= 0;
    finish <= 0;
    cnt <= 0;
    multiplicand <= 0;
  end

  always @(posedge clk) begin
    if (~state && start) begin
      sign <= A[31] ^ B[31];
      multiplicand <= B[31] ? ~B + 1 : B;
      state <= 1;
      cnt <= 0;
      res <= {32'b0, (A[31]) ? ~A + 1 : A};
      finish <= 0;
    end else if (state & cnt[5]) begin
      cnt <= 0;
      finish <= 1;
      state <= 0;
      res = sign ? ~res + 1 : res;
    end else if (state) begin
      cnt <= cnt_next;
      res <= {1'b0, (res[0] ? res[63:32] + multiplicand : res[63:32]), res[31:1]};
    end
  end

endmodule