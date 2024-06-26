`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    11:31:57 05/08/2024 
// Design Name: 
// Module Name:    top_fl 
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
module top_fl(
   input clk,
	 output [6:0] one7seg1, one7seg2, ten7seg1, ten7seg2,
    output [3:0] ONE1, 
	 output [3:0] ONE2, 
    output [3:0] TEN1,
    output [3:0] TEN2,
    output [2:0] light1,
    output [2:0] light2
    );

wire [7:0] q0, q1;
wire [3:0] q2, q3, q4, q5;
wire [1:0] q6, q7;
wire [6:0] q8, q9, q10,q11;
traffic_light_fsm IC1 (.clk(clk), .count1(q0), .count2(q1), .light1(light1), .light2(light2));
bin_bcd c1 (.A(q0), .ONES(q2), .TENS(q3),.HUNDREDS(q6));
bin_bcd c2 (.A(q1), .ONES(q4), .TENS(q5),.HUNDREDS(q7));
sseg dv1(.bcd(q2),.seg(q8));
sseg dv2(.bcd(q4),.seg(q9));
sseg ch1(.bcd(q3),.seg(q10));
sseg ch2(.bcd(q5),.seg(q11));
assign one7seg1=q8;
assign one7seg2=q9;
assign ten7seg1=q10;
assign ten7seg2=q11;
assign ONE1=q2;
assign ONE2=q4;
assign TEN1=q3;
assign TEN2=q5;
endmodule
