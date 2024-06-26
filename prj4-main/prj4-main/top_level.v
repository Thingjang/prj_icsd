`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    17:26:27 05/08/2024 
// Design Name: 
// Module Name:    led_1bit 
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
module led_1bit(
input clk, rs,
output [7:0] q
    );
reg lr;
wire [7:0] r_next;
reg [7:0] r_reg;

always @ (posedge clk, posedge rs)
if(rs)
begin
r_reg<=8'b00000001;
end
else
r_reg<=r_next;
assign r_next=(lr==0)?{r_reg[6:0],1'b0}:{1'b0, r_reg[7:1]};
always @(posedge r_reg[7], posedge r_reg[0])

if(r_reg[7])
lr=1;
else if (r_reg[0])
lr=0;

assign q=r_reg;
endmodule
