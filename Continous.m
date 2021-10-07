clc; clear all; close all;
% EXPT 2a GENERATION OF SIGNALS
% Elementary  continous time signals
% Vasant Joseph Regno: 20319095

t=-10:0.01:10; % X axis range: From -20 to +20 

%Unit Impulse
x1=(t==0);
subplot(2,3,1)
plot(t,x1); xlabel('n --->'); ylabel('x1(n)');
title('Unit Impulse')

%Unit Step
u=(t>=0);
subplot(2,3,2)
plot(t,u);
axis([-10 10 -2 2]); xlabel('n --->'); ylabel('u(n)'); title('Unit Step')
 
%Unit Ramp
r = u.*t;  
subplot(2,3,3)
plot(t,r); xlabel('time n --->'); ylabel('r(n)'); title('Unit Ramp')
 
%Parabolic
p= 0.5*(t.^2).*u;
subplot(2,3,4)
plot(t,p); xlabel('n --->'); ylabel('p(n)'); title('Parabolic')

%Exponential
a = 0.5;  %constant
x2 = exp(a*t);
subplot(2,3,5)
plot(t,x2); xlabel('n --->'); ylabel('x2(n)'); title('Exponential')
 
%Sinusoidal
f1 = 0.03; %frequency in Hz
x3 = sin(2*pi*f1*t);
subplot(2,3,6)
plot(t,x3); xlabel('n --->'); ylabel('x3(n)'); title('Sinusoidal')


