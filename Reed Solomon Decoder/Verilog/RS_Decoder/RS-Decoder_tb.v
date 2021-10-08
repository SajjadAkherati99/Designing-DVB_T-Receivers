`timescale 1ns / 1ps
module RS_Decoder_tb;

	// Inputs
	reg Clk;
	reg Reset;
	reg [7:0] in;

	// Outputs
	wire [7:0] out;

	// variables
	integer op1, i, op_out;

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
		op1=$fopen ("MATLAB_encoder_Verilog.txt","r");
		i = $fscanf (op1, " %d", in);
		op_out = $fopen ("decoded_Verilog.txt","w");
		
		#7 Reset = 1'b1;
		#30000 $finish;
		
		$fclose(op1);
		$fclose(op_out);
	end
	
	
	always #5 Clk = ~Clk;
	
	always @(posedge Clk) begin
		if (Reset) begin
			i <= $fscanf (op1, " %d", in);
			$fwrite (op_out," %d ",out);
		end
	end
      
endmodule

