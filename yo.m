sinx = sin(2*pi*3*(0:.01:.99));
cosx = cos(2*pi*4*(0:.01:.99));
expx = exp(0:.01:.99);

subplot(2,1,1);
plot(xcorr(sinx,cosx));
title('corr of sin and cos(using in-built)');
xlabel('time -->');
ylabel('amp -->');


subplot(2,1,2);
plot(correlation_mf(sinx,cosx));
title('corr of sin and cos');
xlabel('time -->');
ylabel('amp -->');
figure


subplot(2,1,1);
plot(xcorr(sinx,expx));
title('corr of sin and exp(using in-built)');
xlabel('time -->');
ylabel('amp -->');
subplot(2,1,2);


plot(correlation_mf(sinx,expx));
title('corr of sin and exp');
xlabel('time -->');
ylabel('amp -->');

