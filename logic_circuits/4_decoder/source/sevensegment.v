`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:19 08/26/2016 
// Design Name: 
// Module Name:    sevensegment 
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
module sevensegment(
    input [3:0] wxyz,
    output [6:0] seg
    );

	wire [15:0] d;
	
	decoder4 D(.in(wxyz), .out(d));
	
	assign seg[0] = |(d & 16'hB7C0);
	assign seg[1] = |(d & 16'hF9C0);
	assign seg[2] = |(d & 16'hDFC0);
	assign seg[3] = |(d & 16'hB6C0);
	assign seg[4] = |(d & 16'hA280);
	assign seg[5] = |(d & 16'h8EC0);
	assign seg[6] = |(d & 16'h3EC0);
endmodule
