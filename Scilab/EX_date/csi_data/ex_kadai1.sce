clear;
clf;
scf(0);
s=%s;
P1 = syslin('c', 2/(3*s+1))
P2 = syslin('c', 4/(7*s+1))
P3 = syslin('c', 6/(8*s+1))
nyquist([P1;P2;P3],%t)
xs2png(0, 'ex4-2.png')
