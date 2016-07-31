`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:15 07/29/2016
// Design Name:   contador
// Module Name:   C:/.Xilinx/contadorprueba/contador_tb.v
// Project Name:  contadorprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: contador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module contador_tb;

	// Inputs
	reg reset;
	reg clk;
	reg enable;
	reg updown;
	reg a,b,c,d;
	reg load;

	// Outputs
	wire [3:0] cont;

	// Instantiate the Unit Under Test (UUT)
	contador uut (
		.reset(reset), 
		.clk(clk),  
		.enable(enable),
		.updown(updown),
		.a(a),.b(b),.c(c),.d(d),
		.load(load),
		.cont(cont)
	);

	initial begin
		// Initialize Inputs
		reset = 1'b1;
		clk = 0;
		enable = 0;
		updown = 1;
		load = 0;
		a=0;
		b=0;
		c=0;
		d=0;
		
		
		
		//#1 reset=1'b1;
		//#1 reset=0;
		#1 reset=1;
		#2 reset=0;
		#10 enable=1;
		#90 updown=0;
		#170 load =1;
		#175 a=1;
		#180 b=1;
		#180 enable = 0;
		#190 c=1;
		#195 d=1;


		// Wait 100 ns for global reset to finish
		#200;
        
		// Add stimulus here

	end
	always
	begin
	 #1 clk =~ clk;
	 //reset=0;
	end
	
     
endmodule

