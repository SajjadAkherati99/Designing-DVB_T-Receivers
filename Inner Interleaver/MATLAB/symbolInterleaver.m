function [dMat] = symbolInterleaver(aMat, mode)
if (mode == "2k")
    Nmax = 1512;
    Mmax = 2048;
    Nr = 11;
elseif(mode == "8k")
    Nmax = 6048;
    Mmax = 8192;
    Nr = 13;
else
    error("not supported for this mode");
end

Rp = zeros(1,Nr-1);
nFrame = length(aMat)/Nmax;
q = 0;
shape = size(aMat);
dMat = zeros(shape);
xyShape = [Nmax, shape(2)];
yMat = zeros(xyShape);
xMat = zeros(xyShape);

for n = 1:nFrame
    xMat = aMat(((n-1)*Nmax+1):(n*Nmax), :);
    for i = 1:Mmax
        
        if (i <= 2)
            Rp = zeros(1,Nr-1);
        elseif (i == 3)
            Rp = [1, zeros(1,Nr-2)];
        else
            if (mode == "2k")
                tempFlag = mod((Rp(1)+Rp(4)) , 2);
            else
                tempFlag = mod((Rp(1) + Rp(2) + Rp(5) + Rp(7)) , 2);
            end
            Rp(1:Nr-2) = Rp(2:Nr-1);
            Rp(Nr-1) = tempFlag;
        end
        
        if (mode == "2k")
            R = [Rp(10), Rp(7), Rp(5), Rp(2), Rp(1), Rp(8), Rp(4), Rp(9), Rp(6), Rp(3)];
        else
            R = [Rp(9), Rp(2), Rp(4), Rp(10), Rp(3), Rp(12), Rp(6), Rp(1), Rp(7), Rp(5), Rp(8), Rp(11)];
        end
        
        Hq = mod(i-1,2) * 2^(Nr-1) + Sigma(R, Nr);
        if (Hq < Nmax)
            if (mod(q,2) == 0)
                yMat(Hq+1, :) = xMat(q+1, :);
            else
                yMat(q+1, :) = xMat(Hq+1, :);
            end
            q = q+1;
        end
    end
    dMat(((n-1)*Nmax+1):(n*Nmax), :) = yMat;
    q = 0;
end

end

