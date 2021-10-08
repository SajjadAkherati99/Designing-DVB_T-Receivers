function [bMat] = bit_wise_DeInterleaver(aMat, v)
shape = size(aMat);
bMat = zeros(shape);

dcMat = [0 63 105 42 21 84];

bMat(1,:) = aMat(1,:);
for i = 2:v
    for j = 1:126:shape(2)
        p_a_Msg = aMat(i,j:j+125);
        ind1 = dcMat(i)+1;
        ind2 = 127 - ind1;
        
        
        p_b_Msg(1:ind1-1) = p_a_Msg(ind2+1:126);
        p_b_Msg(ind1:126) = p_a_Msg(1:ind2);
        
        bMat(i,j:j+125) = p_b_Msg;
    end
end
end

