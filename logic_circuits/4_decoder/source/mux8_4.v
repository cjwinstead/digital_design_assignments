`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:30 08/26/2016 
// Design Name: 
// Module Name:    mux7_14 
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
module mux8_4(	
    input [7:0] in,
    output [3:0] out,
    input sel
    );
	parameter SIZE=4;

	genvar i;
	
	generate
		for (i=0; i<SIZE; i=i+1) begin: muxarray
			mux m(
				.in({in[i],in[i+4]}),
				.sel(sel),
				.out(out[i])
				);
		end
	endgenerate
endmodule
