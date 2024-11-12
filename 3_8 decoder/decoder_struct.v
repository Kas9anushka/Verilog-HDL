
// structural decoder

module decoder_struct(input [2:0]a, input en, output [7:0]u);

wire en1, en2;

assign en1=en & ~a[2];
assign en2=en & a[2];

decoder m1(.in(a[1:0]), .en(en1), .out(u[3:0]));
decoder m2(.in(a[1:0]), .en(en2), .out(u[7:4]));

endmodule

