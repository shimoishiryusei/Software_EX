clear();
clc();
s = %s;
scf(0);
K = 1;
Omeg = 1;

zeta = 0.25;
P1 = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg));

zeta = 0.5;
P2 = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg));

zeta = 1;
P3 = syslin('c',K*Omeg*Omeg/(s*s+2*zeta*Omeg*s+Omeg*Omeg));

nyquist([P1;P2;P3;],%t);
//xs2png(0, 'nyquist1.png')
