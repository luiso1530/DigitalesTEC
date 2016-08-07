`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:25 08/07/2016 
// Design Name: 
// Module Name:    controldesalida 
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
module controldesalida(clk,ColorP,ColorL,ton,azul,rojo,verde,letra,blank);
	input ton,clk,letra,blank,ColorP,ColorL;
	output azul,rojo,verde;
	wire[2:0] ColorP;
	wire[2:0] ColorL;
	wire[7:0] ton;
	reg[1:0] azul;
	reg[2:0] rojo;
	reg[2:0] verde;
	always@(posedge clk)
	begin
		if(~blank)
			begin
				if(letra)
				begin
					if(ColorL[2])
					begin
						azul[1]=ton[7];
						azul[0]=ton[6];
					end
					else
					begin
						azul[1]=0;
						azul[0]=0;
					end
					if(ColorL[1])
					begin
						verde[2]=ton[5];
						verde[1]=ton[4];
						verde[0]=ton[3];
					end
					else
					begin
						verde[2]=0;
						verde[1]=0;
						verde[0]=0;
					end
					if(ColorL[0])
					begin
						rojo[2]=ton[2];
						rojo[1]=ton[1];
						rojo[0]=ton[0];
					end
					else
					begin
						rojo[2]=0;
						rojo[1]=0;
						rojo[0]=0;
					end
				end
				else
				begin
					if(ColorP[2])
					begin
						azul[1]=ton[7];
						azul[0]=ton[6];
					end
					else
					begin
						azul[1]=0;
						azul[0]=0;
					end
					if(ColorP[1])
					begin
						verde[2]=ton[5];
						verde[1]=ton[4];
						verde[0]=ton[3];
					end
					else
					begin
						verde[2]=0;
						verde[1]=0;
						verde[0]=0;
					end
					if(ColorP[0])
					begin
						rojo[2]=ton[2];
						rojo[1]=ton[1];
						rojo[0]=ton[0];
					end
					else
					begin
						rojo[2]=0;
						rojo[1]=0;
						rojo[0]=0;
					end
				end
			end
		else
		begin
			azul[1]=0;
			azul[0]=0;
			verde[2]=0;
			verde[1]=0;
			verde[0]=0;
			rojo[2]=0;
			rojo[1]=0;
			rojo[0]=0;
		end
	end
endmodule
