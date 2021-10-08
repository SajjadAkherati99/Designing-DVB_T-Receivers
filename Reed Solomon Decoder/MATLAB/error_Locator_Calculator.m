function [Error_Locator, l_degree] = error_Locator_Calculator(alpha, S)
    sigma = [0, zeros(1,15)-1];
    l = 0;
    Beta = zeros(1,16)-1;
    
    for u = 1:16
        d = 0;
        for i = 0:l
            if (sigma(i+1)~=-1 && S(u-i)~=-1)   
                x = sigma(i+1)+S(u-i);
                x = mod(x, 255);
                d = bitxor(d,alpha(x+2));
            end
        end
        d = find(alpha == d) - 2;
        if(d == -1)
            Beta = [-1, Beta(1:15)];
        else
            sigma_p = zeros(1,16);
            sigma_p(1) = -1;
            for i = 2:16
                if(Beta(i-1) ~= -1)
                    sigma_p(i) = mod(Beta(i-1)+d,255);
                else
                    sigma_p(i) = -1;
                end
            end
            for i = 1:16
                sp = bitxor(alpha(sigma_p(i)+2), alpha(sigma(i)+2));
                sigma_p(i) = find(alpha == sp) - 2;
            end
            if(2*l < u)
                for i = 1:16
                    if(sigma(i) ~= -1)
                        Beta(i) = sigma(i)-d+255;
                    else
                        Beta(i) = -1;
                    end
                    if (Beta(i) > 255)
                        Beta(i) = mod(Beta(i),255);
                    end
                end
                l = u-l;
            else
                Beta = [-1, Beta(1:15)];
            end
            sigma = sigma_p;
        end
    end
    
    Error_Locator = sigma(2:9);
    l_degree = l;
end