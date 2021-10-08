function [aMat] = bit_wise_Interleaver(bMat,v)
shape = size(bMat);
aMat = zeros(shape);

dcMat = [0 63 105 42 21 84];

aMat(1,:) = bMat(1,:);
for i = 2:v
    for j = 1:126:shape(2)
        p_b_Msg = bMat(i,j:j+125);
        ind1 = dcMat(i)+1;
        ind2 = 127 - ind1;
        
        p_a_Msg(1:ind2) = p_b_Msg(ind1:126);
        p_a_Msg(ind2+1:126) = p_b_Msg(1:ind1-1);
        
        aMat(i,j:j+125) = p_a_Msg;
    end
end
end

