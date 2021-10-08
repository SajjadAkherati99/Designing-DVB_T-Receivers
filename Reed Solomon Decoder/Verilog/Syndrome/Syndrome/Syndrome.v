`timescale 1ns / 1ps
module Syndrome(Msg_Rsv, Alpha_i, CS, Clk, Reset, done, S_i);
	input Clk, CS, Reset;
	input [4:0] Alpha_i;
	input [7:0]Msg_Rsv;
	output done;
	output [7:0]S_i;

	wire Clk, CS, Reset;
	wire [4:0] Alpha_i;
	wire [7:0]Msg_Rsv;
	reg done;
	wire [7:0]S_i;
					
	reg [7:0]S;				
	wire [7:0]SS;
	reg [8:0]SSM;
	wire [7:0]SSA;
	reg [7:0]SSAA;
	reg [8:0]counter;
	
	Tuple_To_Alpha Stage_SS(SSAA, SS);
	
	Alpha_To_Tuple Stage_SSA(SSM[7:0], SSA);
	
	always @(posedge Clk) begin
		if(CS) begin
			if(!Reset)begin
				S <= 0;
				counter <= 0;
				done <= 0;
			end
			else begin
				if (counter < 9'd256) begin
					counter <= counter + 1'b1;
					if (counter == 0)
						S <= 0;
					else 
						S <= SS;
				end
				else begin
					done <= 1'b1;
				end
			end
		end
	end
	
	always @(Msg_Rsv, SSA) begin
		SSAA = SSA ^ Msg_Rsv;
	end
	
	always @(S, Alpha_i) begin
		if (S == 0)
			SSM <= 0;	
		else if (S > 8'd255 - Alpha_i)
			SSM <= S + Alpha_i + 1'b1;
		else
			SSM <= S + Alpha_i;
	end
	
	assign S_i = (done == 1'b1)? S : 8'bz;
	
endmodule
