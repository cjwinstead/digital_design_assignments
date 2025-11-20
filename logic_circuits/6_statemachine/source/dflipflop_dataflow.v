`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:32 09/09/2016 
// Design Name: 
// Module Name:    dflipflop 
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
module dflipflop(
    input d,
    output q,
    input clk
    );

	wire q1;
	wire clkb = ~clk;
	
	dataflowLatch d1(.d(d),.q(q1),.clk(clk));
	dataflowLatch d2(.d(q1),.q(q),.clk(clkb));
endmodule
