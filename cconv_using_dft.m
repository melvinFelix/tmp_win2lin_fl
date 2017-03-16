%Experiment Six
%Find the circular convolution of two sequences
%using dft
%
%
%
%
%find the dft of both individual sequences
%and the multiply them and the find the inverse 
%convolution of the prodrct of both of them 
%to get the circular convolution

function[circ_conv] = cconv_using_dft(x_ipone,x_iptwo)
%x_ipone = input('enter the first sequence');
%x_iptwo = input('enter the second sequence');

len1 = length(x_ipone);
len2 = length(x_iptwo);

maxl = max(len1,len2);

xone = [x_ipone zeros(1,(maxl-len1))];
xtwo = [x_iptwo zeros(1,(maxl-len2))];

dftone = dft_mf(xone,maxl);
dfttwo = dft_mf(xtwo,maxl);

dft_prod = dftone.*dfttwo;

circ_conv = round(idft_mf(dft_prod,maxl));

end
