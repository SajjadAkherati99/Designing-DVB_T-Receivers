`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:49:22 08/01/2021
// Design Name:   Syndrom
// Module Name:   D:/my_files/course/projects/RS_decoder/VHDL/Syndrom/verilog_testbench_syndrom.v
// Project Name:  Syndrom
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Syndrom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module verilog_testbench_syndrom;

	// Inputs
	reg Clk;
	reg Reset;
	reg [7:0] Msg_Rsv;

	// Outputs
	wire [7:0] S1;
	wire [7:0] S2;
	wire [7:0] S3;
	wire [7:0] S4;
	wire [7:0] S5;
	wire [7:0] S6;
	wire [7:0] S7;
	wire [7:0] S8;
	wire [7:0] S9;
	wire [7:0] S10;
	wire [7:0] S11;
	wire [7:0] S12;
	wire [7:0] S13;
	wire [7:0] S14;
	wire [7:0] S15;
	wire [7:0] S16;

	// Instantiate the Unit Under Test (UUT)
	Syndrom uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.Msg_Rsv(Msg_Rsv), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.S4(S4), 
		.S5(S5), 
		.S6(S6), 
		.S7(S7), 
		.S8(S8), 
		.S9(S9), 
		.S10(S10), 
		.S11(S11), 
		.S12(S12), 
		.S13(S13), 
		.S14(S14), 
		.S15(S15), 
		.S16(S16)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		Msg_Rsv = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

