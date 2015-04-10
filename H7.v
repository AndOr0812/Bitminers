`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:26 04/07/2015 
// Design Name: 
// Module Name:    H7 
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
module H7(input Block, input [31:0] g, output reg [31:0] H7_out );

reg source; 
initial
begin
	source = 1;
//	H2_out = 32'hbb67ae85;
end

always @ (Block)
begin
	source = ~source;
	if (source == 0)			begin
			H7_out = 32'h1f83d9ab;
		end
	else
		begin
			H7_out = g + H7_out;
		end
		
end

endmodule
