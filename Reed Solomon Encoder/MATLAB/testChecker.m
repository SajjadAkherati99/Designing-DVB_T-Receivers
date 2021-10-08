samples = zeros(50,255);
samples_noisy = zeros(50,255);

for i = 1:50
    msg = randi([0, 255], 1, 188);
    msg(189:239) = 0;
    msg = fliplr(msg);
    msg = gf(msg, 8);
    [genpoly, t] = rsgenpoly(255, 239, 285, 1);
    coded = rsenc(msg, 255, 239, genpoly);
    y = coded.x;
    y(1:239) = fliplr(y(1:239));
    y(240:255) = fliplr(y(240:255));
    y = fliplr(y);
    
    samples(i,:) = y;
    
    n = 5;
    noise_locations = sort(randperm(253, n));
    y(noise_locations) = xor(y(noise_locations),randi([1,254], 1,n));
    
    samples_noisy(i,:) = y;
end

%%
fileID = fopen('MATLAB_encoder.txt','w');
fprintf(fileID,' %d',samples');
fclose(fileID);


fileID = fopen('MATLAB_encoder_Verilog.txt','w');
writer = samples_noisy';
% fprintf(fileID,' %d',writer(:,15));
fprintf(fileID,' %d',writer);
fclose(fileID);

%%
fileID = fopen('decoded_Verilog.txt','r');
decoded = fscanf(fileID,' %d ');
fclose(fileID);
decoded = decoded(1:50*255);
decoded = reshape(decoded, 255, 50);
decoded = decoded';

%%
clc
alpha = alphaGenerator();
MATLAB_decoded = zeros(50,255);
for i = 7:7
    frame = samples_noisy(i,:);
    frame = frame(255:-1:1);

    dec = RS_Decoder(frame, alpha);
    dec = dec(255:-1:1);
    
   MATLAB_decoded(i,:) = dec;
end

%% 
bad = [];
for i = 1:50
    if (sum(abs(decoded(i,:) - samples(i,:)))>0)
        bad = [bad, i];
    end
end
%% 
num = zeros(1,50);
for i = 1:50
    b = find((abs(samples_noisy(i,:) - samples(i,:)))>0);
    num(i) = length(b);
end
%%
error = sum (abs(samples-decoded));




