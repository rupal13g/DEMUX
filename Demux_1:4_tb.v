module demux_tb;
  reg tin;
  reg [1:0] tsel;
  wire [3:0] tout;
  integer i, j;
  demux dm(.in(tin), .sel(tsel), .out(tout));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      $monitor (tin, tsel, tout[0], tout[1], tout[2], tout[3]);
      #100 $finish;
    end
  initial
    begin
      tin = 1'b0;
      for(i=0; i<4; i=i+1)
        begin
          tsel = i;
          #10;
        end
      tin = 1'b1;
      for(j=0; j<4; j=j+1)
        begin
          tsel = j;
          #10;
        end
    end
endmodule
