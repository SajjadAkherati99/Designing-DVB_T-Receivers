module RS_Decoder(Clk, Reset, in, out);
	input Clk, Reset;
	input [7:0] in;
	output [7:0] out;

	wire Clk, Reset;
	wire [7:0] in;
	reg [7:0] out;
	
	reg [9:0] address;
	reg [7:0] FIFO [0:1023];
	
	reg reset_all, reset_last;
	
	wire [7:0]S1_0, S2_0, S3_0, S4_0, S5_0, S6_0, S7_0, S8_0, S9_0
				,S10_0, S11_0, S12_0, S13_0, S14_0, S15_0, S16_0;
	reg [7:0]S1_1, S2_1, S3_1, S4_1, S5_1, S6_1, S7_1, S8_1, S9_1
				,S10_1, S11_1, S12_1, S13_1, S14_1, S15_1, S16_1;
	reg [7:0]S1_2, S2_2, S3_2, S4_2, S5_2, S6_2, S7_2, S8_2, S9_2
				,S10_2, S11_2, S12_2, S13_2, S14_2, S15_2, S16_2;
				
	reg [7:0]S1, S2, S3, S4, S5, S6, S7, S8, S9
				,S10, S11, S12, S13, S14, S15, S16;
				
	wire [7:0]Sigma1, Sigma2, Sigma3, Sigma4,
				 Sigma5, Sigma6, Sigma7, Sigma8;
	
	reg [7:0]Sigma10, Sigma20, Sigma30, Sigma40,
				 Sigma50, Sigma60, Sigma70, Sigma80;
	
	reg [7:0]Sigma11, Sigma21, Sigma31, Sigma41,
				 Sigma51, Sigma61, Sigma71, Sigma81;
	
	wire [7:0] zed1, zed2, zed3, zed4,
				  zed5, zed6, zed7, zed8;
				 
	wire [7:0] loc1, loc2, loc3, loc4, loc5, loc6, loc7, loc8;
	reg [7:0] loc11, loc21, loc31, loc41, loc51, loc61, loc71, loc81;
	wire [7:0]em0, em1, em2, em3, em4, em5, em6, em7;
	reg [7:0] em[0:7];
	reg [7:0] el[0:7];
	reg [2:0] i;
				
	syndrom Caculate_Syndroms(
								.Msg_Rsv(in), .Clk(Clk), .Reset(reset_all),
								.S1(S1_0),	 .S2(S2_0),   .S3(S3_0),   .S4(S4_0),
								.S5(S5_0), 	 .S6(S6_0),   .S7(S7_0),   .S8(S8_0),
								.S9(S9_0), 	 .S10(S10_0), .S11(S11_0), .S12(S12_0),
								.S13(S13_0), .S14(S14_0), .S15(S15_0), .S16(S16_0)
							);
	
	Error_Locator_Calculator Calculate_Sigma_X (
												  .S1(S1), 	 .S2(S2), 	.S3(S3),   .S4(S4),
												  .S5(S5), 	 .S6(S6), 	.S7(S7),   .S8(S8),
												  .S9(S9), 	 .S10(S10), .S11(S11), .S12(S12),
												  .S13(S13), .S14(S14), .S15(S15), .S16(S16),
												  .Clk(Clk), .Reset(reset_all),
												  .Sigma1(Sigma1), .Sigma2(Sigma2),
												  .Sigma3(Sigma3), .Sigma4(Sigma4),
												  .Sigma5(Sigma5), .Sigma6(Sigma6),
												  .Sigma7(Sigma7), .Sigma8(Sigma8)
												);
	
	error_Locations Error_Loactions(
									  .Sigma1(Sigma10), .Sigma2(Sigma20),
									  .Sigma3(Sigma30), .Sigma4(Sigma40),
									  .Sigma5(Sigma50), .Sigma6(Sigma60),
									  .Sigma7(Sigma70), .Sigma8(Sigma80),
									  .Clk(Clk), .Reset(reset_all),
									  .Location1(loc1), .Location2(loc2),
									  .Location3(loc3), .Location4(loc4),
									  .Location5(loc5), .Location6(loc6),
									  .Location7(loc7), .Location8(loc8)
									);
	z_Calculator z_x(
						.Sigma1(Sigma11), .Sigma2(Sigma21),
						.Sigma3(Sigma31), .Sigma4(Sigma41),
						.Sigma5(Sigma51), .Sigma6(Sigma61),
						.Sigma7(Sigma71), .Sigma8(Sigma81),
						.Clk(Clk), .Reset(reset_all),
						.S1(S1_2), 	 .S2(S2_2), 	.S3(S3_2), 	.S4(S4_2),
						.S5(S5_2), 	 .S6(S6_2), 	.S7(S7_2), 	.S8(S8_2),
						.S9(S9_2), 	 .S10(S10_2), .S11(S11_2), .S12(S12_2),
						.S13(S13_2), .S14(S14_2), .S15(S15_2), .S16(S16_2),
						.zed1(zed1), .zed2(zed2), .zed3(zed3), .zed4(zed4),
						.zed5(zed5), .zed6(zed6), .zed7(zed7), .zed8(zed8)
					);
	
	error_Magnitude Error_Magnitude(
								  .el1(loc81), .el2(loc71), .el3(loc61), .el4(loc51),
								  .el5(loc41), .el6(loc31), .el7(loc21), .el8(loc11),
								  .Clk(Clk), .start(reset_last),
								  .zed1(zed1), .zed2(zed2), .zed3(zed3), .zed4(zed4),
								  .zed5(zed5), .zed6(zed6), .zed7(zed7), .zed8(zed8),
								  .em1(em7), .em2(em6), .em3(em5), .em4(em4),
								  .em5(em3), .em6(em2), .em7(em1), .em8(em0)
							 );
							  
	
	always@(posedge Clk) begin
		if(!Reset) begin 
			address <= 0;
			i <= 0;
			reset_all <= 0;
		end
		else begin
			FIFO[address] <= in;
			if ((address[7:0]+1'b1) == el[i]) begin
				out <= FIFO[address] ^ em[i];
				i <= i + 3'd1;
			end
			else
				out <= FIFO[address];
			
			if (address[7:0] == 8'd254) begin
				address <= address + 10'd2;
				reset_all <= 0;
				i <= 0;
			end
			else begin
				address <= address + 10'd1;
				reset_all <= 1;
			end
			
			if(address[7:0] == 8'd45)
				reset_last <= 0;
			else
				reset_last <= 1;
		end
	end
	
	always @(posedge Clk) begin
		if((Reset) && (address[7:0] == 8'd0)) begin
			S1 <= S1_0;		S2 <= S2_0;		S3 <= S3_0;		S4 <= S4_0;
			S5 <= S5_0;		S6 <= S6_0;		S7 <= S7_0;		S8 <= S8_0;
			S9 <= S9_0;		S10 <= S10_0;	S11 <= S11_0;	S12 <= S12_0;
			S13 <= S13_0;	S14 <= S14_0;	S15 <= S15_0;	S16 <= S16_0;
			
			S1_1 <= S1;		S2_1 <= S2;		S3_1 <= S3;		S4_1 <= S4;
			S5_1 <= S5;		S6_1 <= S6;		S7_1 <= S7;		S8_1 <= S8;
			S9_1 <= S9;		S10_1 <= S10;	S11_1 <= S11;	S12_1 <= S12;
			S13_1 <= S13;	S14_1 <= S14;	S15_1 <= S15;	S16_1 <= S16;
			
			S1_2 <= S1_1;		S2_2 <= S2_1;		S3_2 <= S3_1;		S4_2 <= S4_1;
			S5_2 <= S5_1;		S6_2 <= S6_1;		S7_2 <= S7_1;		S8_2 <= S8_1;
			S9_2 <= S9_1;		S10_2 <= S10_1;		S11_2 <= S11_1;		S12_2 <= S12_1;
			S13_2 <= S13_1;		S14_2 <= S14_1;		S15_2 <= S15_1;		S16_2 <= S16_1;
		end
	end
	
	always @(posedge Clk) begin
		if((Reset) && (address[7:0] == 8'd0)) begin
			Sigma10 <= Sigma1;	Sigma20 <= Sigma2;	Sigma30 <= Sigma3;	Sigma40 <= Sigma4;
			Sigma50 <= Sigma5;	Sigma60 <= Sigma6;	Sigma70 <= Sigma7;	Sigma80 <= Sigma8;
			
			Sigma11 <= Sigma10;	Sigma21 <= Sigma20;	Sigma31 <= Sigma30;	Sigma41 <= Sigma40;
			Sigma51 <= Sigma50;	Sigma61 <= Sigma60;	Sigma71 <= Sigma70;	Sigma81 <= Sigma80;
		end
	end
	
	always @(posedge Clk) begin
		if((Reset) && (address[7:0] == 8'd0)) begin
			loc11 <= loc1-1'b1;	loc21 <= loc2-1'b1;	loc31 <= loc3-1'b1;	loc41 <= loc4-1'b1;
			loc51 <= loc5-1'b1;	loc61 <= loc6-1'b1;	loc71 <= loc7-1'b1;	loc81 <= loc8-1'b1;
			
			el[0] <= loc11;		el[1] <= loc21;
			el[2] <= loc31;		el[3] <= loc41;
			el[4] <= loc51;		el[5] <= loc61;
			el[6] <= loc71;		el[7] <= loc81;
		end
	end	
	
	always @(posedge Clk) begin
		if((Reset) && (address[7:0] == 8'd0)) begin
			em[0] <= em0;	em[1] <= em1;	em[2] <= em2;	em[3] <= em3;
			em[4] <= em4;	em[5] <= em5;	em[6] <= em6;	em[7] <= em7;
		end
	end
	
endmodule
