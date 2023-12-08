clc
clear all
close all

sgtitle('Frequency Modulation using Std.Equation')
t= -pi:0.01:pi;
fc=2;
fs=50;
am=2;
ac=3;
wm=5;
wc=10;
fm=wm/(2*pi);

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

b=0.2
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,3);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=0.2')


b=1
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,4);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=1')


b=3
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,5);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=3')


b=5
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,6);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=5')


b=8
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,7);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=8')


b=10
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,8);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=10')

b=50
s=ac*cos(wc*t+b*sin(wm*t));
subplot(3,3,9);
plot(t,s)
grid on
xlabel('Time')
ylabel('Amplitude')
title('Freq mod at b=50')
