`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:53 09/09/2016
// Design Name:   dflipflop
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab4/rotateLED/dfftest.v
// Project Name:  rotateLED
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dfftest;

	// Inputs
	reg [1:0] d;
	reg clk;

	// Outputs
	wire [1:0] q;

	// Instantiate the Unit Under Test (UUT)
	dflipflop uut1 (
		.d(d[1]), 
		.q(q[1]), 
		.clk(clk)
	);
	dflipflop uut2 (
		.d(d[0]), 
		.q(q[0]), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
       forever #10 clk=~clk;
		// Add stimulus here

	end
      
	always @(posedge clk) begin
		d <= d + 1;
	end
endmodule

