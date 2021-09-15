module syndrom(Msg_Rsv, Clk, Reset,
					S1, S2, S3, S4, S5, S6, S7, S8, S9
					, S10, S11, S12, S13, S14, S15, S16);
	input Clk, Reset;
	input [7:0]Msg_Rsv;
	output [7:0]S1, S2, S3, S4, S5, S6, S7, S8, S9
					,S10, S11, S12, S13, S14, S15, S16;

	wire Clk, Reset;
	wire [4:0] Alpha_i;
	wire [7:0]Msg_Rsv;
	reg done;
	reg[7:0]counter;
	wire [7:0]S1, S2, S3, S4, S5, S6, S7, S8, S9
				,S10, S11, S12, S13, S14, S15, S16;
					
	reg [7:0]S[1:16];;
	
	reg [7:0] alpha[0:255];
	reg [7:0] tuple[0:255];
	initial begin
		$readmemb("alpha.txt", alpha, 0, 255);
		$readmemb("tuple.txt", tuple, 0, 255);
	end
	
	always @(posedge Clk) begin
		if(!Reset)
			counter <= 0;
		else 
			counter <= counter + 1'b1;
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[1] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[1] == 0)
				S[1] <= tuple[Msg_Rsv];
			else begin
				if (S[1] > (8'd255-5'd1)) begin
					S[1] <= tuple[alpha[S[1] + 5'd2] ^ Msg_Rsv];
				end
				else begin
					S[1] <= tuple[alpha[S[1] + 5'd1] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[2] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[2] == 0)
				S[2] <= tuple[Msg_Rsv];
			else begin
				if (S[2] > (8'd255-5'd2)) begin
					S[2] <= tuple[alpha[S[2] + 5'd3] ^ Msg_Rsv];
				end
				else begin
					S[2] <= tuple[alpha[S[2] + 5'd2] ^ Msg_Rsv];
				end
			end
		end
	end
		
			
	always @(posedge Clk) begin
		if(!Reset)begin
			S[3] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[3] == 0)
				S[3] <= tuple[Msg_Rsv];
			else begin
				if (S[3] > (8'd255-5'd3)) begin
					S[3] <= tuple[alpha[S[3] + 5'd4] ^ Msg_Rsv];
				end
				else begin
					S[3] <= tuple[alpha[S[3] + 5'd3] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[4] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[4] == 0)
				S[4] <= tuple[Msg_Rsv];
			else begin
				if (S[4] > (8'd255-5'd4)) begin
					S[4] <= tuple[alpha[S[4] + 5'd5] ^ Msg_Rsv];
				end
				else begin
					S[4] <= tuple[alpha[S[4] + 5'd4] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[5] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[5] == 0)
				S[5] <= tuple[Msg_Rsv];
			else begin
				if (S[5] > (8'd255-5'd5)) begin
					S[5] <= tuple[alpha[S[5] + 5'd6] ^ Msg_Rsv];
				end
				else begin
					S[5] <= tuple[alpha[S[5] + 5'd5] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[6] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[6] == 0)
				S[6] <= tuple[Msg_Rsv];
			else begin
				if (S[6] > (8'd255-5'd6)) begin
					S[6] <= tuple[alpha[S[6] + 5'd7] ^ Msg_Rsv];
				end
				else begin
					S[6] <= tuple[alpha[S[6] + 5'd6] ^ Msg_Rsv];
				end
			end
		end
	end
		
	always @(posedge Clk) begin
		if(!Reset)begin
			S[7] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[7] == 0)
				S[7] <= tuple[Msg_Rsv];
			else begin
				if (S[7] > (8'd255-5'd7)) begin
					S[7] <= tuple[alpha[S[7] + 5'd8] ^ Msg_Rsv];
				end
				else begin
					S[7] <= tuple[alpha[S[7] + 5'd7] ^ Msg_Rsv];
				end
			end
		end
	end		

		
	always @(posedge Clk) begin
		if(!Reset)begin
			S[8] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[8] == 0)
				S[8] <= tuple[Msg_Rsv];
			else begin
				if (S[8] > (8'd255-5'd8)) begin
					S[8] <= tuple[alpha[S[8] + 5'd9] ^ Msg_Rsv];
				end
				else begin
					S[8] <= tuple[alpha[S[8] + 5'd8] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[9] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[9] == 0)
				S[9] <= tuple[Msg_Rsv];
			else begin
				if (S[9] > (8'd255-5'd9)) begin
					S[9] <= tuple[alpha[S[9] + 5'd10] ^ Msg_Rsv];
				end
				else begin
					S[9] <= tuple[alpha[S[9] + 5'd9] ^ Msg_Rsv];
				end
			end
		end
	end
	
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[10] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[10] == 0)
				S[10] <= tuple[Msg_Rsv];
			else begin
				if (S[10] > (8'd255-5'd10)) begin
					S[10] <= tuple[alpha[S[10] + 5'd11] ^ Msg_Rsv];
				end
				else begin
					S[10] <= tuple[alpha[S[10] + 5'd10] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[11] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[11] == 0)
				S[11] <= tuple[Msg_Rsv];
			else begin
				if (S[11] > (8'd255-5'd11)) begin
					S[11] <= tuple[alpha[S[11] + 5'd12] ^ Msg_Rsv];
				end
				else begin
					S[11] <= tuple[alpha[S[11] + 5'd11] ^ Msg_Rsv];
				end
			end
		end
	end
		
			
	always @(posedge Clk) begin
		if(!Reset)begin
			S[12] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[12] == 0)
				S[12] <= tuple[Msg_Rsv];
			else begin
				if (S[12] > (8'd255-5'd12)) begin
					S[12] <= tuple[alpha[S[12] + 5'd13] ^ Msg_Rsv];
				end
				else begin
					S[12] <= tuple[alpha[S[12] + 5'd12] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[13] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[13] == 0)
				S[13] <= tuple[Msg_Rsv];
			else begin
				if (S[13] > (8'd255-5'd13)) begin
					S[13] <= tuple[alpha[S[13] + 5'd14] ^ Msg_Rsv];
				end
				else begin
					S[13] <= tuple[alpha[S[13] + 5'd13] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[14] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[14] == 0)
				S[14] <= tuple[Msg_Rsv];
			else begin
				if (S[14] > (8'd255-5'd14)) begin
					S[14] <= tuple[alpha[S[14] + 5'd15] ^ Msg_Rsv];
				end
				else begin
					S[14] <= tuple[alpha[S[14] + 5'd14] ^ Msg_Rsv];
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset)begin
			S[15] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[15] == 0)
				S[15] <= tuple[Msg_Rsv];
			else begin
				if (S[15] > (8'd255-5'd15)) begin
					S[15] <= tuple[alpha[S[15] + 5'd16] ^ Msg_Rsv];
				end
				else begin
					S[15] <= tuple[alpha[S[15] + 5'd15] ^ Msg_Rsv];
				end
			end
		end
	end
		
			
	always @(posedge Clk) begin
		if(!Reset)begin
			S[16] <= tuple[Msg_Rsv];
		end
		else begin
			if (S[16] == 0)
				S[16] <= tuple[Msg_Rsv];
			else begin
				if (S[16] > (8'd255-5'd16)) begin
					S[16] <= tuple[alpha[S[16] + 5'd17] ^ Msg_Rsv];
				end
				else begin
					S[16] <= tuple[alpha[S[16] + 5'd16] ^ Msg_Rsv];
				end
			end
		end
	end
	
	assign S1 = S[1];
	assign S2 = S[2];
	assign S3 = S[3];
	assign S4 = S[4];
	assign S5 = S[5];
	assign S6 = S[6];
	assign S7 = S[7];
	assign S8 = S[8];
	assign S9 = S[9];
	assign S10 = S[10];
	assign S11 = S[11];
	assign S12 = S[12];
	assign S13 = S[13];
	assign S14 = S[14];
	assign S15 = S[15];
	assign S16 = S[16];
	
endmodule
