`timescale 1ns / 1ps

module testbench;

  // Testbench signals
  reg [7:0] in;           // 8-bit input for 8-to-1 MUX
  reg [2:0] sel;          // 3-bit select input
  wire out;               // MUX output

  // Instantiate the MUX module
  mux_dataflow uut (
    .in(in),
    .sel(sel),
    .out(out)
  );

  // Enable waveform dumping
  initial begin
    $dumpfile("testbench.vcd");   // Specify the waveform file
    $dumpvars(0, testbench);      // Dump all variables in this scope
  end

  // Apply stimulus to test the MUX
  initial begin
    in = 8'b00000000;
    sel = 3'b000;
    
    // Test pattern
    in = 8'b10101010; // Example input pattern
    for (sel = 0; sel < 8; sel = sel + 1) begin
      #10; // Wait for 10 time units
      $display("sel = %b, in = %b, out = %b", sel, in, out);
    end

    $finish; // End simulation
  end

endmodule

