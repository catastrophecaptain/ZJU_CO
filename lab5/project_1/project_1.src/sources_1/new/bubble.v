`include "Lab4.vh"
module bubble(
    input wire ID_pass,
    input wire[3:0] EX_wea_in_temp,
    input wire EX_RegWrite_in_temp,
    input wire EX_Jump_in_temp,
    input wire EX_Branch_in_temp,
    output wire[3:0] EX_wea_in,
    output wire EX_RegWrite_in,
    output wire EX_Jump_in,
    output wire EX_Branch_in
);
assign EX_wea_in = ID_pass?4'b0:EX_wea_in_temp;
assign EX_RegWrite_in = ID_pass?1'b0:EX_RegWrite_in_temp;
assign EX_Jump_in = ID_pass?1'b0:EX_Jump_in_temp;
assign EX_Branch_in = ID_pass?1'b0:EX_Branch_in_temp;
endmodule