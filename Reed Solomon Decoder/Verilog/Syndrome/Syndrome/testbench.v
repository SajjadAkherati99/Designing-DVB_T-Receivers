`timescale 1ns / 1ps

module testbench;

	// Inputs
	reg [7:0] Msg_Rsv;
	reg [4:0] Alpha_i;
	reg CS;
	reg Clk;
	reg Reset;

	// Outputs
	wire done;
	wire [7:0] S_i;

	// variables
	integer op1, i;
	// Instantiate the Unit Under Test (UUT)
	Syndrome uut (
		.Msg_Rsv(Msg_Rsv),
		.Alpha_i(Alpha_i),
		.CS(CS), 
		.Clk(Clk), 
		.Reset(Reset), 
		.done(done), 
		.S_i(S_i)
	);

	initial begin
		// Initialize Inputs
		Msg_Rsv = 0;
		CS = 1;
		Clk = 0;
		Reset = 0;
		Alpha_i = 5'd4;
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

