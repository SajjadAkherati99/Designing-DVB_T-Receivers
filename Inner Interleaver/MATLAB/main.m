%% generate a test array:
clc
clear

v_arr = [2 4 6];
c1 = randi([1, 5], 1, 1);
c2 = 48*24*126;
v = v_arr(randi([1, 3], 1, 1));

msg = randi([0,1], 1, c1*c2);

%% TX
clc

% Demultiplexing
b_mat = deMultiplexing(msg, v);

% bit wise interleaving
a_mat = bit_wise_Interleaver(b_mat, v);

% symbol interleaving
d_mat = symbolInterleaver(a_mat', "8k");

%% RX

% symbol deinterleaving
r_a_mat = symbolDeInterleaver(d_mat);

% bit wise deinterleaving
r_b_mat = bit_wise_DeInterleaver(r_a_mat, v);

% multiplexing
r_msg = multiplexing(r_b_mat, v);


%% check

err_n = length(find((r_msg-msg) ~= 0));






