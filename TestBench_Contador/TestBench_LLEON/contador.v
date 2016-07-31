`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:04 07/29/2016 
// Design Name: 
// Module Name:    contador 
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
/*module contador(reset,clk,cont,enable);
 input reset,clk,enable;
 output [3:0] cont;
 reg [3:0] cont;
 always @(posedge clk)
 begin
  if (reset==1'b1)
		cont<=0;
  else if (enable==1'b1)
   cont<=cont+1;
  
 end 

endmodule
*/
module contador(reset,updown,clk,cont,enable,load, a,b,c,d);
 input reset,updown,clk,enable,load,a,b,c,d;
 output [3:0] cont;
 reg [3:0] cont;
 always @(posedge clk)
 begin
  if (reset==1'b1)
		cont<=0;
  else if (load ==1'b1)
		begin
			cont[0] <= a;
			cont[1] <= b;
			cont[2] <= c;
			cont[3] <= d;
		end
  else if (enable==1'b1)
		begin
			if(updown==1'b1)
				cont<=cont+1;
			else
				cont<=cont-1;
		end
 end 

endmodule
