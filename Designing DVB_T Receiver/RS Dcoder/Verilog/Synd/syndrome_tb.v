`timescale 1ns / 1ps
module syndrome_tb;

	// Inputs
	reg [7:0] Msg_Rsv;
	reg Clk;
	reg Reset;

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

	// variables
	integer op1, i;

	// Instantiate the Unit Under Test (UUT)
	syndrom uut (
		.Msg_Rsv(Msg_Rsv), 
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
		.S16(S16)
	);

	initial begin
		// Initialize Inputs
		Msg_Rsv = 0;
		Clk = 0;
		Reset = 0;
		op1=$fopen ("MATLAB_encoder_Verilog.txt","r");
		
		#7 Reset = 1'b1;
		#3000 $finish;

	end
	
	
	always #5 Clk = ~Clk;
	
	always @(posedge Clk) begin
		if (Reset)
			i <= $fscanf (op1, " %d", Msg_Rsv);
	end
      
endmodule

