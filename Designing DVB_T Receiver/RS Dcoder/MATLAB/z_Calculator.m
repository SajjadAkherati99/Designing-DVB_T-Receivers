function [z] = z_Calculator(Sigma, S, alpha)
	z = zeros(1, length(Sigma));
	for i = 1:length(Sigma)
		x = 0;
		for k = 1:i
			if (i-k < 1)
				x = bitxor(x, alpha(Sigma(k)+2));
			else
				y = Sigma(k)+S(i-k);
				y = mod(y, 255);
				x = bitxor(x, alpha(y+2));
			end
		end
		z(i) = find(alpha == x) - 2;
	end
end
