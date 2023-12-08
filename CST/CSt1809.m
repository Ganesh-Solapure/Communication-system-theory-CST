clc, clear all, close all;
t=-10:0.01:10;
u=[zeros(1,1000),ones(1,1001)];
subplot(231)
plot(t,u)
xlim([-11 11])
ylim([-0.5 1.5])
xlabel('t')
ylabel('u(t)')
grid on