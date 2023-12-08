clc
clear all
close all
sgtitle('Frequency Modulation using fmmod command');

t= -pi:0.01:pi;
fc=2;
fs=50;
am=2;
ac=3;
wm=5;
wc=10;


x=am*cos(wm*t);
subplot(3,3,1)
plot(t,x)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Message Signal')

c=ac*cos(2*pi*fc*t);
subplot(3,3,2);
plot(t,c)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Carrier Signal')

freqdev=0.1;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,3);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=0.1')


freqdev=0.5;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,4);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=0.5')


freqdev=1;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,5);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=1')


freqdev=2;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,6);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=2')


freqdev=5;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,7);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=5')


freqdev=10;
y=fmmod(x,fc,fs,freqdev);
subplot(3,3,8);
plot(t,y)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod:freqdev=10')

