`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:18 08/07/2016 
// Design Name: 
// Module Name:    genradorHsinc 
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
module genradorHsinc(cuenta,Hsinc);
	input [9:0] cuenta;
	output Hsinc;
	reg Hsinc;
	//wire [9:0] cuenta;
	always @(cuenta)
	begin
		if(cuenta >=655 || cuenta <= 750) Hsinc =0;
		else Hsinc = 1;
	end
endmodule
