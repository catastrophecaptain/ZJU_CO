module TruthEvaluator_tb();
    // 定义输入和输出信号
    reg clk;
    reg truth_detection;
    wire trust_decision;

    // 实例化TruthEvaluator模块
    TruthEvaluator uut (
        .clk(clk), 
        .truth_detection(truth_detection), 
        .trust_decision(trust_decision)
    );

    // 定义一个初始状态和时钟信号的行为
    always begin        
        // 模拟不同的truth_detection输入
        truth_detection = 1; #10;
        truth_detection = 1; #10;
        truth_detection = 0; #10;
        truth_detection = 0; #10;
        truth_detection = 0; #10;
        truth_detection = 0; #10;
        truth_detection = 0; #10;
        truth_detection = 1; #10;
        truth_detection = 1; #10;
        truth_detection = 1; #10;
    end
    initial begin
        clk = 0;
        #300;
        $finish;
    end

    // 生成时钟信号
    always #5 clk = ~clk;
endmodule