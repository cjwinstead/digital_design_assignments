`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:32 08/23/2016 
// Design Name: 
// Module Name:    SevenSegmentTop 
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
module SevenSegmentTop(
	output [6:0] seg,
	output [3:0] an,
//	input [3:0] sw
	input [7:0] sw
    );

	wire [6:0] D;
	
	/*
	assign seg[6]=~D[6];
	assign seg[5]=~D[5];
	assign seg[4]=~D[4];
	assign seg[3]=~D[3];
	assign seg[2]=~D[2];
	assign seg[1]=~D[1];
	assign seg[0]=~D[0];

	assign an[3] = 1;
	assign an[2] = 1;
	assign an[1] = 1;
	assign an[0] = 0;
	*/
	
	assign seg = ~D;
	//assign an  = 4'b1110;
	assign an  = ~sw[7:4];
	
//	SevenSegmentTruthTable S1(
	SevenSegmentCombinational S1(
		.w(sw[3]),
     .x(sw[2]),
     .y(sw[1]),
     .z(sw[0]),
     .a(D[6]),
     .b(D[5]),
     .c(D[4]),
     .d(D[3]),
     .e(D[2]),
     .f(D[1]),
	  .g(D[0])
    );
endmodule
