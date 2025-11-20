`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:17 08/25/2016 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input      [2:0] i,
	 input            en,
    output reg [7:0] d
    );

	always @(*) begin
		if (en) begin
		case (i)
			3'd7: d=8'd1;
			3'd6: d=8'd2;
			3'd5: d=8'd4;
			3'd4: d=8'd8;
			3'd3: d=8'd16;
			3'd2: d=8'd32;
			3'd1: d=8'd64;
			3'd0: d=8'd128;
		endcase
		end
		else
			d=8'd0;
	end
endmodule
