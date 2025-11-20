`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:11 08/23/2016 
// Design Name: 
// Module Name:    SevenSegmentTruthTable 
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
module SevenSegmentCombinational(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
	 output g
    );
	
	assign a = w  | y    | x&z   | ~x&~z;
	assign b = ~x | y&z  | ~y&~z;
	assign c = x  | ~y   | z;
	assign d = w  | y&~z | ~x&y  | ~x&~z | x&~y&z;
	assign e = ~x&~z | y&~z;
	assign f = w | ~y&~z | x&~z | x&~y;
	assign g = y&~z | x&~y | w | ~x&y;
	
endmodule
