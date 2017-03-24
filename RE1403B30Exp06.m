% Experiment 9 
% Binary Amplitude Shift Keying
%
% a. To generate ASK waveform for a given binary sequence
% b. To estimate the bandwidth of the generated ASK signal
% c. To calculate time period, frequency and bitrate of ASK signal
% d. To compare different ASK waveform by varying input sequence length
%    and shape of the carrier signal
% e. To analyse the effect of noise and channel response on ASK signal


% modulating sequence
% get the length
length_of_input = input('enter the length of the input');
%
% To generate Binary Sequence of given length
%
seq = rand(1, length_of_input);
for i = 1:length_of_input
    if seq(i) >= 0.5
        seq(i) = 1;
    else
        seq(i) = 0;
    end

end

bin_input = zeros(length_of_input,100);

% line encoding
l_x = 0:.01:.99;
%e_zero = square(2*pi*1*l_x);
e_zero = zeros(1, 100);
e_one  = ones(1, 100);


%signal
signale = zeros(1,length_of_input*100);
for i = 1:length_of_input
    if seq(i) == 1
        bin_input(i,:) = ones(1,100);
        signale((100 * (i-1) +1):(100*i)) = e_one;
    else
        bin_input(i,:) = zeros(1,100);
        signale((100 * (i-1) +1):(100*i)) = e_zero;
    end
end


% Carrier Wave
time = length_of_input; % (in sec)
amplitude = 1;
frequency = 2;
timescale = linspace(0, time, 100 * time);
sinx = amplitude * sin(2*pi* frequency* timescale);

% Generate the output 
modulated_wave = zeros(1, length_of_input * 100);
for i = 1:length_of_input
    modulated_wave((100*(i-1) + 1): (100 * i)) = sinx((100*(i-1) + 1): (100 * i)) .* bin_input(i,:);
end

% Plotting 

subplot(3,1,1)
plot(timescale,signale)
axis([0 length_of_input 0 2]);
title(' Input Signal (Unipolar RZ)');
xlabel('time -->')
ylabel('Amplitude -->')


subplot(3,1,2);
plot(timescale, sinx);
title(' Carrier Wave');
xlabel('time -->')
ylabel('Amplitude -->')

subplot(3,1,3);
plot(timescale, modulated_wave);
title('Amplitude Shift Keying');
xlabel('time (in sec) -->');
ylabel('Amplitude -->');