`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 16:26:35
// Design Name: 
// Module Name: TruthEvaluator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TruthEvaluator(
    input  clk,
    input  truth_detection,
    output trust_decision
);
    reg [1:0] state=2'b11;

    always @(posedge clk) begin
        case(state)
            2'b00: state <= truth_detection ? 2'b01 : 2'b00;
            2'b01: state <= truth_detection ? 2'b10 : 2'b00;
            2'b10: state <= truth_detection ? 2'b11 : 2'b01;
            2'b11: state <= truth_detection ? 2'b11 : 2'b10;
    endcase
    end

    assign trust_decision = state[1];
endmodule
