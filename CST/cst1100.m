clc
clear all
am= 5;
ac= 5;
f=10;
fc=10*f;
f=2*(fc+2*f)*10;
T=1/f;
t=0:T:1;
fs=13000
figure(1)
subplot(6,1,1)

Xm= am*sin(2*pi*f*t)
plot(t,Xm)
title('Message Signal')

Xc=ac*sin(2*pi*fc*t)
subplot(6,1,2)
plot(t,Xc)
title('carrier Signal')

