function [sigma] = Sigma(R,Nr)
sigma = 0;
for i = 1:(Nr-1)
    sigma = sigma + R(i)*2^(i-1);
end
end

