clc;
close all;
clear all;

fs=100;
fc=40;
am=10;
ac=20;
wm=5;
t=-pi:1/fs:pi;
x=am*cos(wm*t)

A=ammod(x,fc,fs,20)
subplot(5,3,1)
plot(t,A)
xlabel('Time')
ylabel('Amplitude')
title('AM Wave')

F=fmmod(x,fc,fs,10)
subplot(5,3,2)
plot(t,F)
xlabel('Time')
ylabel('Amplitude')
title('FM Wave')

P=pmmod(x,fc,fs,10)
subplot(5,3,3)
plot(t,P)
xlabel('Time')
ylabel('Amplitude')
title('PM Wave')

An=awgn(A,1)
subplot(5,3,4)
plot(t,An)
xlabel('Time')
ylabel('Amplitude')
title('AM with snr=1')

Fn=awgn(F,1)
subplot(5,3,5)
plot(t,Fn)
xlabel('Time')
ylabel('Amplitude')
title('FM with snr=1')

Pn=awgn(P,1)
subplot(5,3,6)
plot(t,Pn)
xlabel('Time')
ylabel('Amplitude')
title('PM with snr=1')

An=awgn(A,3)
subplot(5,3,7)
plot(t,An)
xlabel('Time')
ylabel('Amplitude')
title('AM with snr=3')

Fn=awgn(F,3)
subplot(5,3,8)
plot(t,Fn)
xlabel('Time')
ylabel('Amplitude')
title('FM with snr=3')

Pn=awgn(P,3)
subplot(5,3,9)
plot(t,Pn)
xlabel('Time')
ylabel('Amplitude')
title('PM with snr=3')

An=awgn(A,7)
subplot(5,3,10)
plot(t,An)
xlabel('Time')
ylabel('Amplitude')
title('AM with snr=7')

Fn=awgn(F,7)
subplot(5,3,11)
plot(t,Fn)
xlabel('Time')
ylabel('Amplitude')
title('FM with snr=7')

Pn=awgn(P,7)
subplot(5,3,12)
plot(t,Pn)
xlabel('Time')
ylabel('Amplitude')
title('PM with snr=7')

An=awgn(A,10)
subplot(5,3,13) 
plot(t,An)
xlabel('Time')
ylabel('Amplitude')
title('AM with snr=10')

Fn=awgn(F,10)
subplot(5,3,14)
plot(t,Fn)
xlabel('Time')
ylabel('Amplitude')
title('FM with snr=10')

Pn=awgn(P,10)
subplot(5,3,15)
plot(t,Pn)
xlabel('Time')
ylabel('Amplitude')
title('PM with snr=10')