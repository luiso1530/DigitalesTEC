`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:56 07/30/2016
// Design Name:   UpDownCounter
// Module Name:   C:/Users/lleon/Dropbox/Tec/VI Semestre/DigitalesTEC/DigitalesTEC/TestBench Contador/TestBench/UpDownCounter_tb.v
// Project Name:  TestBench
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UpDownCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UpDownCounter_tb;

	// Inputs
	reg Clock;
	reg UpDown;
	reg LoadCount;
	reg Reset;
	reg [3:0] CounterLoad;

	// Outputs
	wire [3:0] CounterOutput;

	// Instantiate the Unit Under Test (UUT)
	UpDownCounter uut (
		.Clock(Clock), 
		.UpDown(UpDown), 
		.LoadCount(LoadCount), 
		.Reset(Reset), 
		.CounterLoad(CounterLoad), 
		.CounterOutput(CounterOutput)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		UpDown = 0;
		LoadCount = 0;
		Reset = 1;
		CounterLoad = 0;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		Reset = 0;
		// Conteo ascendente
		UpDown = 1;
		#150;
		// Conteo descendente
		UpDown = 0;
		#150;
		// Carga
		CounterLoad = 4'b1010;
		LoadCount = 1;
		
	end
	
	always
	begin
		#10 Clock <= ~Clock;		
	end
      
endmodule

