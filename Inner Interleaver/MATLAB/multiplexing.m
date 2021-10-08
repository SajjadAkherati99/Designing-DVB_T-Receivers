function [msg] = multiplexing(bMat, v)
len = v*length(bMat);
msg = zeros(1,len);

for i = 1:len
    ind = i-1;
    x_ind_bMat = floor((mod(ind,v)) / (v/2)) + 2 * (mod(ind, (v/2))) + 1;
    y_ind_bMat = floor(ind/v) + 1;
    
    msg(i) = bMat(x_ind_bMat,y_ind_bMat);
end
end

