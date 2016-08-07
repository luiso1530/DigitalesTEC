`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:53 08/06/2016 
// Design Name: 
// Module Name:    memoria 
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
module memoria(Posx,Posy,blank,letra,Clk,reset);
	input Clk,reset;
	input[10:0]Posx;
	input[10:0]Posy;
	output blank, letra;
	reg blank, letra;
	always @(negedge Clk)
	begin
		if(reset)
		begin
			blank =0;
			letra =0; 
		end
		//posiciones de blank (espacios donde no se pinta)
		else if(Posx >= 640 || Posy >= 480 )	blank =1;
		//posiciones de las letras
		else if(Posx ==400 && Posy == 260) letra =1;
		else
		begin
			blank =0;
			letra =0;
		end
	end
endmodule
