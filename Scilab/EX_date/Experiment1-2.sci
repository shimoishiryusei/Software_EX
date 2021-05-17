clear();
s = %s;
K = 1.5;
omega = 6;
zeta = 0.1;
P1 = syslin('c', K*omega^2/(s^2 + 2 * zeta * omega*s + omega^2));

omega = 6;
zeta = 0.5;
P2 = syslin('c', K*omega^2/(s^2 + 2 * zeta * omega*s + omega^2));

omega = 6;
zeta = 1.0;
P3 = syslin('c', K*omega^2/(s^2 + 2 * zeta * omega*s + omega^2));

t = 0:0.1:20;
u = ones(t);

y1 = csim(u,t,P1);
y2 = csim(u,t,P2);
y3 = csim(u,t,P3);
xmin = 0; xmax = 10; ymin = -0.5; ymax = 2;
scf(0);

plot2d(t,u,style=color(0,0,255),rect=[xmin ymin xmax ymax]);

plot2d(t,y1,style=color(255,0,0),rect=[xmin ymin xmax ymax]);
plot2d(t,y2,style=color(0,255,0),rect=[xmin ymin xmax ymax]);
plot2d(t,y3,style=color(50,0,20),rect=[xmin ymin xmax ymax]);

xtitle('Step Response', 'time[s]', 'u, y')
xgrid();

xs2png(0, 'experiment1-2-3.png')
