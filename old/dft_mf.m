function[x] = dft_mf(X_in,N)
%X_in = input('enter the sequence');
%N = input('enter the length');

twiddle_factor = exp(-1i*2*pi/N);

twiddle_mat = zeros(N);

for k = 0:N-1
    for n = 0:N-1
        twiddle_mat(k+1,n+1) = (twiddle_factor)^(k*n);
    end
end

X = [X_in zeros(1,(N - length(X_in)))];
x = (X*twiddle_mat);
end