n = 1 : 100;
Fs = 8000;
t = 0 : 1/Fs : 1-1/Fs;
DS=[0];
y_nz = grand(1, length(t), 'nor', 0, 1); //ノイズの作成

s = sin(2 * %pi * 440 * t);
y_sn = 0.8 * s + 0.1 * y_nz; //ノイズが混じったsin波形の作成
Y_sn = fft(y_sn);
Y_sn = Y_sn(1:length(y_sn)/2 + 1);
f = linspace(0, 4000, length(Y_sn));

scf(0);

plot2d(n, y_sn(n));

for i = 3 : 1: 100
   DS(i) = 0.0625 * (y_sn(i-2) + 4*y_sn(i-1) + 6*y_sn(i) + 4*y_sn(i+1) + y_sn(i+2));
end

scf(1);
plot2d(n,DS);
xlabel("t[s]");
ylabel("y");



