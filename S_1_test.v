`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:14:51 03/23/2015
// Design Name:   S_1
// Module Name:   X:/EC551/Bitcoin/S_1_test.v
// Project Name:  Bitcoin
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module S_1_test;

	// Inputs
	reg [31:0] x;
	reg clk;

	// Outputs
	wire [31:0] s1;

	// Instantiate the Unit Under Test (UUT)
	S_1 uut (
		.s1(s1), 
		.x(x), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		x = 32'b00000000000000001111111111111111;
		clk = 0;
		#1;
		clk = 1;
		#1;
		clk = 0;
		#1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

