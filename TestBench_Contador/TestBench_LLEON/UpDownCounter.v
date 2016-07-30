`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:55 07/30/2016 
// Design Name: 
// Module Name:    UpDownCounter 
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
module UpDownCounter(
    input Clock,
	 input UpDown,
	 input LoadCount,
	 input Reset,
	 input [3:0] CounterLoad,
	 output reg [3:0] CounterOutput);


	 always @(posedge Clock or posedge Reset)
	 begin
		// Condicion de reinicio
		if(Reset) CounterOutput <= 4'b0000;
		// Condición de carga
		else if(LoadCount) CounterOutput <= CounterLoad;
		// Condición de conteo ascendente
		else if(UpDown) CounterOutput <= CounterOutput + 1;
		// Condición de conteo descendente
		else if(~UpDown) CounterOutput <= CounterOutput - 1;
	 end
	 
endmodule
