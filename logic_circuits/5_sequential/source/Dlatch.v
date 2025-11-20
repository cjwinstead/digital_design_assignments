`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:46 09/15/2016 
// Design Name: 
// Module Name:    Dlatch 
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
module Dlatch(
    input en,
    input d,
    output reg q
    );

	always @(*) begin
		if (en) begin
			q = d;
		end
	end

endmodule
