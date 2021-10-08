`timescale 1ns / 1ps
module testbench;

	// Inputs
	reg [7:0] Msg_Rsv;
	reg CS;
	reg Clk;
	reg Reset;

	// Outputs
	wire [7:0] S_1;
	wire [7:0] S_2;
	wire [7:0] S_3;
	wire [7:0] S_4;
	wire [7:0] S_5;
	wire [7:0] S_6;
	wire [7:0] S_7;
	wire [7:0] S_8;
	wire [7:0] S_9;
	wire [7:0] S_10;
	wire [7:0] S_11;
	wire [7:0] S_12;
	wire [7:0] S_13;
	wire [7:0] S_14;
	wire [7:0] S_15;
	wire [7:0] S_16;
	
	// variables
	integer op1, i;

	// Instantiate the Unit Under Test (UUT)
	Syndrome_Calculator uut (
		.Msg_Rsv(Msg_Rsv), 
		.CS(CS), 
		.Clk(Clk), 
		.Reset(Reset), 
		.S_1(S_1), 
		.S_2(S_2), 
		.S_3(S_3), 
		.S_4(S_4), 
		.S_5(S_5), 
		.S_6(S_6), 
		.S_7(S_7), 
		.S_8(S_8), 
		.S_9(S_9), 
		.S_10(S_10), 
		.S_11(S_11), 
		.S_12(S_12), 
		.S_13(S_13), 
		.S_14(S_14), 
		.S_15(S_15), 
		.S_16(S_16)
	);

	initial begin
		// Initialize Inputs
		Msg_Rsv = 0;
		CS = 1;
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



