// structural

module demux_struct(input in, input [2:0]sel, output [7:0]out);
wire [5:0]w;

demux1_2 m1(.a(in), .sel(sel[2]), .y(w[1:0]));

demux1_2 m2(.a(w[0]), .sel(sel[1]), .y(w[3:2]));
demux1_2 m3(.a(w[1]), .sel(sel[1]), .y(w[5:4]));

demux1_2 m4(.a(w[2]), .sel(sel[0]), .y(out[1:0]));
demux1_2 m5(.a(w[3]), .sel(sel[0]), .y(out[3:2]));
demux1_2 m6(.a(w[4]), .sel(sel[0]), .y(out[5:4]));
demux1_2 m7(.a(w[5]), .sel(sel[0]), .y(out[7:6]));

endmodule
