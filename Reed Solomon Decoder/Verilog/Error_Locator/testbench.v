`timescale 1ns / 1ps
module testbench;

	// Inputs
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
	reg Clk;
	reg Reset;

	// Outputs
	wire [7:0] Sigma1;
	wire [7:0] Sigma2;
	wire [7:0] Sigma3;
	wire [7:0] Sigma4;
	wire [7:0] Sigma5;
	wire [7:0] Sigma6;
	wire [7:0] Sigma7;
	wire [7:0] Sigma8;
	
	reg [11:0] counter;

	// Instantiate the Unit Under Test (UUT)
	Error_Locator_Calculator uut (
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
		.Clk(Clk), 
		.Reset(Reset), 
		.Sigma1(Sigma1), 
		.Sigma2(Sigma2), 
		.Sigma3(Sigma3), 
		.Sigma4(Sigma4), 
		.Sigma5(Sigma5), 
		.Sigma6(Sigma6), 
		.Sigma7(Sigma7), 
		.Sigma8(Sigma8)
	);

	initial begin
		// Initialize Inputs
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
		Clk = 0;
		Reset = 0;
		counter <= 0;

		// Wait 100 ns for global reset to finish
		#2;
      Reset = 1'b1; 
		// Add stimulus here
		
		
		#2000;
		$finish();
	end
	
	always #1 Clk = ~Clk;
	
	always @(posedge Clk) begin
		counter <= counter + 1'b1;
	end
      
endmodule

