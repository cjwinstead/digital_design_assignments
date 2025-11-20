`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:51 09/09/2016 
// Design Name: 
// Module Name:    dataflowLatch 
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
module dataflowLatch(
    input d,
    output q,
    input clk
    );


	wire S;
	wire R;
	wire qb;
	
	assign #1 S=~d&clk;
	assign #1 R=d&clk;
	assign #2 qb=~(R|q);
	assign #2 q=~(S|qb);
	
endmodule
