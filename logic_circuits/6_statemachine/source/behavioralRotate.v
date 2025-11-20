`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:30 09/09/2016 
// Design Name: 
// Module Name:    behavioralRotate 
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
module behavioralRotate(
    input clk,
    input en,
    input rst,
    output reg [7:0] d
    );

	always @(posedge clk) begin
		if (rst) begin
			d <= 8'd1;
		end
		else if (en) begin
			d <= {d[6:0], d[7]};
		end
	end

endmodule
