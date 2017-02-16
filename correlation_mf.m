%correlation of two functions
function[y,y_def] = correlation_mf(x_in,h_in)
%first input 
%x_in = [1 2 7 8 9 6 5 3 1];
%x_in = input('enter the first sequence');

%second input
%h_in = [6 8  7 5 7 9];
%h_in = input('enter the first sequence');

%length of both inputs
len_x = length(x_in);
len_h = length(h_in);

%max length of output sequence
max_length = (len_x) + (len_h) - 1;


x = [x_in zeros(1,(max_length - len_x))];
%ht = [h_in zeros(1,(max_length - len_h))];
%x = x_in;
h = fliplr(h_in);
trans_h = h';

y_matrix = trans_h*x;

out_matrix = rot90(y_matrix);
y = zeros(1,max_length);
loop_run = max_length-1;

for i = 1:max_length
    y(i) = sum(diag(out_matrix,-(loop_run)));
    loop_run = loop_run - 1;
end

y;
y_def = xcorr(x_in,h_in);

