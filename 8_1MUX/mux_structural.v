// structural modelling
module mux_struct (input [7:0]in, input [2:0]sel, output out);

wire [5:0]w;
mux2_1 m1(.a(in[0]),.b(in[1]), .sel(sel[0]), .y(w[0]));
mux2_1 m2(.a(in[2]),.b(in[3]), .sel(sel[0]), .y(w[1]));
mux2_1 m3(.a(in[4]),.b(in[5]), .sel(sel[0]), .y(w[2]));
mux2_1 m4(.a(in[6]),.b(in[7]), .sel(sel[0]), .y(w[3]));

mux2_1 m5(.a(w[0]), .b(w[1]), .sel(sel[1]), .y(w[4]));
mux2_1 m6(.a(w[2]), .b(w[3]), .sel(sel[1]), .y(w[5]));

mux2_1 m7(.a(w[4]), .b(w[5]), .sel(sel[2]), .y(out));

endmodule
