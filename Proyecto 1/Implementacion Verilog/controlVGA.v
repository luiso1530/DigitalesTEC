`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:43 08/07/2016 
// Design Name: 
// Module Name:    controlVGA 
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
module controlVGA(Clk,reset,Up,Down,Tono,color,Lp,Azul,Verde,Rojo,Hsinc,Vsinc);
	input Clk,reset,Up,Down,Tono,color,Lp;
	output Azul,Verde,Rojo,Hsinc,Vsinc;
	wire[1:0] Azul;
	wire[2:0] Rojo;
	wire[2:0] Verde;
	wire[9:0] cuentaH, cuentaV;
	wire blank,letra;
	wire[7:0] ton;
	wire[2:0] ColorL;
	wire[2:0] ColorP;
	contadorhorizontal ContH(.clk(Clk), reset, cuentaH);
	genradorHsinc GenH(cuentaH,Hsinc);
	contadovertical ContV(Hsinc, reset, cuentaV);
	generadorVsinc GenV(cuentaV,Vsinc);
	memoria Memo(cuentaH,cuentaV,blank,letra,Clk,reset);
	controldecroma ContrCrom(Tono,Up,Down,color,reset,Lp,ColorL,ColorP,ton);
	controldesalida ContrOut(Clk,ColorP,ColorL,ton,Azul,Rojo,Verde,letra,blank);
endmodule
