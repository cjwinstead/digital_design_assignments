`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:52 08/26/2016 
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
    input clk,
    input [7:0] sw,
    output [3:0] an,
    output [6:0] seg
    );

	wire sel;
	wire [6:0] seghigh;
	wire [3:0] wxyz;
	
	assign an={sel,~sel,2'b11};
	assign seg=~seghigh;
	
	clockdivider CD(
		.clkin(clk),
		.clkout(sel)
     );
	 
	 mux8_4 M(
		.in(sw),
		.out(wxyz),
		.sel(sel)
	  );
	
	sevensegment S(
		.wxyz(wxyz),
		.seg(seghigh)
	  );
	  
	  
endmodule
