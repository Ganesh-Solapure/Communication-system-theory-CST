clc
clear all
close all
am=5;
ac=5;
f=10;
fc=10*f;
F=2*(fc + 2*f)*10;
T=1/F;
t=0:T:1;
fs=10000;
figure(1);
subplot(6,1,1);
xm=am*sin(2*pi*f*t);
plot(t,xm);
title('message signal');
xc=ac*sin(2*pi*fc*t);
subplot(6,1,2);
plot(t,xc);
title('carrier signal');
y1=ac+am*(1+0.25*sin(2*pi*f*t)).*sin(2*pi*fc*t);
subplot(6,1,3);
plot(t,y1)
title('amplitude modulated signal with 25%')
y2=ac+am*(1+0.5*sin(2*pi*f*t)).*sin(2*pi*fc*t);
subplot(6,1,4);
plot(t,y2)
title('amplitude modulated signal with 50%')
y3=ac+am*(1+1*sin(2*pi*f*t)).*sin(2*pi*fc*t);
subplot(6,1,5);
plot(t,y3)
title('amplitude modulated signal with 100%');
y4=ac+am*(1+3.1*sin(2*pi*f*t)).*sin(2*pi*fc*t);
subplot(6,1,6);
plot(t,y4)
title('amplitude modulated signalwith 150%')
figure(2)
demod1=amdemod(y1,fc,fs);
subplot(4,1,1);
plot(t,demod1);
title('am demodulated signal with 25%')
demod2=amdemod(y2,fc,fs);
subplot(4,1,2);
plot(t,demod2);
title('am demodulated signal with 50%')

demod3=amdemod(y3,fc,fs);
subplot(4,1,3);
plot(t,demod3);
title('am demodulated signal with 100%')
demod4=amdemod(y4,fc,fs);
subplot(4,1,4);
plot(t,demod4);
title('am demodulated signal with 150%')