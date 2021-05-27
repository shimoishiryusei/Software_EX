clear();
clc();
s = %s;
K = 1;
t = 0:0.1:100;
A = 1;

zeta = 0.25;
Omeg = 0.1;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(0);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 0.5;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(1);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 1.0;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(2);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();


zeta = 0.5;
Omeg = 0.1;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(3);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 0.5;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(4);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 1.0;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(5);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();


zeta = 1;
Omeg = 0.1;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(6);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 0.5;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(7);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

Omeg = 1.0;
P = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg))
u = A*sin(Omeg*t);
y = csim(u,t,P);
yss = A/(1+Omeg*Omeg)*(sin(Omeg*t)-Omeg*cos(Omeg*t));
scf(8);
plot2d(t,u,style=color(125,125,125));
plot2d(t,y,style=3);
plot2d(t,yss,style=2);
xtitle("Frequency Response","time[s]","u,y,yss");
xgrid();

xs2png(0, '1.png');
xs2png(1, '2.png');
xs2png(2, '3.png');
xs2png(3, '4.png');
xs2png(4, '5.png');
xs2png(5, '6.png');
xs2png(6, '7.png');
xs2png(7, '8.png');
xs2png(8, '9.png');
