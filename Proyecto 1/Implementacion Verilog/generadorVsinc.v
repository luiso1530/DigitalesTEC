`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:05 08/07/2016 
// Design Name: 
// Module Name:    generadorVsinc 
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
module generadorVsinc(cuenta,Vsinc);
	input [9:0] cuenta;
	output Vsinc;
	reg Vsinc;
	//wire [9:0] cuenta;
	always @(cuenta)
	begin
		if(cuenta >=489 || cuenta <= 491) Vsinc =0;
		else Vsinc = 1;
	end
endmodule
