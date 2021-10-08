function [alpha] = alphaGenerator()
alpha = zeros(1, 256);
for i = 1:255
    x = gftuple(i-1, 8);
    for j = 1:8
        alpha(i+1) = alpha(i+1) + x(j)*2^(j-1);
    end
end
end
