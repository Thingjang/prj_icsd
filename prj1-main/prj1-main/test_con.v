`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   08:38:35 05/08/2024
// Design Name:   sangdan_tatdan
// Module Name:   /home/ise/sangdan_tatdan/test_con.v
// Project Name:  sangdan_tatdan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sangdan_tatdan
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module test_con;

	// Inputs
	reg clk;
	reg rs;
	reg pause;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	sangdan_tatdan uut (
		.clk(clk), 
		.rs(rs), 
		.pause(pause), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rs = 0;
		pause = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rs=1;
		#10;
		rs=0;
		#30;
		pause=1;
		#30;
		pause=0;
		
		end
		always
		begin clk=~clk;
		#10;
		end
		endmodule
        
		// Add stimulus here


