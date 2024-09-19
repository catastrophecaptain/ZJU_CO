`timescale 1ns / 1ps
module top_tb(

    );
    reg[15:0] SW;
    wire[3:0] LED;
    top tb1 (
        .SW(SW),
        .LED(LED)
    );
    initial begin
        SW = 16'b0000_0100_0010_0001;
        #100;
        SW[15:14]=2'b01;
        #100;
        SW[15:14]=2'b10;
        #100;
        SW[15:14]=2'b11;
        #100;
        $finish;
    end
endmodule
