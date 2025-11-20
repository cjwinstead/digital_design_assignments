`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:41 09/15/2016
// Design Name:   Dlatch
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab4/Latch/Dlatch_test.v
// Project Name:  Latch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dlatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dlatch_test;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;

	integer idx;
	
	wire [11:0] jvals = 12'b0001_1010_1000;
	wire [11:0] kvals = 12'b0001_1100_0101;
	
	// Instantiate the Unit Under Test (UUT)
	JKflipflop uut (
		.en(clk), 
		.j(j),
		.k(k),
		.q(q)
	);

	initial begin
		// Initialize Inputs
		j = 1;
		k = 0;
		idx=0;
		clk = 1;

		forever #10 clk=~clk;
	end
      
	always @(posedge clk) begin
		idx = (idx + 1) % 12;
		
		j = jvals[idx];
		k=kvals[idx];
	end
endmodule

