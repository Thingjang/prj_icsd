`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   08:58:16 05/08/2024
// Design Name:   top_level
// Module Name:   /home/ise/sangdan_tatdan/test_top.v
// Project Name:  sangdan_tatdan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_level
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
	reg rs;
	reg btn1;
	reg btn2;
	reg pause;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	top_level uut (
		.clk(clk), 
		.rs(rs), 
		.btn1(btn1), 
		.btn2(btn2), 
		.pause(pause), 
		.q(q)
	);
initial begin
forever #10 clk=~clk;
	
		end
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
		#50;
		
		btn1=1;
		btn2=1;
	
	
	
		
		
		
		end
		
		endmodule
        
		// Add stimulus here

