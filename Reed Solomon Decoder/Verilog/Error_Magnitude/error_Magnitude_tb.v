`timescale 1ns / 1ps
module error_Magnitude_tb;

	// Inputs
	reg [7:0] el1;
	reg [7:0] el2;
	reg [7:0] el3;
	reg [7:0] el4;
	reg [7:0] el5;
	reg [7:0] el6;
	reg [7:0] el7;
	reg [7:0] el8;
	reg Clk;
	reg start;
	reg [7:0] zed1;
	reg [7:0] zed2;
	reg [7:0] zed3;
	reg [7:0] zed4;
	reg [7:0] zed5;
	reg [7:0] zed6;
	reg [7:0] zed7;
	reg [7:0] zed8;

	// Outputs
	wire [7:0] em1;
	wire [7:0] em2;
	wire [7:0] em3;
	wire [7:0] em4;
	wire [7:0] em5;
	wire [7:0] em6;
	wire [7:0] em7;
	wire [7:0] em8;

	// Instantiate the Unit Under Test (UUT)
	error_Magnitude uut (
		.el1(el1), 
		.el2(el2), 
		.el3(el3), 
		.el4(el4), 
		.el5(el5), 
		.el6(el6), 
		.el7(el7), 
		.el8(el8), 
		.Clk(Clk), 
		.start(start), 
		.zed1(zed1), 
		.zed2(zed2), 
		.zed3(zed3), 
		.zed4(zed4), 
		.zed5(zed5), 
		.zed6(zed6), 
		.zed7(zed7), 
		.zed8(zed8), 
		.em1(em1), 
		.em2(em2), 
		.em3(em3), 
		.em4(em4), 
		.em5(em5), 
		.em6(em6), 
		.em7(em7), 
		.em8(em8)
	);

	initial begin
		// Initialize Inputs
		el1 = 8'd231;
		el2 = 8'd223;
		el3 = 8'd186;
		el4 = 8'd120;
		el5 = 8'd97;
		el6 = 8'd48;
		el7 = 8'd25;
		el8 = 8'd2;
		Clk = 0;
		start = 0;
		zed1 = 8'd16;
		zed2 = 8'd103;
		zed3 = 8'd131;
		zed4 = 8'd54;
		zed5 = 8'd181;
		zed6 = 8'd205;
		zed7 = 8'd204;
		zed8 = 8'd206;

		#10;
		start = 1;
		// Wait 100 ns for global reset to finish
		#1000;
      $finish();
		// Add stimulus here

	end
   
	always #5 Clk = ~Clk;
endmodule

