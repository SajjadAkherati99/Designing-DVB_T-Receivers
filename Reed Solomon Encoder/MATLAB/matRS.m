%% test matlab RS encoder function:


clc; clear;
[genpoly, t] = rsgenpoly(7, 3, 11, 1);

msg = gf([7 3 2],3);
code1 = rsenc(msg, 7, 3, genpoly);
y = code1.x;
y(1) = 5;
y(2) = 7;
% y(5) = 3;
% code1.x = y;
decode = rsdec(gf(y, 3), 7, 3);

%% genrate a 188 byte data frame:


clc; clear;

msg = randi([0, 255], 1, 188);
msg(189:239) = 0;

fileID = fopen('data_frame.txt','w');
fprintf(fileID,' %d',msg);
fclose(fileID);

fileID = fopen('source.txt','w');
for i=1:239
    fprintf(fileID,'%s \n',dec2bin(msg(i), 8));
end
fclose(fileID);

fileID = fopen('data_frame.txt','r');
msg = fscanf(fileID,' %d');
fclose(fileID);

msg1 = msg';
msg = msg(1:188);
msg = fliplr(msg');


%% calculate alpha table:


alpha = zeros(1, 256);
alpha(1) = 0;
for i = 2:9
    alpha(i) = 2^(i-2);
end
alpha(10) = 29;

for i = 11:256
    a_i = 2*alpha(i-1);
    if (a_i >= 256)
        a_i = a_i - 256;
        alpha(i) = bitxor(a_i, alpha(10));
    else
        alpha(i) = a_i;
    end
end

[genpoly, t] = rsgenpoly(255, 239, 285);
genpoly = genpoly.x;

%%  transform each byte of data to its corresponding alpha and also for generator polynomial:


msg_A = zeros(1, 239);
for i =52:239
    msg_A(i) = find(alpha == msg(i-51)) - 2;
end

gen_A = zeros(1, 17);
for i =1:17
    gen_A(i) = find(alpha == genpoly(i)) - 2;
end

%% my RS_encoder:


msg_A(240:255) = 0;

tic;
for i = 1:239
    if (msg_A(i) ~= -1)
        multed = msg_A(i) + gen_A(2:17);
        multed(multed>254) = multed(multed>254) - 255;
        msg_A(i) = 0;
        for j = 1:16
            ij = bitxor(alpha(msg_A(i+j)+2), alpha(multed(j)+2));
            msg_A(i+j) = find(alpha == ij)-2;
        end
    else
        multed = zeros(1, 16)-1;
        msg_A(i) = 0;
        for j = 1:16
            ij = bitxor(alpha(msg_A(i+j)+2), alpha(multed(j)+2));
            msg_A(i+j) = find(alpha == ij)-2;
        end
    end
end

p = alpha(msg_A(189:204)+2);

encoded = [msg1, fliplr(p)];
fileID = fopen('my_encoder.txt','w');
fprintf(fileID,' %d',encoded);
fclose(fileID);
t1 = toc;

%% coding using MATLAB RS_encoder:

tic;
msg = fliplr(msg1);
msg = gf(msg, 8);
[genpoly, t] = rsgenpoly(255, 239, 285, 1);
coded = rsenc(msg, 255, 239, genpoly);
fileID = fopen('MATLAB_encoder.txt','w');
y = coded.x;
y(1:239) = fliplr(y(1:239));
y(240:255) = fliplr(y(240:255));
fprintf(fileID,' %d',y);
fclose(fileID);
t2 = toc;

%% compare the execution times:


sprintf("execution times are:\n my encoder = %f \n MATLAB encoder = %f",t1, t2)


%% convert binary result of VHDL to decimal
clc

result = zeros(255, 1);
fileID = fopen('target.txt','r');
result_string = fscanf(fileID,' %s');
fclose(fileID);


j = 1;
for i = 1:255
    result(i) = bin2dec(result_string(j:j+7));
    j = j+8;
end

%% read my encoder implemented in matlab:
fileID = fopen('my_encoder.txt','r');
matlab_result = fscanf(fileID,' %d');
fclose(fileID);


