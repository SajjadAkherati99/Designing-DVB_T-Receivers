module error_Magnitude(el1, el2, el3, el4, el5, el6, el7, el8,
							  Clk, start,
							  zed1, zed2, zed3, zed4, zed5, zed6, zed7, zed8,
							  em1, em2, em3, em4, em5, em6, em7, em8);
							  
	input [7:0] el1, el2, el3, el4, el5, el6, el7, el8;
	input Clk, start;
	input [7:0]zed1, zed2, zed3, zed4, zed5, zed6, zed7, zed8;
	output [7:0]em1, em2, em3, em4, em5, em6, em7, em8;

	wire [7:0] el1, el2, el3, el4, el5, el6, el7, el8;
	wire Clk, start;
	wire [7:0]zed1, zed2, zed3, zed4, zed5, zed6, zed7, zed8;
	wire [7:0]em1, em2, em3, em4, em5, em6, em7, em8;
	
	wire [7:0]zed[1:9];
	wire [7:0]el[1:8];
	reg [3:0]i;
	reg [3:0]j;
	reg ready;
	reg [7:0]num[1:8];
	reg [7:0]denum[1:8];
	
	reg [7:0] alpha[0:255];
	reg [7:0] tuple[0:255];
	initial begin
		$readmemb("alpha.txt", alpha, 0, 255);
		$readmemb("tuple.txt", tuple, 0, 255);
	end

	assign zed[1] = 8'd255;	
	assign zed[2] = zed1;
	assign zed[3] = zed2;
	assign zed[4] = zed3;
	assign zed[5] = zed4;
	assign zed[6] = zed5;
	assign zed[7] = zed6;
	assign zed[8] = zed7;
	assign zed[9] = zed8;
	
	assign el[1] = el1;
	assign el[2] = el2;
	assign el[3] = el3;
	assign el[4] = el4;
	assign el[5] = el5;
	assign el[6] = el6;
	assign el[7] = el7;
	assign el[8] = el8;
	
	reg [11:0]counter;
	always @(posedge Clk) begin
		if(!start)
			counter <= 0;
		else
			counter <= counter + 1'b1;
	end
	
	always @(posedge Clk) begin
		if(!start) begin
			ready <= 0;
			i <= 4'd1;
			j <= 4'd1;
		end
		else begin
			if (i <= 4'd7)
				i <= i + 4'd1;
			else begin
				if (j < 4'd8) begin
					i <= 4'd1;
					j <= j + 4'd1;
				end
				else begin
					ready <= 1'b1;
				end
			end
		end
	end
	
	always @(posedge Clk) begin
		if (!start) begin
			denum[1] <= 8'd255;	denum[2] <= 8'd255;	denum[3] <= 8'd255;	denum[4] <= 8'd255;
			denum[5] <= 8'd255;	denum[6] <= 8'd255;	denum[7] <= 8'd255;	denum[8] <= 8'd255;
			
			num[1] <= zed[9];	num[2] <= zed[9];
			num[3] <= zed[9];	num[4] <= zed[9];
			num[5] <= zed[9];	num[6] <= zed[9];
			num[7] <= zed[9];	num[8] <= zed[9];

		end
		else begin
			if(i != j) begin 
				if (el[j] > el[i]) begin
					if (denum[j] > (8'd255 - tuple[alpha[el[j]-el[i]]^8'd1]))
						denum[j] <= denum[j] + tuple[alpha[el[j]-el[i]]^8'd1] + 1'b1;
					else
						denum[j] <= denum[j] + tuple[alpha[el[j]-el[i]]^8'd1];
				end
				else begin
					if (denum[j] > (8'd255 - tuple[alpha[(8'd255-(el[i]-el[j]))]^8'd1]))
						denum[j] <= denum[j] + tuple[alpha[(8'd255-(el[i]-el[j]))]^8'd1] + 1'b1;
					else
						denum[j] <= denum[j] + tuple[alpha[(8'd255-(el[i]-el[j]))]^8'd1];
				end
			end
			if (!ready) begin
				if (el[j] > (8'd255-num[j]))
					num[j] <= tuple[alpha[zed[4'd9-i]] ^ alpha[el[j]+num[j]+1'b1]];
				else
					num[j] <= tuple[alpha[zed[4'd9-i]] ^ alpha[el[j]+num[j]]];
			end
		end
	end
	
	
	assign em1 = (num[1] > denum[1]) ? alpha[(num[1]-denum[1])]: alpha[(~denum[1]+num[1])];
	assign em2 = (num[2] > denum[2]) ? alpha[(num[2]-denum[2])]: alpha[(~denum[2]+num[2])];
	assign em3 = (num[3] > denum[3]) ? alpha[(num[3]-denum[3])]: alpha[(~denum[3]+num[3])];
	assign em4 = (num[4] > denum[4]) ? alpha[(num[4]-denum[4])]: alpha[(~denum[4]+num[4])];
	assign em5 = (num[5] > denum[5]) ? alpha[(num[5]-denum[5])]: alpha[(~denum[5]+num[5])];
	assign em6 = (num[6] > denum[6]) ? alpha[(num[6]-denum[6])]: alpha[(~denum[6]+num[6])];
	assign em7 = (num[7] > denum[7]) ? alpha[(num[7]-denum[7])]: alpha[(~denum[7]+num[7])];
	assign em8 = (num[8] > denum[8]) ? alpha[(num[8]-denum[8])]: alpha[(~denum[8]+num[8])];
	
endmodule
