function [err_Mag] = error_Magnitude_BMP(error_locations, z, alpha)
	beta = 256 - error_locations;
    %beta = error_locations-1;
	err_Mag = zeros(1, length(error_locations));
	num = zeros(1, length(error_locations));
	denum = zeros(1, length(error_locations));
	
	for i = 1:length(error_locations) 
		x = alpha(z(1)+2);
		for k = 2:length(z)
			y = z(k) + beta(i)*(k-1);
			y = mod(y, 255);
			x = bitxor(x, alpha(y+2));
		end
		num(i) = find(alpha == x) - 2;
	end
	
    for i = 1:length(error_locations) 
        for j = 1:length(error_locations)
            if (i ~= j)
                x = beta(i) - beta(j);
                if (x < 0)
                    x = x+255;
                end
                y = bitxor(1, alpha(x+2));
                y = find(alpha == y) - 2;
                denum(i) = denum(i) + y;
                denum(i) = mod(denum(i), 255);
            end
        end
    end
    
    for i = 1:length(error_locations)
        err_Mag(i) = num(i) - denum(i);
        if (err_Mag(i) < 0)
            err_Mag(i) = err_Mag(i) + 255;
        end
    end
end
