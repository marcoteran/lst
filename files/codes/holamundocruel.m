close all; clear; clc;
set(0,'defaultTextInterpreter','latex');

%% Mi primer script
% No está tan bold
ni=-10;
nf=10;
n = ni:nf; % variable de DT
s=abs(n);

figure()
stem(n,s,'LineWidth',1);
grid minor;
ylim([-0.5 max(s)+0.5]);
xlim([-10.5 10.5]);

% Señal de tiempo continuo
ti=-20; tf=20;
ts=0.1;
t=ti:ts:tf;
T=4;
w=2*pi/T;
x=3*sin(w*t);

figure()
plot(t,x,'LineWidth',1);
grid minor;
ylim([min(x)-0.5 max(x)+0.5]);
xlabel('$t$'); ylabel('$x(t)=sin(\frac{2\pi}{T}t)$');

%           0, t<0
% r(t) = { t^2, t>=0

index_z=find(t==0);
r=t.^2;
r(1:index_z-1)=0;

figure()
plot(t,r,'LineWidth',1);
grid minor;
ylim([min(r)-15 max(r)+0.5]);
xlabel('$t$'); ylabel('$r(t)$');


xl=0.5*t+1;
xl(index_z+1:end)=0;
xr=-0.5*t+1;
xr(1:index_z)=0;
xt=xr+xl;
figure()
plot(t,xt,'LineWidth',1);
%hold on
%plot(t,xr,'LineWidth',1);
grid minor;
%ylim([-0.1 max(r)+0.5]);
xlabel('$t$'); ylabel('$r(t)$');



