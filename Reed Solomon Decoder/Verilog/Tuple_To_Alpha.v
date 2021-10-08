module Tuple_To_Alpha(Tuple, Alpha);
	input [7:0]Tuple;
	output [7:0]Alpha;
	
	wire [7:0]Tuple;
	wire [7:0]Alpha;
	
	assign Alpha[7] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] &
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) &
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] &
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] &
		Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) &
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[0]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) |
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & 
		Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) &
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & 
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & 
		(~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) &
		(~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		(~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) &
		(~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & 
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) &
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & 
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) &
		Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) ) | (Tuple[0] & (~ Tuple[1]) & 
		Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & 
		Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] &
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] &
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[3] & Tuple[4] &
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & Tuple[6] & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[7]) | (Tuple[1] & 
		(~ Tuple[2]) & Tuple[4] & Tuple[5] & Tuple[6] ) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) &
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[2] & (~ Tuple[3]) & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[0] & Tuple[2] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & Tuple[1] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[0] & Tuple[1] & Tuple[2] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & 
		Tuple[1] & Tuple[2] & Tuple[3] & Tuple[5] & Tuple[6] & Tuple[7]);

	assign Alpha[6] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) &
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] &
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & 
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & 
		(~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) &
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) ) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[4] & (~ Tuple[5]) &
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & 
		Tuple[6] ) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) ) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & 
		Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & 
		Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) &
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & Tuple[4] &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] &
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) ) | ((~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | (Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		(Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] &
		Tuple[1] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & 
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[1] &
		Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & 
		Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) |
		(Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7]));

	assign Alpha[5] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] &
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] &
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & 
		(~ Tuple[2]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) &
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & 
		(~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & Tuple[4] & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) &
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] &
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) &
		Tuple[7]) | ((~ Tuple[0]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) &
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[4]) &
		Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) &
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & 
		Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & 
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) &
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) &
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & 
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & 
		Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) &
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & 
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] &
		(~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] &
		Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & 
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[1] &
		(~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & 
		Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[6]) &
		Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) |
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] ) | 
		(Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		(Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[2] & 
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] &
		Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] ) | (Tuple[2] & (~ Tuple[3]) & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & 
		Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] &
		Tuple[7]) | (Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] &
		Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) ) | (Tuple[1] & Tuple[2] &
		Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[2] & Tuple[3] & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] &
		Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]);

	assign Alpha[4] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) &
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) ) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & 
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) &
		Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & 
		(~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) &
		(~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) &
		Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) &
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) ) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) &
		Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & 
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] &
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & 
		Tuple[2] & (~ Tuple[3]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & 
		Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & 
		Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) &
		(~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & 
		(~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) ) | (Tuple[0] & (~ Tuple[1]) & 
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] &
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | 
		(Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] &
		(~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) &
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & 
		Tuple[4] & (~ Tuple[5]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] &
		Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & 
		Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) &
		(~ Tuple[6]) ) | ((~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & 
		Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] &
		Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		Tuple[6] & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & 
		Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[0] & Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		(Tuple[1] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[1] & 
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & Tuple[2] &
		(~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) ) | (Tuple[1] & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & 
		Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[2] & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & 
		Tuple[2] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[3] & 
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & Tuple[3] &
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] &
		Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7]));

	assign Alpha[3] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & 
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) &
		(~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & 
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & 
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & 
		Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) &
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] &
		(~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] &
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & 
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & 
		(~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		(Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) |
		((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & 
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] &
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[3] & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) &
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) ) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		Tuple[4] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) &
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & 
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] &
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & 
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[2]) & Tuple[3] & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & 
		Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[4] &
		Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) &
		Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[1] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[7])) | 
		(Tuple[1] & Tuple[2] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & Tuple[2] &
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[2] & Tuple[3] & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] & Tuple[2] & Tuple[4] & Tuple[5] & Tuple[6] & 
		Tuple[7]);

	assign Alpha[2] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & 
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] ) | ((~ Tuple[0]) & (~ Tuple[1]) & 
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] &
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & 
		Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[2]) & 
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & 
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) &
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & 
		Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & 
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) ) |
		((~ Tuple[0]) & Tuple[1] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		(~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) &
		(~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] &
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) &
		Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & 
		Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & 
		(~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] &
		(~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[5] & (~ Tuple[6]) &
		(~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & 
		Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[4] & (~ Tuple[5]) & Tuple[6] &
		Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | ((~ Tuple[1]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | 
		(Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		(Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		(Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) |
		(Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) &
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) &
		Tuple[6] & Tuple[7]) | (Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & 
		Tuple[7]) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] &
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[5]) & Tuple[6] &
		(~ Tuple[7])) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[2] & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & 
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] &
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] &
		Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & 
		Tuple[6] & Tuple[7]);
	
	assign Alpha[1] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & 
		(~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) &
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) &
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] &
		(~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[5] & 
		Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] &
		Tuple[3] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] &
		Tuple[3] & Tuple[4] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[2]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) &
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & 
		(~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) &
		(~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) &
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | 
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & (~ Tuple[7])) |
		((~ Tuple[0]) & Tuple[1] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) |
		((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) ) | 
		((~ Tuple[0]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) |
		((~ Tuple[0]) & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & 
		(~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) &
		(~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & 
		(~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) |
		((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) |
		((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[1]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		(~ Tuple[1]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[0] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) &
		Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) &
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] &
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[2]) & (~ Tuple[3]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) |
		((~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) |
		(Tuple[0] & Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] &
		(~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) &
		(~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[7]) |
		(Tuple[0] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[2] &
		(~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & 
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] &
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & 
		Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] &
		Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) |
		(Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | 
		(Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) &
		Tuple[7]) | (Tuple[1] & Tuple[2] & Tuple[3] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[1] &
		Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] &
		Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[2] & Tuple[3] & Tuple[4] & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[5] & 
		Tuple[6] & Tuple[7]);

	assign Alpha[0] = ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) &
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] &
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & (~ Tuple[1]) & 
		Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & 
		(~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & Tuple[7]) |
		((~ Tuple[0]) & (~ Tuple[1]) & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) & 
		(~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & 
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & 
		(~ Tuple[2]) & (~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & 
		(~ Tuple[2]) & Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) &
		Tuple[1] & (~ Tuple[2]) & Tuple[3] & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | 
		((~ Tuple[0]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) |
		((~ Tuple[0]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) |
		((~ Tuple[0]) & Tuple[1] & (~ Tuple[2]) & Tuple[3] & Tuple[4] & Tuple[5] & Tuple[6] & 
		(~ Tuple[7])) | ((~ Tuple[0]) & Tuple[1] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] &
		Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & Tuple[5] &
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) & (~ Tuple[5]) & 
		Tuple[6] & Tuple[7]) | ((~ Tuple[0]) & Tuple[2] & Tuple[3] & Tuple[4] & (~ Tuple[5]) &
		(~ Tuple[6]) & Tuple[7]) | ((~ Tuple[0]) & Tuple[1] & Tuple[2] & Tuple[4] & Tuple[5] &
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[5]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[3]) & Tuple[4] & 
		Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] &
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | ((~ Tuple[1]) & (~ Tuple[2]) & (~ Tuple[4]) &
		Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & (~ Tuple[2]) & Tuple[3] & Tuple[4] & 
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[1]) & (~ Tuple[3]) & (~ Tuple[4]) &
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | ((~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) & Tuple[4] & 
		(~ Tuple[5]) & Tuple[6] & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) &
		Tuple[4] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & (~ Tuple[3]) &
		Tuple[4] & Tuple[5] & Tuple[6] ) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] & (~ Tuple[4]) &
		(~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & (~ Tuple[1]) & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[1]) & Tuple[2] & Tuple[3] &
		Tuple[4] & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & (~ Tuple[3]) & 
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | ((~ Tuple[2]) & (~ Tuple[3]) &
		(~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & 
		(~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | ((~ Tuple[2]) & (~ Tuple[3]) &
		Tuple[4] & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) &
		(~ Tuple[3]) & Tuple[4] & Tuple[5] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[2]) &
		(~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & 
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[3] & 
		(~ Tuple[4]) & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & (~ Tuple[2]) &
		Tuple[3] & Tuple[4] & (~ Tuple[5]) & Tuple[7]) | (Tuple[1] & (~ Tuple[2]) & Tuple[4] & Tuple[5] & 
		(~ Tuple[6]) & Tuple[7]) | (Tuple[0] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[5]) &
		Tuple[6] & (~ Tuple[7])) | (Tuple[1] & (~ Tuple[3]) & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) & 
		(~ Tuple[7])) | (Tuple[1] & Tuple[2] & (~ Tuple[3]) & (~ Tuple[4]) & (~ Tuple[6]) & Tuple[7]) |
		(Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[5]) & Tuple[6] & (~ Tuple[7])) | 
		(Tuple[1] & Tuple[2] & (~ Tuple[3]) & Tuple[4] & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[1] & 
		(~ Tuple[3]) & Tuple[4] & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[1] & Tuple[2] & Tuple[3] &
		(~ Tuple[4]) & (~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & 
		Tuple[3] & (~ Tuple[4]) & Tuple[5] & (~ Tuple[6]) ) | (Tuple[0] & Tuple[2] & Tuple[3] & 
		(~ Tuple[4]) & Tuple[5] & Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[2] & (~ Tuple[4]) & 
		Tuple[5] & Tuple[6] & Tuple[7]) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & 
		(~ Tuple[5]) & (~ Tuple[6]) & (~ Tuple[7])) | (Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] &
		Tuple[6] & (~ Tuple[7])) | (Tuple[0] & Tuple[1] & Tuple[2] & Tuple[3] & Tuple[4] & Tuple[5] &
		Tuple[6] & Tuple[7]);

endmodule
