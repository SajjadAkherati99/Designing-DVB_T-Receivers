`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:45 05/23/2021
// Design Name:   error_Locations
// Module Name:   E:/my_files/course/projects/RS_decoder/Verilog/Error_Locations/testbench_tb.v
// Project Name:  Error_Locations
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: error_Locations
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_tb;

	// Inputs
	reg [7:0] Sigma1;
	reg [7:0] Sigma2;
	reg [7:0] Sigma3;
	reg [7:0] Sigma4;
	reg [7:0] Sigma5;
	reg [7:0] Sigma6;
	reg [7:0] Sigma7;
	reg [7:0] Sigma8;
	reg Clk;
	reg Reset;

	// Outputs
	wire [7:0] Location1;
	wire [7:0] Location2;
	wire [7:0] Location3;
	wire [7:0] Location4;
	wire [7:0] Location5;
	wire [7:0] Location6;
	wire [7:0] Location7;
	wire [7:0] Location8;

	// Instantiate the Unit Under Test (UUT)
	error_Locations uut (
		.Sigma1(Sigma1), 
		.Sigma2(Sigma2), 
		.Sigma3(Sigma3), 
		.Sigma4(Sigma4), 
		.Sigma5(Sigma5), 
		.Sigma6(Sigma6), 
		.Sigma7(Sigma7), 
		.Sigma8(Sigma8), 
		.Clk(Clk), 
		.Reset(Reset), 
		.Location1(Location1), 
		.Location2(Location2), 
		.Location3(Location3), 
		.Location4(Location4), 
		.Location5(Location5), 
		.Location6(Location6), 
		.Location7(Location7), 
		.Location8(Location8)
	);

	initial begin
		// Initialize Inputs
		Sigma1 = 0;
		Sigma2 = 0;
		Sigma3 = 0;
		Sigma4 = 0;
		Sigma5 = 0;
		Sigma6 = 0;
		Sigma7 = 0;
		Sigma8 = 0;
		Clk = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

