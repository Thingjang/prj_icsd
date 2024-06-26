`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    08:43:08 05/08/2024 
// Design Name: 
// Module Name:    divi_clk 
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
module divi_clk(
input clk50,
input speed1, speed2,

output reg pwm_out
    );
	 //count
reg [10:0] counter;
initial 
begin 
counter <=1;
pwm_out<=0;
end
always @ (posedge clk50)
if (speed1==1 && speed2==0)
begin
 if (counter==5)//5mhz
      begin
	    pwm_out<=~pwm_out;
		 counter<=1;
		 end 
		 else
		  counter<=counter+1;
		 end
		 else if (speed1==0 &&speed2==0)
		 begin
		 if (counter ==25)//1mhz
		 begin
		 pwm_out<=~pwm_out;
		 counter<=1;
		 end
		  else 
		 counter<=counter+1;
		  end
		 else if (speed1==0&& speed2==1)
		 begin
		 if (counter ==125)//1mhz/2
		 begin
		 pwm_out<=~pwm_out;
		 counter<=1;
		 end
		  else 
		   counter<=counter+1;
		 end
		 else if (speed1==1&& speed2==1)
		 begin
		 if (counter ==25525)//1mhz/2
		 begin
		 pwm_out<=~pwm_out;
		 counter<=1;
		 end
		  else 
		 counter<=counter+1;
		 end
 endmodule
 
