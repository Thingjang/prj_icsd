`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    08:48:05 05/08/2024 
// Design Name: 
// Module Name:    top_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: [7:0] led -> on-> off
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_level(
input wire clk, rs, btn1, btn2, pause,
output wire [7:0] q
    );
wire PW;
divi_clk IC1(.clk50(clk), .speed1(btn1), .speed2(btn2), .pwm_out(PW));
sangdan_tatdan IC2(.clk(PW), .rs(rs),.q(q), .pause(pause));
endmodule

