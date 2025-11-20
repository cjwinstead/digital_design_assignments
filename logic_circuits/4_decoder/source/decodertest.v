`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:56:03 08/25/2016
// Design Name:   decoder
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab3/decoder/decodertest.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decodertest;

	// Inputs
	reg [2:0] i;
	reg clk;
	// Outputs
	wire [7:0] d;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.i(i), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		clk = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk=~clk;
	end
      
	always @(posedge clk) begin
		i <= i + 1;
	end
endmodule

