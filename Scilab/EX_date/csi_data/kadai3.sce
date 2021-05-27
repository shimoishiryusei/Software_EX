clear();
clc();
s = %s;
P = syslin('c',1/(s*s+1.4*s+1))
t = 0:0.01:20;
A = 1;
Omeg = 50;
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(0);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();
xs2png(0, '3-1-2-50.png')
