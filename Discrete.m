clc; clear all; close all;
% EXPT 2a GENERATION OF SIGNALS
% Elementary  discrete time signals
% Vasant Joseph Regno: 20319095

n=-20:20; % X coordinates range: From -20 to +20 

%Unit Impulse
x1=(n==0);
subplot(2,3,1)
stem(n,x1); xlabel('n --->'); ylabel('x1(n)');
title('Unit Impulse')
grid on;

%Unit Step
u=(n>=0);
subplot(2,3,2)
stem(n,u);
axis([-20 20 -2 2]); xlabel('n --->'); ylabel('u(n)'); title('Unit Step')
grid on;

%Unit Ramp
r = u.*n;  
subplot(2,3,3)
stem(n,r); xlabel('time n --->'); ylabel('r(n)'); title('Unit Ramp')
grid on;

%Parabolic
p= 0.5*(n.^2).*u;
subplot(2,3,4)
stem(n,p); xlabel('n --->'); ylabel('p(n)'); title('Parabolic')
grid on;

%Exponential
a = 1;  %constant
x2 = exp(a*n);
subplot(2,3,5)
stem(n,x2); xlabel('n --->'); ylabel('x2(n)'); title('Exponential')
grid on;

%Sinusoidal
f1 = 0.03; %frequency in Hz
x3 = sin(2*pi*f1*n);
subplot(2,3,6)
stem(n,x3); xlabel('n --->'); ylabel('x3(n)'); title('Sinusoidal')
grid on;

