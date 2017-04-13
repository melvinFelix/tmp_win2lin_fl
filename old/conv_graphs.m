%linear convolution of sin and cos

t = 0:.01:1;

sinx = sin(2*pi*3*t);
cosx = cos(2*pi*3*t);

subplot(2,1,1);
plot(t,sinx);
xlabel('time -->');
ylabel('Amplitude -->');
title('Sine');

subplot(2,1,2);
plot(t,cosx);
xlabel('time -->');
ylabel('Amplitude -->');
title('Cos');
figure

subplot(2,1,1);
plot(conv_using_dft(sinx,cosx));
xlabel('time -->');
ylabel('Amplitude -->');
title('Linear Convolution of Sin and Cos');

subplot(2,1,2);
plot(conv(sinx,cosx));
xlabel('time -->');
ylabel('Amplitude -->');
title('Linear Convolution of Sin and Cos(In-built)');
