function[y]=dft(~)
t=0:0.1:1;
x=cos(2*pi*t);
N=length(x);
for k=1:N;
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n)*exp(-(1i*(2*pi*(k-1)*(n-1))))/N;
    end
end
subplot(2,2,1);
stem(y);
subplot(2,2,2);
b=fft(x);
stem(b);

    
