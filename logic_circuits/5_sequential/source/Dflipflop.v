`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:16 09/15/2016 
// Design Name: 
// Module Name:    Dflipflop 
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
module Dflipflop(
    input d,
    input en,
    output q
    );

	wire enb = ~en;
	wire q1;
	
	Dlatch L1 (
		.en(en), 
		.d(d), 
		.q(q1)
	);
	
	Dlatch L2 (
		.en(enb), 
		.d(q1), 
		.q(q)
	);
endmodule
