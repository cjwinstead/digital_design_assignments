`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:08 09/15/2016 
// Design Name: 
// Module Name:    ShiftRegisterTop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ShiftRegisterTop(
    input [7:0] D0,
    input rst,
    input mclk,
    input shift,
    output [7:0] Q
    );

	wire lclk;
	
	ShiftRegister uut (
		.D0(D0), 
		.rst(rst), 
		.clk(lclk), 
		.shift(shift), 
		.Q(Q)
	);
	
	clockdivider cd1(
		.clkin(mclk),
		.clkout(lclk)
    );
endmodule
