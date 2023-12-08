clc;
close all;
clear all;
sgtitle('Phase Modulation using pmmod command');

t=-pi:0.01:pi;
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
subplot(3,3,2)
plot(t,c)
grid on
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal')

pdev=0.1;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,3)
plot(t,y)
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=0.1)')

pdev=0.25;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,4)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=0.25')

pdev=1;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,5)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=1')

pdev=2.5;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,6)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=2.5')

pdev=5;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,7)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=5')

pdev=7.5;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,8)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=7.5')

pdev=10;
y=pmmod(x,fc,fs,pdev);
subplot(3,3,9)
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal at pd=10')

