module MUX4b4to1 (
    input  wire [ 1:0] choose,
    input  wire [15:0] I,
    output wire [ 3:0] O
);
  assign O = (~choose[1]&~choose[0])?I[3:0]:(~choose[1]&choose[0])?I[7:4]:(choose[1]&~choose[0])?I[11:8]:I[15:12];
endmodule
