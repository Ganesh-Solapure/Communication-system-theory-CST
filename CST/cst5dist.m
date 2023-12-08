clc;
clear all;
close all;

%Bernaulli Distribution
p=0.75;
x=0:1;
y=binopdf(0:1,1,p);
subplot(2,3,1)
bar(x,y)
xlabel('Observations')
ylabel('Probability')
title('Bernaulli Dist.')

%Binomial Distribution
x=0:10;
y=binopdf(x,10,0.5);
subplot(2,3,2);
bar(x,y)
xlabel('Observations')
ylabel('Probability')
title('Binomial Dist.')

%Uniform Distribution
x=0:0.1:1;
y=unifpdf(x);
subplot(2,3,3);
bar(x,y)
xlabel('Observations')
ylabel('Probability')
title('Uniform Dist.')

%Normal Distribution
x=[-2,-1,0,1,2];
y=normpdf(x);
subplot(2,3,4)
bar(x,y)
xlabel('Observations')
ylabel('Probability')
title('Normal Dist.')

%poissions Distribution
x=0:15;
y=poisspdf(x,4);
subplot(2,3,5)
bar(x,y,1)
xlabel('Observations')
ylabel('Probability')
title('Poissions Dist.')

%Exponential Distribution
x=0:1:10;
y=exppdf(x,2);
subplot(2,3,6)
bar(x,y)
xlabel('Observations')
ylabel('Probability')
title('Exponential Dist.')
