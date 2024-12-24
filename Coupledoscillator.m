clc;
clear all
k=1;
K=0.1;
m=5;
w1=sqrt(k/m);
w2=sqrt((k+2*K)/m);
t=linspace(0,250,100000);
x1=0.5*(cos(w1*t)+cos(w2*t));
tiledlayout('flow')
nexttile

plot(t,x1,'r',Linewidth=1);
hold on
y1=cos(0.5*(w1-w2)*t);
plot(t,y1,'b')
xlabel("Time (in s)")
ylabel("x1 (in m)")
title("\omega_1="+strcat(num2str(sqrt(k/m)),"rads^{-1}")+strcat("and \omega_2="+strcat(num2str(sqrt((k+2*K)/m)),"rads^{-1}")))
nexttile

x2=0.5*(cos(w1*t)-cos(w2*t));
plot(t,x2,'green',linewidth=1)
hold on
y2=sin(0.5*(w2-w1)*t);
plot(t,y2,'b');
xlabel("Time (in s)")
ylabel("x2 (in m)")








