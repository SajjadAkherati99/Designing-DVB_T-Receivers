function [det_gf] = detGF(S,alpha)
det_gf = 0;
m = length(S);

if (m==2)
    if ((S(1,1)==-1)||(S(2,2)==-1))
        if ((S(2,1)==-1)||(S(1,2)==-1))
            det_gf = -1;
        else
            det_gf = mod(S(2,1)+S(1,2), 255);
        end
    else
        if ((S(2,1)==-1)||(S(1,2)==-1))
            det_gf = -1;
        else
            det_gf = bitxor(alpha(mod(S(1,1)+S(2,2), 255)+2), alpha(mod(S(2,1)+S(1,2), 255)+2));
            det_gf = find(alpha == det_gf)-2;
        end
    end 
else
    for i = 1:m
        newS = S;
        newS(:,1) = [];
        newS(i,:) = [];
        det1 = detGF(newS, alpha);
        if ((S(i,1) ~= -1) && (det1 ~= -1))
            det1 = det1 + S(i,1);
            det1 = mod(det1,255);
            det_gf = bitxor(det_gf, alpha(det1+2));
        end
    end
    det_gf = find(alpha == det_gf) - 2;
end
end

