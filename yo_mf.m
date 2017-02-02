clear all
clc
t = 0:.01:1;
x_sin = sin(2*pi*3*t);
y_cos = cos(2*pi*2*t);
%subplot(4,1,1),plot(t,x_sin);
%subplot(4,1,2),plot(t,y_cos);



y1 = linear_convolution_mf(x_sin,y_cos);
z1 = conv(x_sin,y_cos);
%subplot(4,1,1),plot(t,y1);
%subplot(4,1,2),plot(t,z1);
figure
plot(y1)
figure
plot(z1)
z_exp = exp(t);

%subplot(4,1,3),plot(t,z_exp);

y2 = linear_convolution_mf(x_sin,z_exp);
z2 = conv(x_sin,z_exp);
figure
plot(y2)
figure
plot(z2)

%subplot(4,1,3),plot(t,y2);
%subplot(4,1,4),plot(t,z2);
%subplot(4,1,4),plot(
