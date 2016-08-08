`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:06 08/07/2016 
// Design Name: 
// Module Name:    controldecroma 
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
module controldecroma(Tono,UP,down,color,reset,LP,ColorL,ColorP,ton);
	input Tono,LP,color,UP,down,reset;
	output ton,ColorL,ColorP;
	reg[7:0] ton;
	reg[2:0] ColorL;
	reg[2:0] ColorP;
	always @(Tono or color or LP or UP or down or reset)
	begin
		if(reset)
		begin
			ton = 8'b10100100;
			ColorL= 3'b000;
			ColorP= 3'b111;
		end
		else if(Tono)
		begin
			if(UP && ton != 8'b11111111)ton=ton+1;
			else if(down && ton != 0)ton=ton-1;
		end
		else if(color)
		begin
			if(LP)
			begin
				if(UP && ColorL != 3'b111)ColorL=ColorL+1;
				else if(down && ColorL != 0)ColorL=ColorL-1;
			end
			else
			begin
				if(UP && ColorP != 3'b111)ColorP=ColorP+1;
				else if(down && ColorP != 0)ColorP=ColorP-1;
			end
		end
	end
endmodule
