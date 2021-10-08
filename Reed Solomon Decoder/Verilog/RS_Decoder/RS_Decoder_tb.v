`timescale 1ns / 1ps
module RS-Decoder_tb;

	// Inputs
	reg Clk;
	reg Reset;
	reg [7:0] in;

	// Outputs
	wire [7:0] out;

	// variables
	integer op1, i;

	// Instantiate the Unit Under Test (UUT)
	RS_Decoder uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		in = 0;
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

