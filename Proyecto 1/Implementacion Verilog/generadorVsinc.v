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
module generadorVsinc(cuenta,Hsinc);
	input cuenta;
	output Hsinc;
	reg Hsinc;
	wire [9:0] cuenta;
	always @(cuenta)
	begin
		if(cuenta >=489 || cuenta <= 491) Hsinc =0;
		else Hsinc = 1;
	end
endmodule
