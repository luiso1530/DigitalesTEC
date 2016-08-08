`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:50 08/06/2016 
// Design Name: 
// Module Name:    contadovertical 
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
module contadovertical(Clk, reset, cuenta);
	input Clk, reset;
	output cuenta;
	reg [9:0] cuenta;
	always @ (posedge Clk)
	begin
		if (reset)
		begin
			cuenta <= 10'b0;
		end
		else
		begin
			cuenta <= cuenta +1;
			if (cuenta == 525)
				begin
					cuenta <= 0;
				end
			else
			begin
			end
		end
	end

endmodule
