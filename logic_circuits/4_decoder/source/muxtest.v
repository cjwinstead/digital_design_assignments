`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:03:01 08/26/2016
// Design Name:   mux
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab3/mux/muxtest.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtest;

	// Inputs
	reg [1:0] in;
	reg sel;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		sel = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk=~clk;
	end
      
	always @(posedge clk) begin
		in = in + 1;
		if (in == 3)
			sel = ~sel;
	end
endmodule

