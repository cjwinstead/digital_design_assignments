`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:06:55 08/26/2016
// Design Name:   decoder4
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab3/sevensegment/decoder4test.v
// Project Name:  sevensegment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder4test;

	// Inputs
	reg [3:0] in;
	reg       clk;
	
	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	decoder4 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk=~clk;
	end
	
	always @(posedge clk) begin
		in = in + 1;
	end
      
endmodule

