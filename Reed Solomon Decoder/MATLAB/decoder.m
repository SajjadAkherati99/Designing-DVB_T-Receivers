%%
%===============================> reading encoded data <================================
clc;
clear;

fileID = fopen('MATLAB_encoder.txt','r');
recieved = fscanf(fileID,' %d');
fclose(fileID);
recieved = recieved';

alpha = alphaGenerator();

clear fileID ans

%% 
%==============> Convert the recieved data from tuple form to alpha form <===============
recieved_A = zeros(1, 255);
for i =1:255
    recieved_A(i) = find(alpha == recieved(i)) - 2;
end

clear i recieved

%%
%==============> Calculate the syndrome vector from received data <===============
%======================> We assumed that data is no noisy <=======================
%===================> So all values of the vector must be zero <==================
%=============================> -1 means zeros <==================================
S = syndromeComputation(recieved_A);

%%
%============> Add n byte of noise to random position of received data <==========
recieved_noisy = recieved_A;
n = 8;
noise_locations = sort(randperm(255, n));
recieved_noisy(noise_locations) = randi([-1,254], 1,n);

%%
%===========> Calculate the syndrome vector for the noisy data <==================
%=======================> It can be a burst noise <===============================
S_noisy = syndromeComputation(recieved_noisy);

%%
%=========> Calculate error locator polynomial Sigma using BMP algorithm <========
[sigma, l] = error_Locator_Calculator(alpha, S_noisy);

%%
%=========> Calculate error locator polynomial Sigma using GZP algorithm <========
S_mat = zeros(8,8);
S_vec = S_noisy(9:16);
S_vec = S_vec';

for i = 1:8
    for j=1:8
        S_mat(i,j) = S_noisy(i+j-1);
    end
end

S_inv = invGF(S_mat, alpha);
sigma1 = productGF(S_inv, S_vec, alpha);
sigma1 = flip(sigma1);

clear i j S_inv S_mat S_vec 

%% 
%=========================> Calculate error locations <===========================
beta = zeros(255, 1);
for a = 0:254
    x = 1;
    for i = 1:n
        x = bitxor(x, alpha(mod((sigma(i)+a*i), 255)+2));
    end
    beta(a+1) = find(alpha == x) - 2;
end

error_locations = sort(257 - find(beta==-1));

clear a i x

%%
%===============> Calculate error magnitudes using GZP algorithm <=================
B_L = error_locations - 1;
B_L = B_L';

E_vec = S_noisy(1:8);
E_vec = E_vec';

E_mat = zeros(8,8);

for i = 1:8
    E_mat(i, :) = mod(B_L*i, 255);
end

E_mat_inv = invGF(E_mat, alpha);
error = productGF(E_mat_inv, E_vec, alpha);

clear B_L E_mat E_mat_inv E_vec i 

%%
%===============> Calculate error magnitudes using BMP algorithm <=================
z = z_Calculator([0,sigma], S_noisy, alpha);
err_Mag = error_Magnitude_BMP(error_locations, z, alpha);


%%
%============================> Frame correction <==================================
%============================> Check correctness <=================================
sprintf("Befor correcting recieved vector, we have %d errors", ... 
            length(find(recieved_noisy ~= recieved_A)))

vec_corrector = bitxor(alpha(recieved_noisy(error_locations)+2), alpha(error+2));

vec3 = zeros(1, 8);
for i = 1:8
    vec3(i) = find(alpha == vec_corrector(i)) - 2;
end
recieved_corrected = recieved_noisy;
recieved_corrected(error_locations) = vec3;

sprintf("After correcting recieved vector, we have %d errors", ... 
            length(find(recieved_corrected ~= recieved_A)))


%%
%==========================> Saving some files to use in verilog <=============================

%==========> save the alpha_to_tuple and tuple_to_alpha tables to use in Ram Blocks <==========
fileID = fopen('alpha.txt','wt');
fprintf(fileID, "8'b%s, ", dec2bin(0,8));
j = 2;
for i = 3:256
    fprintf(fileID, "8'b%s, ", dec2bin(alpha(i),8));
    j = j+1;
    if (j == 9)
        j = 1;
        fprintf(fileID, "\n");
    end
end
fprintf(fileID, "8'b%s", dec2bin(1,8));
fclose(fileID);
tuple = zeros(1,256);
for i = 3:256
    tuple(i) = find(alpha==(i-1))-2;
end
tuple(2) = 255;

fileID = fopen('tuple.txt','wt');
j = 1;
for i = 1:256
    fprintf(fileID, "8'b%s, ", dec2bin(tuple(i),8));
    j = j+1;
    if (j == 9)
        j = 1;
        fprintf(fileID, "\n");
    end
end
fclose(fileID);

%%
%==================> Save encoded data to read in verilog module testbench <====================
r_Verilog = zeros(1, 255);
for i = 255:-1:1
    r_Verilog(i) = alpha(recieved_noisy(255-i+1)+2);
end
fileID = fopen('MATLAB_encoder_Verilog.txt','w');
fprintf(fileID,' %d', r_Verilog);
fclose(fileID);


