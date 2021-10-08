`timescale 1ns / 1ps

module Syndrome_Calculator(Msg_Rsv, CS, Clk, Reset, 
									S_1, S_2, S_3, S_4,
									S_5, S_6, S_7, S_8,
									S_9, S_10, S_11, S_12,
									S_13, S_14, S_15, S_16);
	input CS, Clk, Reset;
	input [7:0]Msg_Rsv;
	output [7:0]S_1, S_2, S_3, S_4,
					S_5, S_6, S_7, S_8,
					S_9, S_10, S_11, S_12,
					S_13, S_14, S_15, S_16;
	
	wire CS, Clk, Reset;
	wire [7:0]Msg_Rsv;
	wire [7:0]S_1, S_2, S_3, S_4,
					S_5, S_6, S_7, S_8,
					S_9, S_10, S_11, S_12,
					S_13, S_14, S_15, S_16;
 
	 Syndrome S1 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd1),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_1)
		);
	 Syndrome S2 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd2),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_2)
		);
	 Syndrome S3 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd3),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset),  
			.S_i(S_3)
		);
		Syndrome S4 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd4),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_4)
		);
	 Syndrome S5 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd5),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_5)
		);
	 Syndrome S6 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd6),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_6)
		);
	 Syndrome S7 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd7),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_7)
		);
	 Syndrome S8 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd8),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_8)
		);
	 Syndrome S9 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd9),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_9)
		);
	 Syndrome S10 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd10),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_10)
		);
	 Syndrome S11 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd11),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_11)
		);
	 Syndrome S12 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd12),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_12)
		);
	 Syndrome S13 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd13),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_13)
		);
	 Syndrome S14 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd14),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_14)
		);
	 Syndrome S15 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd15),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_15)
		);
	 Syndrome S16 (
			.Msg_Rsv(Msg_Rsv),
			.Alpha_i(5'd16),
			.CS(CS), 
			.Clk(Clk), 
			.Reset(Reset), 
			.S_i(S_16)
		);

endmodule
