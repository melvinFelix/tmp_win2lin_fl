%Experiment seven
%Linear convolution using dft and idft
function[y] = conv_using_dft(x_in, h_in)

len_y = length(x_in) + length(h_in) - 1;

x = [x_in zeros(1,(len_y - length(x_in)))];
h = [h_in zeros(1,(len_y - length(h_in)))];

X = dft_mf(x,len_y);
H = dft_mf(h,len_y);

Y = X.*H;

y = round(idft_mf(Y,len_y));

end


