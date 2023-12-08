%Tossing of coin
clc
clear all
close all
h=0;
t=0;
N=double(2020516)
toss=randi([0,1],1,N)
for j=1:N
    if toss (j)==1
        h=h+1
    end
    if toss(j)==0
        t+t+1;
    end
end
PH = h/N;
PT = t/N;
disp(PH);
disp(PT);
