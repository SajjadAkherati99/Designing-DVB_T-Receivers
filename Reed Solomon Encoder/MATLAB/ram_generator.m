clc
clear
a = zeros(256, 1);

fileID = fopen('ram.txt','w');
fprintf(fileID,'%s',dec2bin(a(1, :), 8));
fprintf(fileID,' \n');

for i = 1:255
    x = gftuple(i-1, 8);
    for j = 1:8
        a(i+1) = a(i+1) + x(j)*2^(j-1);
    end
    fprintf(fileID,'%s', dec2bin(a(i+1,1),8));
    if (i==255)
        fprintf(fileID,' \n');
    else
        fprintf(fileID,' \n');
    end
end
fclose(fileID);


fileID = fopen('coefficeint.txt','w');
genpoly = rsgenpoly(255,239);
x = genpoly.x;
coef = zeros(1, 17);
for i = 1:17
    coef(17-i+1) = find(a==x(i));
end

for i = 1:17
    fprintf(fileID,'%d ', coef(i)-2);
end

fclose(fileID);

[~, b] = sort(a);
fileID = fopen('ram1.txt','w');
fprintf(fileID,'%s \n',dec2bin(b(1,1)-1,8));
for i = 2:256
    fprintf(fileID,'%s',dec2bin(b(i,1)-2,8));
    if (i==255)
        fprintf(fileID,' \n');
    else
        fprintf(fileID,' \n');
    end
end
fclose(fileID);



