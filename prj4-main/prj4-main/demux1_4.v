`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    16:55:28 05/08/2024 
// Design Name: 
// Module Name:    demux1_4 
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
module demux1_4(
input clk,
input [1:0] sel,
output reg [3:0] Y
    );
always @(clk,sel)
case(sel)
 0: Y[0]=clk;
 1: Y[1]=clk;
 2: Y[2]=clk;
 default: Y[3]=clk;
 endcase
 endmodule
 


