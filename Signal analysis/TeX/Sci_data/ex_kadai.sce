n = 1 : 100;
Fs = 8000;
t = 0 : 1/Fs : 1-1/Fs;
y_nz = grand(1, length(t), 'nor', 0, 1); //ノイズの作成

s = sin(2 * %pi * 440 * t);
y_sn = 0.8 * s + 0.1 * y_nz; //ノイズが混じったsin波形の作成

//plot(y_sn)

DS(t) = 0.25(y_sn(t-1/Fs) + y_sn(t) + y_sn(t+1/Fs));

plot(DS(t))
