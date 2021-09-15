`timescale 1ns / 1ps

module RS_Decoder_tf;

	// Inputs
	reg Clk;
	reg Reset;
	reg [7:0] msg_in;

	// Outputs
	wire [7:0] msg_out;
	
	// variables
	integer op1, i, op_out;

	// Instantiate the Unit Under Test (UUT)
	RS_Decoder uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.msg_in(msg_in), 
		.msg_out(msg_out)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		op1=$fopen ("MATLAB_encoder_Verilog.txt","r");
		msg_in <= 0;
		op_out = $fopen ("decoded_Verilog.txt","w");
		
		#7 Reset = 1'b1;
	end
	
	
	always #5 Clk = ~Clk;
	
	always @(posedge Clk) begin
		if (Reset) begin
			i <= $fscanf (op1, " %d", msg_in);
			$fwrite (op_out," %d ",msg_out);
		end
	end
      
endmodule

