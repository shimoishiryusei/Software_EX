n = 1 : 100;
Fs = 8000;
t = 0 : 1/Fs : 1-1/Fs;
y_nz = grand(1, length(t), 'nor', 0, 1); //ノイズの作成

s = sin(2 * %pi * 440 * t);
y_sn = 0.8 * s + 0.1 * y_nz; //ノイズが混じったsin波形の作成
scf(0);

h = wfir('lp', 40, 0.1375, 'hm', [0 0]); //フィルタの生成
y_fsn = convol(y_sn, h); //フィルタを畳み込んだsin波形

subplot(2,1,1);
xlabel('n');
ylabel('y_nz,y_sn,y_fsn');
plot(n, y_fsn(n),'-b');


w_nz = window('hn', size(y_nz,2)); //窓関数の作成
w_sn = window('hn', size(y_sn,2)); //窓関数の作成
w_fsn = window('hn', size(y_fsn,2)); //窓関数の作成
yw_nz = w_nz.*y_nz;
yw_sn = w_sn.*y_sn;
yw_fsn = w_fsn.*y_fsn; //窓関数を適用

Y_nz = fft(yw_nz);
Y_sn = fft(yw_sn);
Y_fsn = fft(yw_fsn); //フーリエ変換

Y_nz = Y_nz(1 : length(yw_nz) / 2 + 1);
Y_sn = Y_sn(1 : length(yw_sn) / 2 + 1);
Y_fsn = Y_fsn(1 : length(yw_fsn) / 2 + 1); //フーリエ変換結果の後半を削除

f_nz = linspace(0, 4000, length(Y_nz));
f_sn = linspace(0, 4000, length(Y_sn));
f_fsn = linspace(0, 4000, length(Y_fsn)); //周波数軸の作成

subplot(2,1,2);
xlabel('f[Hz]');
ylabel('Y_nz,Y_sn,Y_fsn');
plot(f_fsn,abs(Y_fsn),'-b'); //フィルター付きsin波形のフーリエ変換



