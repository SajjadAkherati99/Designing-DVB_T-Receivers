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
	reg [7:0]Sigma1, Sigma2, Sigma3, Sigma4,
			  Sigma5, Sigma6, Sigma7, Sigma8;
	
	wire [7:0]S[1:16];
	reg [7:0] sig [0:15];
	reg [7:0] sig_p[0:15];
	reg [7:0] Beta[0:15];
	reg [4:0]l;
	reg[4:0] i, u;
	reg [7:0] d;
	reg ready;
	
	parameter state0 = 2'd0, state1 = 2'd1, state2 = 2'd2, state3 = 2'd3;
	reg [1:0] current_s;
	
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
	
	
	reg [7:0] alpha[0:255];
	reg [7:0] tuple[0:255];
	initial begin
		$readmemb("alpha.txt", alpha, 0, 255);
		$readmemb("tuple.txt", tuple, 0, 255);
	end
	
	always @(posedge Clk) begin
		if(!Reset) begin
			u <= 5'd1;
			l <= 5'd0;
			i <= 0;
			current_s <= state0;
			d <= 0;
			ready <= 0;
		end
		else begin
			case(current_s)
				state0: begin
					if (sig[i] != 0 && S[u-i] != 0) begin
						if(S[u-i] > 8'd255-sig[i])
							d <= d ^ alpha[S[u-i] + sig[i] + 8'd1];
						else
							d <= d ^ alpha[S[u-i] + sig[i]];
					end
					if (i == l) begin
						current_s <= state1;
						i <= 0;
					end
					else
						i <= i + 5'd1;
				end
				
				state1: begin
					if(d != 0) begin
						sig_p[0] <= sig[0];
						
						if (Beta[0] != 0) begin
							if (Beta[0] > 8'd255 - tuple[d])
								sig_p[1] <= tuple[alpha[Beta[0] + tuple[d] + 8'd1] ^ alpha[sig[1]]];
							else
								sig_p[1] <= tuple[alpha[Beta[0] + tuple[d]] ^ alpha[sig[1]]];
						end
						else begin
							sig_p[1] <= sig[1];
						end
						
						if (Beta[1] != 0) begin
							if (Beta[1] > 8'd255 - tuple[d])
								sig_p[2] <= tuple[alpha[Beta[1] + tuple[d] + 8'd1] ^ alpha[sig[2]]];
							else
								sig_p[2] <= tuple[alpha[Beta[1] + tuple[d]] ^ alpha[sig[2]]];
						end
						else begin
							sig_p[2] <= sig[2];
						end
						
						if(Beta[2] != 0) begin
							if (Beta[2] > 8'd255 - tuple[d])
								sig_p[3] <= tuple[alpha[Beta[2] + tuple[d] + 8'd1] ^ alpha[sig[3]]];
							else
								sig_p[3] <= tuple[alpha[Beta[2] + tuple[d]] ^ alpha[sig[3]]];
						end
						else begin
							sig_p[3] <= sig[3];
						end
						
						if(Beta[3] != 0) begin
							if (Beta[3] > 8'd255 - tuple[d])
								sig_p[4] <= tuple[alpha[Beta[3] + tuple[d] + 8'd1] ^ alpha[sig[4]]];
							else
								sig_p[4] <= tuple[alpha[Beta[3] + tuple[d]] ^ alpha[sig[4]]];
						end
						else begin
							sig_p[4] <= sig[4];
						end
						
						if (Beta[4] > 0) begin
							if (Beta[4] > 8'd255 - tuple[d])
								sig_p[5] <= tuple[alpha[Beta[4] + tuple[d] + 8'd1] ^ alpha[sig[5]]];
							else
								sig_p[5] <= tuple[alpha[Beta[4] + tuple[d]] ^ alpha[sig[5]]];
						end
						else begin
							sig_p[5] <= sig[5];
						end
						
						if(Beta[5] > 0) begin
							if (Beta[5] > 8'd255 - tuple[d])
								sig_p[6] <= tuple[alpha[Beta[5] + tuple[d] + 8'd1] ^ alpha[sig[6]]];
							else
								sig_p[6] <= tuple[alpha[Beta[5] + tuple[d]] ^ alpha[sig[6]]];
						end
						else begin
							sig_p[6] <= sig[6];
						end
						
						if(Beta[6] > 0) begin
							if (Beta[6] > 8'd255 - tuple[d])
								sig_p[7] <= tuple[alpha[Beta[6] + tuple[d] + 8'd1] ^ alpha[sig[7]]];
							else
								sig_p[7] <= tuple[alpha[Beta[6] + tuple[d]] ^ alpha[sig[7]]];
						end
						else begin
							sig_p[7] <= sig[7];
						end
							
						if (Beta[7] > 0) begin
							if (Beta[7] > 8'd255 - tuple[d])
								sig_p[8] <= tuple[alpha[Beta[7] + tuple[d] + 8'd1] ^ alpha[sig[8]]];
							else
								sig_p[8] <= tuple[alpha[Beta[7] + tuple[d]] ^ alpha[sig[8]]];
						end
						else begin
							sig_p[8] <= sig[8];
						end
						
						if(Beta[8] > 0) begin
							if (Beta[8] > 8'd255 - tuple[d])
								sig_p[9] <= tuple[alpha[Beta[8] + tuple[d] + 8'd1] ^ alpha[sig[9]]];
							else
								sig_p[9] <= tuple[alpha[Beta[8] + tuple[d]] ^ alpha[sig[9]]];
						end
						else begin
							sig_p[9] <= sig[9];
						end
							
						if(Beta[9] > 0) begin
							if (Beta[9] > 8'd255 - tuple[d])
								sig_p[10] <= tuple[alpha[Beta[9] + tuple[d] + 8'd1] ^ alpha[sig[10]]];
							else
								sig_p[10] <= tuple[alpha[Beta[9] + tuple[d]] ^ alpha[sig[10]]];
						end
						else begin
							sig_p[10] <= sig[10];
						end
							
						if(Beta[10] > 0) begin 
							if (Beta[10] > 8'd255 - tuple[d])
								sig_p[11] <= tuple[alpha[Beta[10] + tuple[d] + 8'd1] ^ alpha[sig[11]]];
							else
								sig_p[11] <= tuple[alpha[Beta[10] + tuple[d]] ^ alpha[sig[11]]];
						end
						else begin
							sig_p[11] <= sig[11];
						end
							
						if(Beta[11] > 0) begin
							if (Beta[11] > 8'd255 - tuple[d])
								sig_p[12] <= tuple[alpha[Beta[11] + tuple[d] + 8'd1] ^ alpha[sig[12]]];
							else
								sig_p[12] <= tuple[alpha[Beta[11] + tuple[d]] ^ alpha[sig[12]]];
						end
						else begin
							sig_p[12] <= sig[12];
						end
							
						if(Beta[12] > 0) begin
							if (Beta[12] > 8'd255 - tuple[d])
								sig_p[13] <= tuple[alpha[Beta[12] + tuple[d] + 8'd1] ^ alpha[sig[13]]];
							else
								sig_p[13] <= tuple[alpha[Beta[12] + tuple[d]] ^ alpha[sig[13]]];
						end
						else begin
							sig_p[13] <= sig[13];
						end
							
						if (Beta[13] > 0) begin	
							if (Beta[13] > 8'd255 - tuple[d])
								sig_p[14] <= tuple[alpha[Beta[13] + tuple[d] + 8'd1] ^ alpha[sig[14]]];
							else
								sig_p[14] <= tuple[alpha[Beta[13] + tuple[d]] ^ alpha[sig[14]]];
						end
						else begin
							sig_p[14] <= sig[14];
						end
							
						if(Beta[14] > 0) begin
							if (Beta[14] > 8'd255 - tuple[d])
								sig_p[15] <= tuple[alpha[Beta[14] + tuple[d] + 8'd1] ^ alpha[sig[15]]];
							else
								sig_p[15] <= tuple[alpha[Beta[14] + tuple[d]] ^ alpha[sig[15]]];
						end
						else begin
							sig_p[15] <= sig[15];
						end
							
						if(l+l < u) begin
							l <= u-l;
							current_s <= state2;
						end
						else begin
							current_s <= state3;
						end
					end
					else begin
						if( u == 5'd16) begin
							ready <= 1;
						end
						else begin
							current_s <= state0;
							u <= u + 5'd1;
						end
					end
				end
				
				state2: begin
					if( u == 5'd16) begin
						ready <= 1;
					end
					else begin
						current_s <= state0;
						u <= u + 5'd1;
						d <= 0;
					end
				end
				state3: begin
					if( u == 5'd16) begin
						ready <= 1;
					end
					else begin
						current_s <= state0;
						u <= u + 5'd1;
						d <= 0;
					end
				end
			endcase
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset) begin
			sig[0] <= 8'd255;	sig[1] <= 0;	sig[2] <= 0;	sig[3] <= 0;
			sig[4] <= 0;		sig[5] <= 0;	sig[6] <= 0;	sig[7] <= 0;
			sig[8] <= 0;		sig[9] <= 0;	sig[10] <= 0;	sig[11] <= 0;
			sig[12] <= 0;		sig[13] <= 0;	sig[14] <= 0;	sig[15] <= 0;
		end
		else begin
			if(current_s[1]) begin
				sig[0] <= sig_p[0];		sig[1] <= sig_p[1];		sig[2] <= sig_p[2];		sig[3] <= sig_p[3];
				sig[4] <= sig_p[4];		sig[5] <= sig_p[5];		sig[6] <= sig_p[6];		sig[7] <= sig_p[7];	
				sig[8] <= sig_p[8];		sig[9] <= sig_p[9];		sig[10] <= sig_p[10];	sig[11] <= sig_p[11];	
				sig[12] <= sig_p[12];	sig[13] <= sig_p[13];	sig[14] <= sig_p[14];	sig[15] <= sig_p[15];	
			end
		end
	end
	
	always @(posedge Clk) begin
		if(!Reset) begin
			Beta[0] <= 0;	Beta[1] <= 0;	Beta[2] <= 0;	Beta[3] <= 0;
			Beta[4] <= 0;	Beta[5] <= 0;	Beta[6] <= 0;	Beta[7] <= 0;
			Beta[8] <= 0;	Beta[9] <= 0;	Beta[10] <= 0;	Beta[11] <= 0;
			Beta[12] <= 0;	Beta[13] <= 0;	Beta[14] <= 0;	Beta[15] <= 0;
		end
		else begin
			case(current_s)
				state1: begin
					if(d == 0) begin
						Beta[0] <= 0;		  	Beta[1] <= Beta[0];		Beta[2] <= Beta[1]; 	Beta[3] <= Beta[2];
						Beta[4] <= Beta[3];	  	Beta[5] <= Beta[4];		Beta[6] <= Beta[5];		Beta[7] <= Beta[6];
						Beta[8] <= Beta[7];		Beta[9] <= Beta[8];		Beta[10] <= Beta[9];	Beta[11] <= Beta[10];
						Beta[12] <= Beta[11];	Beta[13] <= Beta[12];	Beta[14] <= Beta[13];	Beta[15] <= Beta[14];
 					end
				end
				
				state2: begin
					if (sig[0] == 0)
						Beta[0] <= 0;
					else begin
						if(sig[0] >= tuple[d])
							Beta[0] <= sig[0] - tuple[d] ;
						else
							Beta[0] <= sig[0] + (~tuple[d]);
					end
					
					if (sig[1] == 0)
						Beta[1] <= 0;
					else begin
						if(sig[1] >= tuple[d])
							Beta[1] <= sig[1] - tuple[d] ;
						else
							Beta[1] <= sig[1] + (~tuple[d]);
					end
					
					if (sig[2] == 0)
						Beta[2] <= 0;
					else begin
						if(sig[2] >= tuple[d])
							Beta[2] <= sig[2] - tuple[d] ;
						else
							Beta[2] <= sig[2] + (~tuple[d]);
					end
					
					if (sig[3] == 0)
						Beta[3] <= 0;
					else begin
						if(sig[3] >= tuple[d])
							Beta[3] <= sig[3] - tuple[d] ;
						else
							Beta[3] <= sig[3] + (~tuple[d]);
					end
					
					if (sig[4] == 0)
						Beta[4] <= 0;
					else begin
						if(sig[4] >= tuple[d])
							Beta[4] <= sig[4] - tuple[d] ;
						else
							Beta[4] <= sig[4] + (~tuple[d]);
					end
					
					if (sig[5] == 0)
						Beta[5] <= 0;
					else begin
						if(sig[5] >= tuple[d])
							Beta[5] <= sig[5] - tuple[d] ;
						else
							Beta[5] <= sig[5] + (~tuple[d]);
					end
					
					if (sig[6] == 0)
						Beta[6] <= 0;
					else begin
						if(sig[6] >= tuple[d])
							Beta[6] <= sig[6] - tuple[d] ;
						else
							Beta[6] <= sig[6] + (~tuple[d]);
					end
					
					if (sig[7] == 0)
						Beta[7] <= 0;
					else begin
						if(sig[7] >= tuple[d])
							Beta[7] <= sig[7] - tuple[d] ;
						else
							Beta[7] <= sig[7] + (~tuple[d]);
					end
					
					if (sig[8] == 0)
						Beta[8] <= 0;
					else begin
						if(sig[8] >= tuple[d])
							Beta[8] <= sig[8] - tuple[d] ;
						else
							Beta[8] <= sig[8] + (~tuple[d]);
					end
					
					if (sig[9] == 0)
						Beta[9] <= 0;
					else begin
						if(sig[9] >= tuple[d])
							Beta[9] <= sig[9] - tuple[d] ;
						else
							Beta[9] <= sig[9] + (~tuple[d]);
					end
					
					if (sig[10] == 0)
						Beta[10] <= 0;
					else begin
						if(sig[10] >= tuple[d])
							Beta[10] <= sig[10] - tuple[d] ;
						else
							Beta[10] <= sig[10] + (~tuple[d]);
					end
					
					if (sig[11] == 0)
						Beta[11] <= 0;
					else begin
						if(sig[11] >= tuple[d])
							Beta[11] <= sig[11] - tuple[d] ;
						else
							Beta[11] <= sig[11] + (~tuple[d]);
					end
					
					if (sig[12] == 0)
						Beta[12] <= 0;
					else begin
						if(sig[12] >= tuple[d])
							Beta[12] <= sig[12] - tuple[d] ;
						else
							Beta[12] <= sig[12] + (~tuple[d]);
					end
					
					if (sig[13] == 0)
						Beta[13] <= 0;
					else begin
						if(sig[13] >= tuple[d])
							Beta[13] <= sig[13] - tuple[d] ;
						else
							Beta[13] <= sig[13] + (~tuple[d]);
					end
					
					if (sig[14] == 0)
						Beta[14] <= 0;
					else begin
						if(sig[14] >= tuple[d])
							Beta[14] <= sig[14] - tuple[d] ;
						else
							Beta[14] <= sig[14] + (~tuple[d]);
					end
					
					if (sig[15] == 0)
						Beta[15] <= 0;
					else begin
						if(sig[15] >= tuple[d])
							Beta[15] <= sig[15] - tuple[d] ;
						else
							Beta[15] <= sig[15] + (~tuple[d]);
					end
				end
				
				state3: begin
					Beta[0] <= 0;		  	Beta[1] <= Beta[0];		Beta[2] <= Beta[1]; 	Beta[3] <= Beta[2];
					Beta[4] <= Beta[3];	  	Beta[5] <= Beta[4];		Beta[6] <= Beta[5];		Beta[7] <= Beta[6];
					Beta[8] <= Beta[7];		Beta[9] <= Beta[8];		Beta[10] <= Beta[9];	Beta[11] <= Beta[10];
					Beta[12] <= Beta[11];	Beta[13] <= Beta[12];	Beta[14] <= Beta[13];	Beta[15] <= Beta[14];
				end
			endcase
		end
	end
	
	always @(posedge Clk) begin
		if(ready) begin
			Sigma1 <= sig[1];		Sigma2 <= sig[2];		Sigma3 <= sig[3];		Sigma4 <= sig[4];
			Sigma5 <= sig[5];		Sigma6 <= sig[6];		Sigma7 <= sig[7];		Sigma8 <= sig[8];
		end
	end
	
endmodule
