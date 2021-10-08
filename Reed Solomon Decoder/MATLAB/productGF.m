function [s3] = productGF(s1, s2, alpha)
m = size(s1,1);
p = size(s1,2);
n = size(s2,2);
s3 = zeros(m,n);

for  i = 1:m
    for j = 1:n
        s33 = zeros(p, 1) - 1; 
        s11 = s1(i, :);
        s11 = s11';
        s22 = s2(:, j);
        s33((s11~=-1) & (s22~=-1)) = ...
            mod((s11((s11~=-1) & (s22~=-1)) + s22 ((s11~=-1) & (s22~=-1))), 255);
        a = 0;
        for k = 1:p
            if(s33(k) ~= -1)
                a = bitxor(a, alpha(s33(k)+2));
            end
        end
        s3(i,j) = find(alpha == a) - 2;
    end
end
end

