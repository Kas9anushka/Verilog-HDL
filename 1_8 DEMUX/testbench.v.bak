module testbench;
    reg in;
    reg [2:0] sel;
    wire [7:0] out;

    demux_behav uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
         in = 1;
         sel = 3'b000;
         #2 sel=3'b001;
 #2 sel=3'b001;
 #2 sel=3'b010;
 #2 sel=3'b011;
 #2 sel=3'b100;
 #2 sel=3'b101;
 #2 sel=3'b110;
 #2 sel=3'b111;
  end
initial #30 $finish;
endmodule
