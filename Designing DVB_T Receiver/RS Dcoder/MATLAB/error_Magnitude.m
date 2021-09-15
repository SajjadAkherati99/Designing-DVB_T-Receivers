function [Z, Magnitudes] = error_Magnitude(alpha, Sigma, S, sigma_Root)

    Sigma = [0, Sigma];
    Z = zeros(1,9);
    
    Magnitudes = zeros(1, 9);
    
    for i = 1:9 
        x = 0;
        for k = 1:i
            if (i-k < 1)
                x = bitxor(x, alpha(Sigma(k)+2));
            else
                b = -1;
                if (Sigma(k) ~= -1 && S(i-k) ~= -1)
                    b = mod(Sigma(k)+S(i-k), 255);
                end
                x = bitxor(x, alpha(b+2));
            end
        end
        Z(i) = find(alpha == x) - 2;
    end

end