module PC_control (
    input wire [31:0] PC,
    input wire [31:0] ID_PC,
    input wire [31:0] PC_jump,
    input wire Load_hazard,
    input wire change,
    output wire [31:0] PC_out,
    output wire ID_pass
);
  wire change_hazard = change && PC_jump != ID_PC;
  assign PC_out  = change_hazard ? PC_jump : Load_hazard ? ID_PC : PC + 4;
  assign ID_pass = Load_hazard || change_hazard;
endmodule
