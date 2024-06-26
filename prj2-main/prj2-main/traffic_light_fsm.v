`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    10:14:45 05/08/2024 
// Design Name: 
// Module Name:    traffic_light_fsm 
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
module traffic_light_fsm(
input clk,  
    output reg [7:0] count1, count2,
	 output reg [2:0] light1, light2);


reg [1:0] state;
localparam s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
always@(posedge clk)
begin
case(state)
s0: if(count2==1)
		begin
		state<=s1;
		count1<=5;
		end
		else
		begin
		state<=s0;
		count1<=count1-1;
		end
	s1: if (count1==1)
		begin
		state<=s2;
		count1<=15;
		end
		else
		begin
		state <=s1;
		count1<=count1-1;
		end
	s2: if (count1==1)
		begin
		state<=s3;
		count1<=5;
		end
		else
		begin
	state <=s2;
		count1<=count1-1;
		end
	s3: if (count1==1)
		begin
		state<=s1;
		count1<=20;
		end
		else
		begin
		state <=s3;
		count1<=count1-1;
		end
	default:
		begin
		state<=s0;
		count1<=20;
		end
endcase
end
always@(posedge clk)
begin
case(state)
	s0: if(count2==1)
		begin
		state<=s1;
		count2<=5;
		end
		else
		begin
		state<=s0;
		count2<=count2-1;
		end
s1: if (count1==1)
		begin
		state<=s2;
		count2<=20;
		end
		else
		begin
		state<=s1;
		count2<=count2-1;
		end
	s2: if (count1==1)
		begin
		state<=s3;
		count2<=5;
		end
		else
		begin
		state<=s2;
		count2<=count2-1;
		end
	s3: if (count1==1)
		begin
		state<=s0;
		count2<=15;
		end
		else
		begin
	state <=s3;
		count2<=count2-1;
		end
	default:
		begin
		state<=s0;
		count2<=15;
		end
endcase
end
always@(state)
begin
	case (state)
	s0:
	begin
	light1<=3'b100;
	light2<=3'b001;
	end
	s1:
	begin
	light1<=3'b100;
	light2<=3'b010;
	end
	s2:
	begin
	light1<=3'b001;
	light2<=3'b100;
	end
	s3:
	begin
	light1<=3'b010;
	light2<=3'b100;
	end
endcase
end


endmodule
		
