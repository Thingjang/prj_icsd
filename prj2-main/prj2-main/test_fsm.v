`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   10:57:53 05/08/2024
// Design Name:   traffic_light_fsm
// Module Name:   /home/ise/traffic_light/t_fsm.v
// Project Name:  traffic_light
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_light_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_fsm;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] count1;
	wire [7:0] count2;
	wire [2:0] light1;
	wire [2:0] light2;

	// Instantiate the Unit Under Test (UUT)
	traffic_light_fsm uut (
		.clk(clk), 
		.count1(count1), 
		.count2(count2), 
		.light1(light1), 
		.light2(light2)
	);

		initial begin
		// Initialize Inputs
		clk = 0;
		#450;
		// Add stimulus her
	end
	always
		begin
		clk=~clk;
		#10;
		end
      
endmodule
