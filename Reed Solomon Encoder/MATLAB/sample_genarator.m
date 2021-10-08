fileID = fopen('source.txt','w');

for i = 1:239
    for j = 1:8
        fprintf(fileID,'%d',round(rand));
    end
    fprintf(fileID,' \n');
end
