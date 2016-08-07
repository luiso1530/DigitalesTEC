`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:30 08/06/2016 
// Design Name: 
// Module Name:    contadorverticaltb 
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
module contadorverticaltb;
	//input
	reg Clk;
	reg reset;
	//output
	wire[9:0] cuenta;
	// Instantiate the Unit Under Test (UUT)
	contadovertical uut(.Clk(Clk),.reset(reset),.cuenta(cuenta));
	//initial
	initial begin
		reset = 1;
		Clk =1;
		#50 reset = 0;
		
	end
	always
	begin
		#40 Clk=~Clk;
	end
	
endmodule 