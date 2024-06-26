`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   06:21:02 05/08/2024
// Design Name:   TOP_00_99_00
// Module Name:   /home/ise/zero_99/test_top.v
// Project Name:  zero_99
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP_00_99_00
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top;

	// Inputs
	reg clk;
	reg ud;
	reg pause;

	// Outputs
	wire [3:0] ONE;
	wire [3:0] TEN;
	wire [6:0] onesseg;
	wire [6:0] tensseg;
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	TOP_00_99_00 uut (
		.clk(clk), 
		.ud(ud), 
		.pause(pause), 
		.ONE(ONE), 
		.TEN(TEN), 
		.onesseg(onesseg), 
		.tensseg(tensseg), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		#45;
		pause=1;
		#30;
		
		pause=0;
		#40;
		end
		always
		begin
		clk=~clk;
		#10;
		end
		endmodule

