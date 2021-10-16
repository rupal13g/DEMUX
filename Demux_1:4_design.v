module demux(in, sel, out);
  input in;
  input [1:0] sel;
  output reg [3:0] out;
  always @*
    case (sel)
      2'b00: out[0] <= in;
      2'b01: out[1] <= in;
      2'b10: out[2] <= in;
      2'b11: out[3] <= in;
    endcase
endmodule
