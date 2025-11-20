`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:38 09/15/2016
// Design Name:   ShiftRegister
// Module Name:   C:/Users/Winstead/Documents/ECE2700/Lab4/Shift_Register/ShiftRegisterTest.v
// Project Name:  Shift_Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShiftRegisterTest;

	// Inputs
	reg [7:0] D0;
	reg rst;
	reg clk;
	reg shift;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	ShiftRegister uut (
		.D0(D0), 
		.rst(rst), 
		.clk(clk), 
		.shift(shift), 
		.Q(Q)
	);

	integer idx;
	
	initial begin
		// Initialize Inputs
		D0 = 8'b0000_0001;
		rst = 1;
		clk = 0;
		shift = 0;
		idx = 0;
		// Wait 100 ns for global reset to finish
		forever #10 clk=~clk;
        
		// Add stimulus here

	end
	
	always @(posedge clk) begin
		idx = idx+1;
		if (idx > 3) begin
			rst = 0;
			shift = 1;
		end
	end
      
endmodule

