`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   17:36:33 05/08/2024
// Design Name:   led_1bit
// Module Name:   /home/ise/demux_4mode/test_1bit.v
// Project Name:  demux_4mode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_1bit;

	// Inputs
	reg clk;
	reg rs;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	led_1bit uut (
		.clk(clk), 
		.rs(rs), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rs = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rs=1;
		#10;
		rs=0;
        
		// Add stimulus here

	end
	
	always
	begin
	clk=~clk;
	#10;
	end
      
endmodule



