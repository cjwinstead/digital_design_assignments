`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:15 09/15/2016 
// Design Name: 
// Module Name:    JKflipflop 
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
module JKflipflop(
    input j,
    input k,
    input en,
    output q
    );

	wire d=j&~k | j&k&~q | ~j&~k&q;
	
	Dflipflop DFF1 (
		.en(en), 
		.d(d), 
		.q(q)
	);
	
	
endmodule
