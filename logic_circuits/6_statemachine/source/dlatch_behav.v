`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:05 09/09/2016 
// Design Name: 
// Module Name:    dlatch 
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
module dlatch(
    input d,
    output reg q,
    input clk
    );

	always @(clk or d) begin
		if (clk)
			q <= d;
	end

endmodule
