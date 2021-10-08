module Alpha_To_Tuple (Alpha, Tuple);
	input [7:0]Alpha;
	output [7:0]Tuple;
	
	wire [7:0]Alpha;
	wire [7:0]Tuple;
	
	assign Tuple[0] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4])
		& Alpha[3] & Alpha[2] & (~ Alpha[0]))| 
		((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[0]) | 
		((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | 
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & 
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) &
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		Alpha[3] & (~ Alpha[2]) & Alpha[1] ) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		Alpha[3] & Alpha[2] & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2])
		& (~ Alpha[1]) & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & 
		Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) |
		((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) &
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		((~ Alpha[6]) & (~ Alpha[5]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[2] & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) &
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] ) |
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[6]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) &
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[6]) & Alpha[5] & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) |
		(Alpha[7] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) ) |
		(Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) |
		(Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[0]) |
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | 
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] ) |
		(Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		(Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[6] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] ) | 
		(Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[5] & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]);

	assign Tuple[1] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] &
		Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) &
		Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & 
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] &
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[2]) &
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) &
		Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] &
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[0]) | ((~ Alpha[7]) & Alpha[5] & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & 
		Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] &
		(~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & 
		(~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & 
		(~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		Alpha[2] & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & 
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] &
		(~ Alpha[4]) & (~ Alpha[3]) & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & 
		Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] &
		(~ Alpha[6]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) &
		Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] &
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] &
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] &
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] &
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) &
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] &
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] &
		(~ Alpha[0])) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & 
		Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) &
		Alpha[0]) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & 
		Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] &
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[6] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[6] &
		Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & Alpha[3] &
		(~ Alpha[1]) & Alpha[0]) | (Alpha[5] & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0]));

	assign Tuple[2] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) &
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] &
		(~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) &
		(~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] &
		Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) &
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) &
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) &
		(~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) &
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) &
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[3]) & (~ Alpha[2]) &
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & 
		Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] &
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] &
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[5] & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[5] &
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) &
		Alpha[6] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & Alpha[5] & Alpha[4] & Alpha[3] & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] &
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & 
		Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[0]) | 
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] &
		Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[5]) & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[5]) & 
		(~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & 
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & 
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & 
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & 
		Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] &
		(~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & 
		Alpha[1] & Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & 
		Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[6] & Alpha[5] & Alpha[4] &
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & Alpha[4] & 
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & Alpha[5] & Alpha[4] &
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & Alpha[4] & 
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[5] & 
		Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[5] & Alpha[4] & Alpha[3] & 
		Alpha[2] & Alpha[1] & (~ Alpha[0]));

	assign Tuple[3] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & 
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[3]) & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[4] &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & 
		Alpha[4] & Alpha[3] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[5]) & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) &
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & 
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & 
		Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) &
		(~ Alpha[0])) | ((~ Alpha[7]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) &
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & 
		Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) &
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) ) | (Alpha[7] & (~ Alpha[6]) & 
		(~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) &
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & 
		(~ Alpha[5]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & 
		Alpha[4] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) &
		(~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] ) | ((~ Alpha[6]) & (~ Alpha[4]) & Alpha[3] &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & Alpha[4] & 
		Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & 
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[2] & (~ Alpha[1]) ) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[2]) & 
		Alpha[1] & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) &
		Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[0]) | 
		(Alpha[6] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & 
		Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & Alpha[5] & 
		Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & 
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & Alpha[5] & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[4] & Alpha[2] & Alpha[1] & (~ Alpha[0]));

	assign Tuple[4] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) &
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & 
		Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & (~ Alpha[0])) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & Alpha[1] & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & 
		Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & (~ Alpha[3]) & 
		Alpha[2] & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & 
		(~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & 
		Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) &
		Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0]))
		| (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] &
		(~ Alpha[6]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] &
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | 
		((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		((~ Alpha[6]) & Alpha[5] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & 
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) ) | (Alpha[7] & Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & 
		Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & 
		Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & 
		Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[1] & 
		Alpha[0]) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & 
		Alpha[0]) | (Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[6] & 
		Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] &
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] ) | (Alpha[5] & Alpha[4] & (~ Alpha[3]) & 
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) ) | (Alpha[7] & Alpha[6] & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]);

	assign Tuple[5] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) &
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		(~ Alpha[3]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] &
		(~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[2] & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & 
		Alpha[4] & Alpha[3] & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[4] & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[3] & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[3]) & 
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & 
		Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & 
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & Alpha[3] & Alpha[2] &
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[2] & 
		Alpha[1] & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & 
		(~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] ) |
		(Alpha[7] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] &
		Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] &
		Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & 
		Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & 
		(~ Alpha[0])) | (Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[6] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[6] & Alpha[4] &
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & (~ Alpha[3]) &
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) &
		Alpha[0]) | (Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] &
		Alpha[6] & Alpha[5] & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0]));



	assign Tuple[6] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) &
		(~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & 
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) |
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & 
		Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) ) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & 
		Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & 
		Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) &
		Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) &
		Alpha[6] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[4] &
		Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[3] & Alpha[2] &
		Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & 
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & (~ Alpha[5]) &
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & 
		Alpha[4] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & 
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) ) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[4]) & Alpha[3] &
		Alpha[2] & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & (~ Alpha[3]) & 
		(~ Alpha[2]) & Alpha[1] & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & Alpha[3] & Alpha[2] & (~ Alpha[1]) &
		Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[2] & Alpha[1] & Alpha[0]) |
		(Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] ) | (Alpha[7] &
		Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & 
		(~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[6] & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[5]) &
		Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[5]) & Alpha[4] &
		Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) &
		Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) ) | (Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]) | (Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & 
		(~ Alpha[0])) | (Alpha[7] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & 
		Alpha[0]) | (Alpha[6] & Alpha[5] & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[6] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) ) | (Alpha[5] & Alpha[4] & (~ Alpha[3]) & 
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] ) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]);




	assign Tuple[7] = ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) &
		Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & 
		Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & (~ Alpha[6]) & 
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) &
		(~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) &
		(~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & Alpha[0]) |
		((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		(~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & (~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & 
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) &
		(~ Alpha[3]) & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & 
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] &
		(~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) &
		Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		((~ Alpha[7]) & Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & 
		Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) &
		(~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & (~ Alpha[4]) & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[5] & (~ Alpha[4]) & 
		Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & (~ Alpha[3]) &
		(~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[6] & Alpha[4] & Alpha[3] &
		(~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[7]) & Alpha[4] & Alpha[3] & Alpha[2] &
		Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & 
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] &
		Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & Alpha[4] &
		(~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | ((~ Alpha[6]) & (~ Alpha[5]) &
		(~ Alpha[3]) & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) & 
		Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) & (~ Alpha[5]) &
		Alpha[4] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & (~ Alpha[4]) & 
		(~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & Alpha[5] &
		(~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) &
		(~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) &
		Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | ((~ Alpha[6]) & Alpha[5] & 
		(~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & (~ Alpha[6]) & 
		Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & Alpha[1] & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) &
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | ((~ Alpha[6]) & Alpha[5] &
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & (~ Alpha[6]) &
		Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & 
		(~ Alpha[6]) & Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | 
		((~ Alpha[6]) & Alpha[5] & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[7] & 
		(~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) |
		(Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & 
		Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[2] & 
		(~ Alpha[1]) & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & (~ Alpha[4]) & Alpha[3] & Alpha[2] & 
		Alpha[1] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & 
		Alpha[1] & Alpha[0]) | (Alpha[7] & Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[3]) & Alpha[2] &
		Alpha[1] & Alpha[0]) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & (~ Alpha[2]) & 
		(~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & (~ Alpha[5]) & Alpha[4] & (~ Alpha[2]) & (~ Alpha[1]) &
		Alpha[0]) | (Alpha[7] & (~ Alpha[5]) & Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[0])) |
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[2] & Alpha[1] & (~ Alpha[0])) |
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & (~ Alpha[3]) & Alpha[1] & Alpha[0]) | (Alpha[7] & 
		Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & 
		Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & (~ Alpha[1]) & Alpha[0]) | 
		(Alpha[7] & Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | 
		(Alpha[7] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | 
		(Alpha[6] & Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | 
		(Alpha[5] & (~ Alpha[4]) & Alpha[3] & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[7] & Alpha[5] & 
		Alpha[4] & (~ Alpha[3]) & (~ Alpha[2]) & Alpha[1] & (~ Alpha[0])) | (Alpha[6] & Alpha[5] & 
		Alpha[4] & (~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[6] & Alpha[4] & 
		(~ Alpha[3]) & Alpha[2] & (~ Alpha[1]) & Alpha[0]) | (Alpha[6] & Alpha[4] & (~ Alpha[3]) & 
		Alpha[2] & Alpha[1] & (~ Alpha[0])) | (Alpha[5] & Alpha[4] & (~ Alpha[3]) & Alpha[2] & Alpha[1] & 
		Alpha[0]) | (Alpha[5] & Alpha[4] & Alpha[3] & (~ Alpha[2]) & Alpha[1] & Alpha[0]) | (Alpha[5] &
		Alpha[4] & Alpha[3] & Alpha[2] & (~ Alpha[1]) & (~ Alpha[0])) | (Alpha[7] & Alpha[6] & Alpha[5] &
		Alpha[4] & Alpha[3] & Alpha[2] & Alpha[1] & (~ Alpha[0]));
	
	endmodule
