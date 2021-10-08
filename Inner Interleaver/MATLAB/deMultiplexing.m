function [bMat] = deMultiplexing(msg, v)
len = length(msg);
bLen = len/v;
bMat = zeros(v,bLen);

for i = 1:len
    ind = i-1;
    x_ind_bMat = floor((mod(ind,v)) / (v/2)) + 2 * (mod(ind, (v/2))) + 1;
    y_ind_bMat = floor(ind/v) + 1;
    
    bMat(x_ind_bMat,y_ind_bMat) = msg(i);
end
end

