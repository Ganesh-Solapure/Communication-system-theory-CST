clc,
clear all
close all

%Generation of some elementory signals
subplot(3,2,1)

t= -10:0.01:10;
u= [zeros(1,1000),ones(1,1001)];

plot(t,u);
xlim([-11 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('u(t)');
title('unit stape signal');
grid on;

subplot(3,2,2);

t= -10:0.01:10;
d= [zeros(1,1000),ones(1,1),zeros(1,1000)];

plot(t,d);
xlim([-11 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('d(t)');
title('unit impulse');
grid on;
subplot(3,2,3);

t1= 0:0.01:10;
r= t1;

plot(t1,r);
xlim([0 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('r(t)');
title('ramp signal');
grid on;

subplot(3,2,4);

t1= 0:0.01:10;
p= t1;

plot(t1,p);
xlim([-11 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('r(t)');
title('parabolic signal');
grid on;

subplot(3,2,5);

t1= 0:0.01:10;
e= exp(t1);

plot(t1,e);
xlim([-11 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('r(t)')
title('+ve exponential signal');
grid on;

subplot(3,2,6);

t1= 0:0.01:10;
e= exp(-t1);

plot(t1,e);
xlim([-11 11]);
ylim([-0.5 1.5]);
xlabel('t');
ylabel('r(t)');
title('-ve exponential signal');
grid on ;
