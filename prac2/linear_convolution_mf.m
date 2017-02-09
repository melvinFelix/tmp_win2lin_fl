%convolution of two sequences
%
%
%
%
%
function[y_op] = linear_convolution_mf(x_ip,y_ip)

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
end  
