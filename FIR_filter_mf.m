% La Experimente Octavo
%
%
% Make a MATLAB function to design FIR filter
% steps:
% 1. Hd(w)
% 2. hd(n)
% 3. h(n) = hd(n)* w(n)
% 4. H(z)

% clear screen
clear all
clc
%

%get input

Ftype = input('Enter the number below for the corresponding fiter\n 1. Low Pass Filter\n 2. High Pass Filter\n 3. Band Pass Filter\n 4. Band Stop Filter\n');
Flen = input('Enter the Length of the filter \n');
%Fsamp = input('Enter the Sampling Frequency (in Hz) \n');
Window = input('Enter the type of window to be used\n 1.Rectangular\n 2.Hamming\n 3.Hanning\n 4.Blackmann\n');

syms n;
%time axis
t = (Flen - 1)/2;

switch Window
    case 1
        Wn = 1;
    case 2
        Wn = 0.54 - 0.46*cos(2*pi*n/(Flen-1));
    case 3
        Wn = 0.50 - 0.50*cos(2*pi*n/(Flen-1));
    case 4
        Wn = 0.42 - 0.50*cos(2*pi*n/(Flen-1)) + 0.08*cos(4*pi*n/(Flen-1));
end

if Ftype == 3 || Ftype == 4
    Wc_low = 2*pi*input('enter the lower bound (in Hz) \n');
    Wc_high = 2*pi*input('enter the upper bound (in Hz) \n');
    if Ftype == 3
        Hdn = sin(Wc_high*(n-t))/(pi*(n-t)) - sin(Wc_low*(n-t))/(pi*(n-t));
    else
        Hdn = (sin(pi*(n-t)) + sin(Wc_low*(n-t)) - sin(Wc_high*(n-t)))/(pi*(n-t));
    end
else
    Wc = 2*pi*input('Enter the Cut-off Frequency \n');
    if Ftype == 1
        Hdn = sin(Wc*(n-t))/(pi*(n-t));
    else
        Hdn = sin(pi*(n-t))/(pi*(n-t)) - sin(Wc*(n-t))/(pi*(n-t));
    end
end


%
Hd_n = zeros(1,Flen);
W_n = zeros(1,Flen);
h = zeros(1,Flen);

for n = 0:Flen-1
    if n == t
        switch Ftype
            case 1
                h(n+1) = Wc/pi;
            case 2
                h(n+1) = 1-Wc/pi;
            case 3
                h(n+1) = (-Wc_low + Wc_high)/pi;
            case 4
                h(n+1) = 1+(Wc_low-Wc_high)/pi;
        end
    else
        Hd_n(n+1) = subs(Hdn);
        W_n(n+1) = subs(Wn);
        h(n+1) = Hd_n(n+1)*W_n(n+1);
    end
end
