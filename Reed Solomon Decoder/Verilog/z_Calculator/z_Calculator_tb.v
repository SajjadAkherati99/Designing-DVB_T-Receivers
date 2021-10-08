`timescale 1ns / 1ps
module z_Calculator_tb;

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
	reg [7:0] S1;
	reg [7:0] S2;
	reg [7:0] S3;
	reg [7:0] S4;
	reg [7:0] S5;
	reg [7:0] S6;
	reg [7:0] S7;
	reg [7:0] S8;
	reg [7:0] S9;
	reg [7:0] S10;
	reg [7:0] S11;
	reg [7:0] S12;
	reg [7:0] S13;
	reg [7:0] S14;
	reg [7:0] S15;
	reg [7:0] S16;

	// Outputs
	wire [7:0] zed1;
	wire [7:0] zed2;
	wire [7:0] zed3;
	wire [7:0] zed4;
	wire [7:0] zed5;
	wire [7:0] zed6;
	wire [7:0] zed7;
	wire [7:0] zed8;

	// Instantiate the Unit Under Test (UUT)
	z_Calculator uut (
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
		.S16(S16), 
		.zed1(zed1), 
		.zed2(zed2), 
		.zed3(zed3), 
		.zed4(zed4), 
		.zed5(zed5), 
		.zed6(zed6), 
		.zed7(zed7), 
		.zed8(zed8)
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
		S1 = 8'd229;
		S2 = 8'd104;
		S3 = 8'd56;
		S4 = 8'd157;
		S5 = 8'd207;
		S6 = 8'd241;
		S7 = 8'd179;
		S8 = 8'd29;
		S9 = 8'd41;
		S10 = 8'd44;
		S11 = 8'd185;
		S12 = 8'd145;
		S13 = 8'd25;
		S14 = 8'd222;
		S15 = 8'd150;
		S16 = 8'd25;
		#10;
		Reset = ~Reset;
		// Wait 100 ns for global reset to finish
		#1000;
      $finish();
		// Add stimulus here

	end
      
	always #5 Clk = ~Clk;
		
endmodule

