% Experiment seven
% BINARY FREQUENCY SHIFT KEYING
%
% INPUT 
%
% Input length 
ip = input('Enter the length of the sequence');

% Sampling Rate
Fs = 200;

% Random Input Sequence
seqi = rand(1,ip);
convertor = 0.5* ones(1,ip);
seqi = seqi < convertor;

% Padded Input Sequence
seq = ones(1, Fs* ip);
for i = 1:ip
  seq((Fs*(i -1) + 1):Fs* i) = seqi(i)*seq((Fs*(i-1) + 1):Fs* i);  
end

% Carrier Wave Generator
freq_zero = 1;
freq_one = 2* freq_zero;
timescale = linspace(0,ip,Fs* ip);
one_car = sin(2* pi* freq_one* timescale);
zero_car = sin(2* pi* freq_zero* timescale);

% Output Wave sequence
out = ones(1,100* ip);

%Output sequence
for i = 1:ip
    if seqi(i) == 1
        out((Fs*(i-1) + 1):Fs*i) = one_car((Fs*(i-1) + 1):Fs* i);
    else
        out((Fs*(i-1) + 1):Fs*i) = zero_car((Fs*(i-1) + 1):Fs* i);
    end
end


% Plot the outputs

% Input sequence
subplot(4,1,1);
plot(timescale,seq);
axis([0 ip 0 2]);
title(' Input Sequence');
xlabel('time(in sec) -->');
ylabel('Amp -->');

% Carrier one
subplot(4,1,2);
plot(timescale,one_car);
axis([0 ip -1.5 1.5]);
title(' Carrier (2f)');
xlabel('time(in sec) -->');
ylabel('Amp -->');


% Carrier two
subplot(4,1,3);
plot(timescale,zero_car);
axis([0 ip -1.5 1.5]);
title(' Carrier (f)');
xlabel('time(in sec) -->');
ylabel('Amp -->');


% Modulated wave
subplot(4,1,4);
plot(timescale,out);
axis([0 ip -1.5 1.5]);
title(' Binary Frequency Shift Keying (output)');
xlabel('time(in sec) -->');
ylabel('Amp -->');
