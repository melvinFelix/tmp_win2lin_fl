%convolution of two sequences
%clear the Workspace and console
clear all
clc
%
%
%
x_ip = input('enter first seq');        %first input sequence
h_ip = input('enter second seq');       %second input sequence

l_x = length(x_ip);                     %length of the input 
l_h = length(h_ip);                     %length of the second input
l_y = l_x + l_h - 1;

y_op = zeros(1,l_y);

x = [x_ip zeros(1,(l_y-l_x))];
h = [h_ip zeros(1,(l_y-l_h))];

h_trans = h';

y_mul = h_trans*x;

y_mult = flipud(y_mul);

loop_run = l_y-1;

for i = 1:l_y
    y_op(i) = sum(diag(y_mult,-(loop_run)));
    loop_run = loop_run - 1;
end

y_op

y_def = conv(x_ip,h_ip);

y_def

if y_op == y_def
    disp('true');
end
    