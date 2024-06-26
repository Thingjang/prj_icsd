`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   17:04:09 05/08/2024
// Design Name:   demux1_4
// Module Name:   /home/ise/demux_4mode/test_dmux.v
// Project Name:  demux_4mode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux1_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dmux;

	// Inputs
	reg clk;
	reg [1:0] sel;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	demux1_4 uut (
		.clk(clk), 
		.sel(sel), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	always
	begin
	clk=~clk;
	#10;
	end
	
	always
	begin 
	#100;
	sel=sel+1;
	
	end
      
endmodule

