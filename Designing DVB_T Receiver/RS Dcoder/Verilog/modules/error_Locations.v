module error_Locations(Sigma1, Sigma2, Sigma3, Sigma4,
			  Sigma5, Sigma6, Sigma7, Sigma8,
			  Clk, Reset,
			  Location1, Location2, Location3, Location4,
			  Location5, Location6, Location7, Location8);

	input [7:0] Sigma1, Sigma2, Sigma3, Sigma4,
				   Sigma5, Sigma6, Sigma7, Sigma8;
	input Clk, Reset;
	output [7:0] Location1, Location2, Location3, Location4,
					 Location5, Location6, Location7, Location8;
	
	wire [7:0] Sigma1, Sigma2, Sigma3, Sigma4,
				  Sigma5, Sigma6, Sigma7, Sigma8;
	wire Clk, Reset;
	wire [7:0] Location1, Location2, Location3, Location4,
				  Location5, Location6, Location7, Location8;
					 
	reg[7:0] alpha [0:255];
	reg[7:0] tuple [0:255];
	initial begin
		$readmemb("alpha.txt", alpha, 0, 255);
		$readmemb("tuple.txt", tuple, 0, 255);
	end
	
	reg [11:0]ax1, ax2, ax3, ax4, ax5, ax6, ax7, ax8;
	reg [7:0]x1a, x2a, x3a, x4a, x5a, x6a, x7a, x8a;
	reg [7:0]alpha_counter;
	reg [7:0]L_array [0:7];
	reg [2:0]i;
	wire [7:0]root;
	
	reg[11:0]counter;
	always@(posedge Clk) begin
		if(!Reset)
			counter <= 0;
		else 
			counter <= counter + 1'b1;
	end
	
	
	always @(posedge Clk) begin
		if (!Reset) begin
			alpha_counter <= 8'd1;
			ax1 <= {4'b0, {Sigma1}} + 12'd1;
			ax2 <= {4'b0, {Sigma2}} + 12'd2;
			ax3 <= {4'b0, {Sigma3}} + 12'd3;
			ax4 <= {4'b0, {Sigma4}} + 12'd4;
			ax5 <= {4'b0, {Sigma5}} + 12'd5;
			ax6 <= {4'b0, {Sigma6}} + 12'd6;
			ax7 <= {4'b0, {Sigma7}} + 12'd7;
			ax8 <= {4'b0, {Sigma8}} + 12'd8;
			i <= 0;
		end
		else begin
			if (root == 0) begin
				L_array[i] <= alpha_counter;
				i <= i+3'd1;
			end
			if (alpha_counter < 8'd255)
				alpha_counter <= alpha_counter + 8'd1;
			
			ax1 <= {4'b0, {Sigma1}} + {4'b0, {alpha_counter}};
			ax2 <= {4'b0, {Sigma2}} + {3'b0, {alpha_counter}, 1'b0};
			ax3 <= {4'b0, {Sigma3}} + {3'b0, {alpha_counter}, 1'b0} + {4'b0, {alpha_counter}};
			ax4 <= {4'b0, {Sigma4}} + {2'b0, {alpha_counter}, 2'b0};
			ax5 <= {4'b0, {Sigma5}} + {2'b0, {alpha_counter}, 2'b0} + {4'b0, {alpha_counter}};
			ax6 <= {4'b0, {Sigma6}} + {2'b0, {alpha_counter}, 2'b0} + {3'b0, {alpha_counter}, 1'b0};
			ax7 <= {4'b0, {Sigma7}} + {2'b0, {alpha_counter}, 2'b0} +
					 {3'b0, {alpha_counter}, 1'b0} + {4'b0, {alpha_counter}};
			ax8 <= {4'b0, {Sigma8}} + {1'b0, {alpha_counter}, 3'b0};
		end
	end
	
	always @(ax1) begin
		if (ax1[7:0] > 8'd255-ax1[11:8])
			x1a = ax1[7:0] + ax1[11:8] + 1'b1;
		else 
			x1a = ax1[7:0] + ax1[11:8];
	end
	
	always @(ax2) begin
		if (ax2[7:0] > 8'd255-ax2[11:8])
			x2a = ax2[7:0] + ax2[11:8] + 1'b1;
		else 
			x2a = ax2[7:0] + ax2[11:8];
	end
	
	always @(ax3) begin
		if (ax3[7:0] > 8'd255-ax3[11:8])
			x3a = ax3[7:0] + ax3[11:8] + 1'b1;
		else 
			x3a = ax3[7:0] + ax3[11:8];
	end
	
	always @(ax4) begin
		if (ax4[7:0] > 8'd255-ax4[11:8])
			x4a = ax4[7:0] + ax4[11:8] + 1'b1;
		else 
			x4a = ax4[7:0] + ax4[11:8];
	end
	
	always @(ax5) begin
		if (ax5[7:0] > 8'd255-ax5[11:8])
			x5a = ax5[7:0] + ax5[11:8] + 1'b1;
		else 
			x5a = ax5[7:0] + ax5[11:8];
	end
	
	always @(ax6) begin
		if (ax6[7:0] > 8'd255-ax6[11:8])
			x6a = ax6[7:0] + ax6[11:8] + 1'b1;
		else 
			x6a = ax6[7:0] + ax6[11:8];
	end
	
	always @(ax7) begin
		if (ax7[7:0] > 8'd255-ax7[11:8])
			x7a = ax7[7:0] + ax7[11:8] + 1'b1;
		else 
			x7a = ax7[7:0] + ax7[11:8];
	end
	
	always @(ax8) begin
		if (ax8[7:0] > 8'd255-ax8[11:8])
			x8a = ax8[7:0] + ax8[11:8] + 1'b1;
		else 
			x8a = ax8[7:0] + ax8[11:8];
	end
	
	assign root = tuple[alpha[x1a] ^ alpha[x2a] ^ alpha[x3a] ^ alpha[x4a] ^
							  alpha[x5a] ^ alpha[x6a] ^ alpha[x7a] ^ alpha[x8a] ^ 8'd1];
							  
	
	assign Location1 = L_array[0];
	assign Location2 = L_array[1];
	assign Location3 = L_array[2];
	assign Location4 = L_array[3];
	assign Location5 = L_array[4];
	assign Location6 = L_array[5];
	assign Location7 = L_array[6];
	assign Location8 = L_array[7];
	
endmodule
