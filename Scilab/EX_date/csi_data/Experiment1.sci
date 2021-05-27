clear();
s = %s;
K = 3;
T = 1;
P = syslin('c', K/(T*s+1));
t = 0:0.001:20;
u = ones(t);
y = csim(u,t,P);
xmin = 0; xmax = 10; ymin = -0.5; ymax = 3.5;
scf(0);

plot2d(t,u,style=color(0,0,255),rect=[xmin ymin xmax ymax]);

plot2d(t,y,style=color(255,0,0),rect=[xmin ymin xmax ymax]);

xtitle('Step Response', 'time[s]', 'u, y')
xgrid();

xs2png(0, 'experiment3-2.png')
