// dataflow modelling

module demux_dataflow(input in, input [2:0]sel, output [7:0]out);
 assign out = 
                 (sel == 3'b000) ? (8'b00000001) :
                 (sel == 3'b001) ? (8'b00000010) :
                 (sel == 3'b010) ? (8'b00000100) :
                 (sel == 3'b011) ? (8'b00001000) :
                 (sel == 3'b100) ? (8'b00010000) :
                 (sel == 3'b101) ? (8'b00100000) :
                 (sel == 3'b110) ? (8'b01000000) :
                 (sel == 3'b111) ? (8'b10000000) :
                 8'b00000000; // Default case

endmodule
