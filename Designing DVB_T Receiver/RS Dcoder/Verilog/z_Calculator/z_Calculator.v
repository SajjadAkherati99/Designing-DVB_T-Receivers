module z_Calculator(Sigma1, Sigma2, Sigma3, Sigma4,
						  Sigma5, Sigma6, Sigma7, Sigma8,
						  Clk, Reset,
						  S1, S2,  S3,  S4,  S5,  S6,  S7,  S8,
						  S9, S10, S11, S12, S13, S14, S15, S16,
						  zed1, zed2, zed3, zed4,
						  zed5, zed6, zed7, zed8);

	input [7:0] Sigma1, Sigma2, Sigma3, Sigma4,
					Sigma5, Sigma6, Sigma7, Sigma8;
					
	input Clk, Reset;
	input [7:0] S1, S2,  S3,  S4,  S5,  S6,  S7,  S8,
					S9, S10, S11, S12, S13, S14, S15, S16;
	output [7:0] zed1, zed2, zed3, zed4,
					zed5, zed6, zed7, zed8;
	
	wire [7:0] Sigma1, Sigma2, Sigma3, Sigma4,
				  Sigma5, Sigma6, Sigma7, Sigma8;
					
	wire Clk, Reset;
	wire [7:0] S1, S2,  S3,  S4,  S5,  S6,  S7,  S8,
				  S9, S10, S11, S12, S13, S14, S15, S16;
	wire [7:0] zed1, zed2, zed3, zed4,
				  zed5, zed6, zed7, zed8;
	
	wire [7:0] S [1:16];
	wire [7:0] Sigma[1:9];
	reg [7:0]zed[2:9];
	reg [3:0]i;
	reg [3:0]k;
	
	reg [7:0] alpha[0:255];
	reg [7:0] tuple[0:255];
	initial begin
		$readmemb("alpha.txt", alpha, 0, 255);
		$readmemb("tuple.txt", tuple, 0, 255);
	end
	
	assign S[1] = S1;
	assign S[2] = S2;
	assign S[3] = S3;
	assign S[4] = S4;
	assign S[5] = S5;
	assign S[6] = S6;
	assign S[7] = S7;
	assign S[8] = S8;
	assign S[9] = S9;
	assign S[10] = S10;
	assign S[11] = S11;
	assign S[12] = S12;
	assign S[13] = S13;
	assign S[14] = S14;
	assign S[15] = S15;
	assign S[16] = S16;

	assign Sigma[1] = 8'd255;
	assign Sigma[2] = Sigma1;
	assign Sigma[3] = Sigma2;
	assign Sigma[4] = Sigma3;
	assign Sigma[5] = Sigma4;
	assign Sigma[6] = Sigma5;
	assign Sigma[7] = Sigma6;
	assign Sigma[8] = Sigma7;
	assign Sigma[9] = Sigma8;
	
	reg [11:0]counter;
	
	always @(posedge Clk) begin
		if(!Reset)
			counter <= 0;
		else	
			counter <= counter + 1'b1;
	end
	
	always @(posedge Clk)
		begin
			if (!Reset) begin
				zed[2] <= 0;	zed[3] <= 0;	zed[4] <= 0;	zed[5] <= 0;
				zed[6] <= 0;	zed[7] <= 0;	zed[8] <= 0;	zed[9] <= 0;
				i <= 4'd2;
				k <= 4'd1;
			end
			else begin
				if(k != 4'd10) begin
					if (i-k < 4'd1) begin
						zed[i] <= zed[i] ^ alpha[Sigma[k]];
					end
					else begin
						if (Sigma[k] != 0 && alpha[i-k] != 0) begin
							if ((8'd255-S[i-k]) < Sigma[k]) begin
								zed[i] <= zed[i] ^ alpha[Sigma[k]+S[i-k]+1'b1];
							end
							else begin
								zed[i] <= zed[i] ^ alpha[Sigma[k]+S[i-k]];
							end
						end
					end
				end
				if (k != 10) begin
					if (k == i) begin
						if(i == 4'd9) begin
							i <= 4'd9;
							k <= 4'd10;
						end
						else begin
							k <= 4'd1;
							i <= i + 1'b1;
						end
					end
					else begin
						k <= k + 1'b1;
					end
				end
			end
		end
		
		assign zed1 = zed[2];
		assign zed2 = zed[3];
		assign zed3 = zed[4];
		assign zed4 = zed[5];
		assign zed5 = zed[6];
		assign zed6 = zed[7];
		assign zed7 = zed[8];
		assign zed8 = zed[9];
endmodule
