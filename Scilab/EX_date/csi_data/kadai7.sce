clear();
clc();
s=%s;

P=(s+0.1)/(s+1);
P1=1/s+1;
P2=s+0.1;

w = logspace(-2,2,400);

Pjw = horner(P,%i*w);
[Phase,GaindB] = phasemag(Pjw,'c');
P1jw = horner(P1,%i*w);
[Phase1,GaindB1] = phasemag(P1jw,'c');
P2jw = horner(P2,%i*w);
[Phase2,GaindB2] = phasemag(P2jw,'c');
scf(0);
xset('window',0);
subplot(211);
plot2d(w,GaindB, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();

scf(1);
xset('window',1);
subplot(211);
plot2d(w,GaindB1, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase1, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();

scf(2);
xset('window',2);
subplot(211);
plot2d(w,GaindB2, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase2, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();

scf(3);
xset('window',3);
subplot(211);
plot2d(w,GaindB, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();
xset('window',3);
subplot(211);
plot2d(w,GaindB1, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase1, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();
xset('window',3);
subplot(211);
plot2d(w,GaindB2, logflag='ln', style=2);
xtitle('Bode Diagram','ω[rad/s]','Gain[dB]')
xgrid();
subplot(212);
plot2d(w,Phase2, logflag='ln', style=2);
xtitle('', 'w[rad/s]','Phase[degree]')
xgrid();


xs2png(0, 'kadai7-1.png')
xs2png(1, 'kadai7-2.png')
xs2png(2, 'kadai7-3.png')
xs2png(3, 'kadai7-4.png')
