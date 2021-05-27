clear();
clc();
scf(0);
s = %s;
Omeg = 1;
zeta = 0.25;
G1 = Omeg*Omeg/(s^2+2*zeta*Omeg*s+Omeg*Omeg);
P1 = syslin('c',G1);
Peak_freq1 = freson(P1)
w_freq1 = 2*%pi*Peak_freq1
Max_G1 = 20*log10(abs(horner(G1,%i*w_freq1)))


zeta = 0.5;
G2 = Omeg*Omeg/(s^2+2*zeta*Omeg*s+Omeg*Omeg);
P2 = syslin('c',G2);
Peak_freq2 = freson(P2)
w_freq2 = 2*%pi*Peak_freq2
Max_G2 = 20*log10(abs(horner(G2,%i*w_freq2)))

zeta = 1.0;
G3 = Omeg*Omeg/(s^2+2*zeta*Omeg*s+Omeg*Omeg);
P3 = syslin('c',G3);
Peak_freq3 = freson(P3)
w_freq3 = 2*%pi*Peak_freq3
Max_G3 = 20*log10(abs(horner(G3,%i*w_freq3)))

xset('window',0);
bode([P1;P2;P3]);

disp(Peak_freq1)
disp(w_freq1)
disp(Max_G1)
disp(Peak_freq2)
disp(w_freq2)
disp(Max_G2)
disp(Peak_freq3)
disp(w_freq3)
disp(Max_G3)

//xs2png(0, 'kadai6.png')
