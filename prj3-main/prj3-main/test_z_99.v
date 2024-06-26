`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   05:53:27 05/08/2024
// Design Name:   zero00_99_00
// Module Name:   /home/ise/zero_99/TEST_CON.v
// Project Name:  zero_99
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: zero00_99_00
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_CON;

	// Inputs
	reg Clk;
	reg UpOrDown;
	reg pause;

	// Outputs
	wire [7:0] Count;

	// Instantiate the Unit Under Test (UUT)
	zero00_99_00 uut (
		.Clk(Clk), 
		.UpOrDown(UpOrDown), 
		.pause(pause), 
		.Count(Count)
	);

	
	initial begin
		// Initialize Inputs
		Clk = 0;
		#45;
		pause=1;
		#30;
		pause=0;
		#40;
		
		// Wait 100 ns for global reset to finis
        
		// Add stimulus here

	end
 always
 begin 
 Clk=~Clk;
 #10;
 end
endmodule
