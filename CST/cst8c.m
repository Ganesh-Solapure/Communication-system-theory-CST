clc;
clear all;
close all;

x=rand([1,10])
y=mean(x)
z=std(x)                                                                               
w=z*z

subplot(1,3,1)
hist(y)
title('mean of RV')
xlabel('mean')

subplot(1,3,2)
hist(z)
title('SD of RV')
xlabel('Standard deviation')

subplot(1,3,3)
hist(w)
title('variance of RV')
xlabel('variance')

