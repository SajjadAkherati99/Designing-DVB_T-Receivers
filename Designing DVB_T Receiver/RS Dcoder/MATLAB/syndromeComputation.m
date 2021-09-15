function [S] = syndromeComputation(recieved)
S = zeros(1, 16);
alpha = alphaGenerator();

for s = 1:16
    a = 0;
    for i = 1:255
        if (recieved(i) ~= -1)
            ri = recieved(i) + (i-1)*s;
            ri = mod(ri, 255);
            a = bitxor(a, alpha(ri+2));
        end
    end
    S(s) = find(alpha == a) - 2;
end

end

