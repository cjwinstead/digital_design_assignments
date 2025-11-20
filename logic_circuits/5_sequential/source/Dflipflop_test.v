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
	reg en;
	reg d;
	reg clk;
	reg [2:0] state;
	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Dflipflop uut (
		.en(en), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		d = 0;
		state=0;
		clk = 0;

		forever #10 clk=~clk;
	end
      
	always @(posedge clk) begin
		state = state + 1;
		en = state[2]^state[0];
		d = state[1];
	end
endmodule

