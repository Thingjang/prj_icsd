`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
//
// Create Date:   06:21:02 05/08/2024
// Design Name:   TOP_00_99_00
// Module Name:   /home/ise/zero_99/test_top.v
// Project Name:  so2_00_99_00
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
module top_so2_00_99_00(
    input clk,pause,
    output [3:0] ONE, 
	 output [3:0] TEN,
	 output [6:0] onesseg, tensseg, 
    output [7:0] count
    );

wire [3:0]  q0,q1;
wire [1:0] q2;
wire [6:0] q10, q11 ;
zero_so2_99 IC(.clk(clk),,. pause(pause),.count(count));
BIN_BCD A (.A(count), .ONES(q0), .TENS(q1),.HUNDREDS(q2));
sseg one(.bcd(q0),.seg(q10));
sseg ten(.bcd(q1),.seg(q11));
assign ONE=q0;
assign TEN=q1;
assign onesseg=q10;
assign tensseg=q11;
endmodule
