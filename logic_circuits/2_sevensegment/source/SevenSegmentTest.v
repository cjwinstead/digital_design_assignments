`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:22:07 08/24/2016
// Design Name:   SevenSegmentTop
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab2/sevensegment/SevenSegmentTest.v
// Project Name:  sevensegment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SevenSegmentTop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SevenSegmentTest;

	// Inputs
	reg [7:0] sw;
	reg       clk;
	
	// Outputs
	wire [6:0] seg;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	SevenSegmentTop uut (
		.seg(seg), 
		.an(an), 
		.sw(sw)
	);

	initial begin
		// Initialize Inputs
		sw = 0;
		clk = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
      forever #10 clk = ~clk;
		// Add stimulus here

	end
	
	always @(posedge clk) begin
		sw = sw + 1;
		if (sw > 9)
			sw = 0;
	end
      
endmodule

