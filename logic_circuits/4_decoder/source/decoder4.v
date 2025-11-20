`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:55 08/26/2016 
// Design Name: 
// Module Name:    decoder4 
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
module decoder4(
    input [3:0] in,
    output [15:0] out
    );

	wire en = ~in[3];
	
	decoder D1(.i(in[2:0]), .en(in[3]), .d(out[7:0]));
	decoder D2(.i(in[2:0]), .en(en), .d(out[15:8]));
endmodule
