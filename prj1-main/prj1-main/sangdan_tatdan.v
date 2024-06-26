`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    08:25:58 05/08/2024 
// Design Name: 
// Module Name:    sangdan_tatdan 
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
module sangdan_tatdan(
input clk, rs,pause,
output [7:0] q
    );
 wire [7:0] r_next;
 reg [7:0] r_reg;
 
 always @(posedge clk, posedge rs)
  if (rs)
  r_reg <=0;
  else
  if (pause)
  r_reg<=r_reg;
  else
r_reg<=r_next;

assign r_next={r_reg[6:0],~r_reg[7]};

assign q=r_reg;
endmodule

  


