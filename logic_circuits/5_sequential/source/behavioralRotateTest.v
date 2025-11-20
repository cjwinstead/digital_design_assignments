`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:53 09/09/2016
// Design Name:   behavioralRotate
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab4/rotateLED/behavioralRotateTest.v
// Project Name:  rotateLED
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behavioralRotate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module behavioralRotateTest;

	// Inputs
	reg clk;
	reg en;
	reg rst;

	// Outputs
	wire [7:0] d;

	// Instantiate the Unit Under Test (UUT)
	latchRotate uut (
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		en = 0;
		rst = 1;

		#10 clk=~clk;
		#10 clk=~clk;
		#10 rst=0;
		clk=~clk;
		#10 clk=~clk;
		#10 clk=~clk;
		en=1;
		
		// Add stimulus here
		forever #10 clk = ~clk;		

	end
      
endmodule

