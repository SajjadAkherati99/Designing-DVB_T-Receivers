`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:27:14 08/08/2021
// Design Name:   Error_Locations
// Module Name:   D:/my_files/course/projects/RS_decoder/VHDL/Error_Locations/error_locations_tf.v
// Project Name:  Error_Locations
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Error_Locations
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module error_locations_tf;

	// Inputs
	reg Clk;
	reg Reset;
	reg [7:0] Sigma1;
	reg [7:0] Sigma2;
	reg [7:0] Sigma3;
	reg [7:0] Sigma4;
	reg [7:0] Sigma5;
	reg [7:0] Sigma6;
	reg [7:0] Sigma7;
	reg [7:0] Sigma8;

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
	Error_Locations uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.Sigma1(Sigma1), 
		.Sigma2(Sigma2), 
		.Sigma3(Sigma3), 
		.Sigma4(Sigma4), 
		.Sigma5(Sigma5), 
		.Sigma6(Sigma6), 
		.Sigma7(Sigma7), 
		.Sigma8(Sigma8), 
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
		Sigma1 = 8'd249;
		Sigma2 = 8'd49;
		Sigma3 = 8'd237;
		Sigma4 = 8'd55;
		Sigma5 = 8'd207;
		Sigma6 = 8'd139;
		Sigma7 = 8'd86;
		Sigma8 = 8'd88;
		Clk = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#2;
		Reset = 1'b1; 
        
		// Add stimulus here

	end
      
	always #1 Clk = ~Clk;
      
endmodule

