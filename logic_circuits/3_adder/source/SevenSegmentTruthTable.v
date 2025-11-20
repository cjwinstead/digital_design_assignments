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
module SevenSegmentTruthTable(
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

	wire [3:0] N;
	reg  [6:0] D;
	
	assign N[3] = w;
	assign N[2] = x;
	assign N[1] = y;
	assign N[0] = z;

	assign a = D[0];
	assign b = D[1];
	assign c = D[2];
	assign d = D[3];
	assign e = D[4];
	assign f = D[5];
	assign g = D[6];

	always @(*) begin
		case (N)
			4'b0000: D = 7'b1111110;
			4'b0001: D = 7'b0110000;
			4'b0010: D = 7'b1101101;
			4'b0011: D = 7'b1111001;
			4'b0100: D = 7'b0110011;
			4'b0101: D = 7'b1011011;
			4'b0110: D = 7'b1011111;
			4'b0111: D = 7'b1110000;
			4'b1000: D = 7'b1111111;
			4'b1001: D = 7'b1111011;
			4'b1010: D = 7'b0000000;
			4'b1011: D = 7'b0000000;
			4'b1100: D = 7'b0000000;
			4'b1101: D = 7'b0000000;
			4'b1110: D = 7'b0000000;
			4'b1111: D = 7'b0000000;
		endcase
	end

endmodule
