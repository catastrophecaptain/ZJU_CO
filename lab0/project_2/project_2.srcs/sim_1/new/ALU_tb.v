`timescale 1ns / 1ps

module ALU_tb;
    reg [31:0]  A, B;
    reg [3:0]   ALU_operation;
    wire[31:0]  res;
    wire        zero;
    ALU ALU_u(
        .A(A),
        .B(B),
        .ALU_operation(ALU_operation),
        .res(res),
        .zero(zero)
    );

    initial begin
        A=32'hA5A5A5A5;
        B=32'h5A5A5A5A;
        ALU_operation =4'b1000;
        #100;
        ALU_operation =4'b1001;
        #100;
        ALU_operation =4'b0111;
        #100;
        ALU_operation =4'b0110;
        #100;
        ALU_operation =4'b0101;
        #100;
        ALU_operation =4'b0100;
        #100;
        ALU_operation =4'b0011;
        #100;
        ALU_operation =4'b0010;
        #100;
        ALU_operation =4'b0001;
        #100;
        ALU_operation =4'b0000;
        #100;
        A=32'h01234567;
        B=32'h76543210;
        ALU_operation =4'b0111;
        #100;
        A=32'hffffffff;
        B=32'hffffffff;
        ALU_operation =4'b0101;
        #100;
        A=32'h7777ffff;
        B=32'h70000000;
        ALU_operation =4'b0000;
        #100;
        A=32'h13000000;
        B=32'h03000001;
        ALU_operation =4'b0001;
        #100;
        $finish;
    end
endmodule