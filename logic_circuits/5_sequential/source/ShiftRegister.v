`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:10 09/15/2016 
// Design Name: 
// Module Name:    ShiftRegister 
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
module ShiftRegister(
    input [7:0] D0,
    input rst,
    input clk,
    input shift,
    output [7:0] Q
    );
	
	genvar i;
	generate 
		for(i=0; i<8; i=i+1) begin: sreg
			Dregister Dreg(
				.Din(Q[(i+1)%8]),
				.rst(rst),
				.shift(shift),
				.D0(D0[i]),
				.Q(Q[i]),
				.clk(clk)
			);
		end
	endgenerate
endmodule
