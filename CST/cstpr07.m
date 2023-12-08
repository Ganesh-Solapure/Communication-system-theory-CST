% Amplitude Modulated Wave with AWGN
clc, clear, close all
t = -pi:0.01:pi; 
am = 1.25; 
ac = 2.5; 
fc= 2.5; 
fs = 25; 
wm = 5; 
wc = 10; 
m=am*sin(wm*t); 
subplot(4,3,1); 
plot(t,m); 
grid on
title('Message Signal'); 
xlabel('Time'); 
ylabel('Amplitude'); 
c=ac*sin(wc*t); 
subplot(4,3,2); 
plot(t,c); 
grid on
title('Carrier Signal'); 
xlabel('Time'); 
ylabel('Amplitude'); 
k=am/ac; 
s=ac*(1+k*sin(wm*t)).*sin(wc*t); 
subplot(4,3,3); 
plot(t,s) 
grid on
title('Modulated signal') 
xlabel('Time'); 
ylabel('Amplitude'); 
% An Modulated Signal Using ammod MATLAB Inbuilt Command 
m=am*sin(wm*t); 
y=ammod(m,fc,fs); 
subplot(4,3,4); 
plot(t,y); 
grid on
title('AM Modulated Signal'); 
xlabel('Time'); 
ylabel('Amplitude') 
% Addition of White Noise in Modulated Signal
snr=1; 
y=awgn(s,snr); 
subplot(4,3,5); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 1'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=10; 
y=awgn(s,snr); 
subplot(4,3,6); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 10'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=20; 
y=awgn(s,snr); 
subplot(4,3,7); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 20'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=30; 
y=awgn(s,snr); 
subplot(4,3,8); 
plot(t,y); 
grid on
title('Modulated Signal with snr =30'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=35; 
y=awgn(s,snr); 
subplot(4,3,9); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 35'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=40; 
y=awgn(s,snr); 
subplot(4,3,10); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 40'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=50; 
y=awgn(s,snr); 
subplot(4,3,11); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 50'); 
xlabel('Time'); 
ylabel('Amplitude'); 
snr=55; 
y=awgn(s,snr); 
subplot(4,3,12); 
plot(t,y); 
grid on
title('Modulated Signal with snr = 55'); 
xlabel('Time'); 
ylabel('Amplitude'); 
figure(2) 
% A Demodulated Signal using amdemod MATLAB Inbuilt Command 
z=amdemod(y,fc,fs); 
plot(t,z) 
grid on
title('Demodulated Signal') 
xlabel('Time'); 
ylabel('Amplitude')