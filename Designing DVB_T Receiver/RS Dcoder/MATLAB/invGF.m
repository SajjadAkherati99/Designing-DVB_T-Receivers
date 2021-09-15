function [S_inv] = invGF(S,alpha)
m = length(S);
S_inv = zeros(m, m)-1;

for i = 1:m
    for j = 1:m
        newS = S;
        newS(i, :) = [];
        newS(:, j) = [];
        S_inv(j, i) = detGF(newS, alpha);
    end
end

det_S = detGF(S, alpha);

if (det_S == -1)
    S_inv = zeros(m, m)-1;
else
    for i = 1:m
        for j = 1:m
            if (S_inv(i, j) ~= -1)
                S_inv(i, j) = mod((S_inv(i, j) - det_S), 255);
            end
        end
    end
end

end

