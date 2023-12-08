clc
clear all
close all
syms a
syms b
syms t
x=exp(-a*t);`
y=laplace(x)
x1=exp(a*t);
y1=laplace(x1)
x2=t;
y2=laplace(x2)
x3=t*t;
y3=laplace(x3)
x4=t*exp(-a*t);
y4=laplace(x4)
x5=sin(t);
y5=laplace(x5)
x6=cos(t);
y5=laplace(x6)
x7=exp(-a*t)*cos(b*t);
y7=laplace(x7)
x8=exp(a*t)*sin(b*t); 
y8=laplace(x8)

