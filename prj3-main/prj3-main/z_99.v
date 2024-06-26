`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dang Hung Thinh
// 
// Create Date:    05:48:50 05/08/2024 
// Design Name: 
// Module Name:    zero00_99_00 
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
module zero00_99_00
//input ports and their sizes
    (input Clk,UpOrDown,pause,
    //output ports and their size
    output [7 : 0] Count);
    //Internal variables
    reg [7 : 0] Count=0;
	
	
reg [1:0] Direction; // Biến trạng thái xác định hướng đếm (0 - Up, 1 - Down)
always @(posedge Clk)
begin
if (pause)
 Count<=Count;
 else
    if (UpOrDown == 1) begin // Up mode selected
        if (Direction == 0) begin // Nếu đang đếm lên
            if (Count == 99)
                Direction <= 1; // Chuyển sang đếm xuống khi đạt 99
            else
                Count <= Count + 1; // Tăng Count lên
					 end
					 else begin // Nếu đang đếm xuống
            if (Count == 0)
                Direction <= 0; // Chuyển sang đếm lên khi đạt 0
            else
                Count <= Count - 1; // Giảm Count đi
        end
    end
    else begin // Down mode selected
        if (Direction == 0) begin // Nếu đang đếm lên
            if (Count == 0)
                Direction <= 1; // Chuyển sang đếm xuống khi đạt 0
            else
				Count <= Count - 1; // Giảm Count đi
        end
	else begin // Nếu đang đếm xuống
            if (Count == 99)
                Direction <= 0; // Chuyển sang đếm lên khi đạt 99
            else
                Count <= Count + 1; // Tăng Count lên
        end
    end
end	  

endmodule


