module Error_Locator_Calculator(S1, S2, S3, S4,
										  S5, S6, S7, S8,
										  S9, S10, S11, S12,
										  S13, S14, S15, S16,
											Clk, Reset,
										  Sigma1, Sigma2, Sigma3, Sigma4,
										  Sigma5, Sigma6, Sigma7, Sigma8);
	input [7:0]S1, S2, S3, S4,
				  S5, S6, S7, S8,
				  S9, S10, S11, S12,
				  S13, S14, S15, S16;
	input Clk, Reset;
	output [7:0]Sigma1, Sigma2, Sigma3, Sigma4,
				   Sigma5, Sigma6, Sigma7, Sigma8;
	
	wire [7:0] S1, S2, S3, S4,
				  S5, S6, S7, S8,
				  S9, S10, S11, S12,
				  S13, S14, S15, S16;
	wire Clk, Reset;
	wire [7:0]Sigma1, Sigma2, Sigma3, Sigma4,
				 Sigma5, Sigma6, Sigma7, Sigma8;
	
	
	integer i;
	wire [7:0]S[1:16];
	reg [7:0] sig [1:16];
	reg [7:0] sig_p[1:16];
	reg [7:0] Beta[1:16];
	reg [4:0]l;
	reg[4:0] counter_i, counter_u;
	
	reg [7:0]alpha, alpha1, tuple;
	wire [7:0]alpha_tuple, alpha_tuple1, tuple_alpha;
	reg C, C1;
	reg ready;
	
	reg [7:0]d, d_alpha;
	
	reg[3:0]current_State, next_State;
	
	parameter s0 = 4'd0, s1 = 4'd1, s2 = 4'd2, s3 = 4'd3, s4 = 4'd4, s5 = 4'd5, s6 = 4'd6,
				 s7 = 4'd7, s8 = 4'd8, s9 = 4'd9, s10 = 4'd10, s11 = 4'd11, s12 = 5'd12, s13 = 5'd13; 
	
	
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
	
	
	Alpha_To_Tuple stage0(alpha, alpha_tuple);
	Alpha_To_Tuple stage1(alpha1, alpha_tuple1);
	Tuple_To_Alpha stage3(tuple, tuple_alpha);
	
	reg [7:0]counter;
	always @(posedge Clk) begin
		if(!Reset)
			counter <= 0;
		else
			counter <= counter + 1'b1;
	end
	
	always @(posedge Clk) begin
		if(!Reset) begin
			current_State <= s0;
			counter_u <= 0;
			l <= 5'd0;
			ready <= 0;
		end
		else begin
			case(current_State)
				s0: begin
					d <= 0;
					counter_i <= 0;
					if (counter_u == 5'd16) begin
						ready <= 1;
					end
					else begin
						ready <= 0;
						counter_u <= counter_u + 1'b1;
						current_State <= s1;
					end
				end
				
				s1: begin
					if(counter_i > 0)
						d <= d ^ alpha_tuple;
					if (counter_i == l) begin
						counter_i <= 0;
						current_State <= s2;
					end
					else begin
						counter_i <= counter_i + 1'b1;
					end
					if ((sig[counter_i+1] != 0) && (S[counter_u-counter_i] != 0)) begin
						if(sig[counter_i+1] > 8'd255 - S[counter_u-counter_i])
							alpha <= sig[counter_i+1] + S[counter_u-counter_i] + 1'b1;
						else 
							alpha <= sig[counter_i+1] + S[counter_u-counter_i]; 
					end
					else begin
						alpha <= 0;
					end
				end
				
				s2: begin
					tuple <= d ^ alpha_tuple;
					current_State <= s3;
				end
				
				s3: begin
					if (d_alpha == 0)
						current_State <= s4;
					else begin
						current_State <= s5;
					end
				end
				
				s4: begin
					current_State <= s0;
				end
				
				s5: begin
					counter_i <= 5'd1;
					current_State <= s6;
				end
				
				s6: begin
					counter_i <= counter_i + 5'd1;
					if(counter_i == 5'd1) begin
						sig_p[counter_i] <= sig[counter_i];
					end
					else begin
						if(Beta[counter_i-1'b1] != 0) begin 
							if (Beta[counter_i-1'b1] > 8'd255-d_alpha) begin
								alpha <= Beta[counter_i-1'b1] + d_alpha + 1'b1;
							end
							else begin
								alpha <= Beta[counter_i-1'b1] + d_alpha;
							end
							alpha1 <= sig[counter_i];
							current_State <= s12;
						end
						else begin
							sig_p[counter_i] <= sig[counter_i];
							if (counter_i == 5'd16)
								current_State <= s7;
						end
					end
				end
				
				s12: begin
					tuple <= alpha_tuple ^ alpha_tuple1;
					current_State <= s13;
				end
				
				s13: begin
					sig_p[counter_i-1'b1] <= tuple_alpha;
					if (counter_i == 5'd17)	
						current_State <= s7;
					else
						current_State <= s6;
				end
				
				s7: begin
					if ({{l[3:0]},{1'b0}} < counter_u) begin
						current_State <= s9;
					end
					else begin
						current_State <= s8;
					end
				end
				
				s8: begin
					current_State <= s11;
				end
				
				s9: begin
					current_State <= s10;
				end
				
				s10: begin
					l <= counter_u - l;
					current_State <= s11;
				end
				
				s11: begin
					current_State <= s0;
				end
				
				default: begin
					current_State <= s0;
				end
			endcase
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset) begin
			sig[1] <= 8'd255; sig[2] <= 0; sig[3] <= 0; sig[4]  <= 0;
			sig[5] <= 0; sig[6] <= 0; sig[7] <= 0; sig[8] <= 0;
			sig[9] <= 0; sig[10] <= 0; sig[11] <= 0; sig[12] <= 0;
			sig[13] <= 0; sig[14] <= 0; sig[15] <= 0; sig[16] <= 0;
			
			Beta[1] <= 0;	Beta[2] <= 0; 	Beta[3] <= 0; 	Beta[4] <= 0;
			Beta[5] <= 0;	Beta[6] <= 0; 	Beta[7] <= 0; 	Beta[8] <= 0;
			Beta[9] <= 0; 	Beta[10] <= 0; Beta[11] <= 0; Beta[12] <= 0;
			Beta[13] <= 0; Beta[14] <= 0; Beta[15] <= 0; Beta[16] <= 0;
		end
		
		if (current_State == s4 || current_State == s8)begin
			Beta[1] <= 0;		
			Beta[2] <= Beta[1]; 	Beta[3] <= Beta[2]; 	Beta[4] <= Beta[3];
			Beta[5] <= Beta[4]; 	Beta[6] <= Beta[5]; 	Beta[7] <= Beta[6]; 	
			Beta[8] <= Beta[7];	Beta[9] <= Beta[8]; 	
			Beta[10] <= Beta[9]; 		
			Beta[11] <= Beta[10]; 	Beta[12] <= Beta[11];		Beta[13] <= Beta[12];
			Beta[14] <= Beta[13]; 	Beta[15] <= Beta[14]; 	Beta[16] <= Beta[15];
		end
		
		if(current_State == s9) begin
			if(sig[1] == 0)begin
				Beta[1] <= 0;
			end
			else begin
				if (sig[1] > 8'd255 - (~d_alpha)) begin
					Beta[1] <=	sig[1] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[1] <=	sig[1] + (~d_alpha);
				end
			end
			
			if(sig[2] == 0)begin
				Beta[2] <= 0;
			end
			else begin
				if (sig[2] > 8'd255 - (~d_alpha)) begin
					Beta[2] <=	sig[2] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[2] <=	sig[2] + (~d_alpha);
				end
			end
			
			if(sig[3] == 0)begin
				Beta[3] <= 0;
			end
			else begin
				if (sig[3] > 8'd255 - (~d_alpha)) begin
					Beta[3] <=	sig[3] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[3] <=	sig[3] + (~d_alpha);
				end
			end
			
			if(sig[4] == 0)begin
				Beta[4] <= 0;
			end
			else begin
				if (sig[4] > 8'd255 - (~d_alpha)) begin
					Beta[4] <=	sig[4] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[4] <=	sig[4] + (~d_alpha);
				end
			end
			
			if(sig[5] == 0)begin
				Beta[5] <= 0;
			end
			else begin
				if (sig[5] > 8'd255 - (~d_alpha)) begin
					Beta[5] <=	sig[5] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[5] <=	sig[5] + (~d_alpha);
				end
			end
			
			if(sig[6] == 0)begin
				Beta[6] <= 0;
			end
			else begin
				if (sig[6] > 8'd255 - (~d_alpha)) begin
					Beta[6] <=	sig[6] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[6] <=	sig[6] + (~d_alpha);
				end
			end
			
			if(sig[7] == 0)begin
				Beta[7] <= 0;
			end
			else begin
				if (sig[7] > 8'd255 - (~d_alpha)) begin
					Beta[7] <=	sig[7] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[7] <=	sig[7] + (~d_alpha);
				end
			end
			
			if(sig[8] == 0)begin
				Beta[8] <= 0;
			end
			else begin
				if (sig[8] > 8'd255 - (~d_alpha)) begin
					Beta[8] <=	sig[8] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[8] <=	sig[8] + (~d_alpha);
				end
			end
			
			if(sig[9] == 0)begin
				Beta[9] <= 0;
			end
			else begin
				if (sig[9] > 8'd255 - (~d_alpha)) begin
					Beta[9] <=	sig[9] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[9] <=	sig[9] + (~d_alpha);
				end
			end
			
			if(sig[10] == 0)begin
				Beta[10] <= 0;
			end
			else begin
				if (sig[10] > 8'd255 - (~d_alpha)) begin
					Beta[10] <=	sig[10] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[10] <=	sig[10] + (~d_alpha);
				end
			end
			
			if(sig[11] == 0)begin
				Beta[11] <= 0;
			end
			else begin
				if (sig[11] > 8'd255 - (~d_alpha)) begin
					Beta[11] <=	sig[11] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[11] <=	sig[11] + (~d_alpha);
				end
			end
			
			if(sig[12] == 0)begin
				Beta[12] <= 0;
			end
			else begin
				if (sig[12] > 8'd255 - (~d_alpha)) begin
					Beta[12] <=	sig[12] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[12] <=	sig[12] + (~d_alpha);
				end
			end
			
			if(sig[13] == 0)begin
				Beta[13] <= 0;
			end
			else begin
				if (sig[13] > 8'd255 - (~d_alpha)) begin
					Beta[13] <=	sig[13] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[13] <=	sig[13] + (~d_alpha);
				end
			end
			
			if(sig[14] == 0)begin
				Beta[14] <= 0;
			end
			else begin
				if (sig[14] > 8'd255 - (~d_alpha)) begin
					Beta[14] <=	sig[14] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[14] <=	sig[14] + (~d_alpha);
				end
			end
			
			if(sig[15] == 0)begin
				Beta[15] <= 0;
			end
			else begin
				if (sig[15] > 8'd255 - (~d_alpha)) begin
					Beta[15] <=	sig[15] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[15] <=	sig[15] + (~d_alpha);
				end
			end
			
			if(sig[16] == 0)begin
				Beta[16] <= 0;
			end
			else begin
				if (sig[16] > 8'd255 - (~d_alpha)) begin
					Beta[16] <=	sig[16] + (~d_alpha) + 1'b1;
				end
				else begin
					Beta[16] <=	sig[16] + (~d_alpha);
				end
			end
			
		end
		
		if(current_State == s11) begin
			sig[1] <= sig_p[1];	sig[2] <= sig_p[2];	sig[3] <= sig_p[3];	sig[4] <= sig_p[4];
			sig[5] <= sig_p[5];	sig[6] <= sig_p[6];	sig[7] <= sig_p[7];	sig[8] <= sig_p[8];
			sig[9] <= sig_p[9];	sig[10] <= sig_p[10];	sig[11] <= sig_p[11];	sig[12] <= sig_p[12];
			sig[13] <= sig_p[13];	sig[14] <= sig_p[14];	sig[15] <= sig_p[15];	sig[16] <= sig_p[16];
		end
		
	end
	
	always @(current_State, tuple_alpha) begin
		if(current_State == s3) begin
			d_alpha = tuple_alpha;
		end
		else begin
			d_alpha = d_alpha;
		end
	end
	
	assign Sigma1 = (ready == 1)? sig[2]:8'bz;
	assign Sigma2 = (ready == 1)? sig[3]:8'bz;
	assign Sigma3 = (ready == 1)? sig[4]:8'bz;
	assign Sigma4 = (ready == 1)? sig[5]:8'bz;
	assign Sigma5 = (ready == 1)? sig[6]:8'bz;
	assign Sigma6 = (ready == 1)? sig[7]:8'bz;
	assign Sigma7 = (ready == 1)? sig[8]:8'bz;
	assign Sigma8 = (ready == 1)? sig[9]:8'bz;
	
	
endmodule
