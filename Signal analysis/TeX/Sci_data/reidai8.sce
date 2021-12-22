[y, fs, bits] = wavread('enshu4.wav'); //enshu4.wavを読み込む
y1 = y(1 * fs + (0 : 4095));    //開始から1秒後の4096点を取り出す
w = window('hn', size(y1,2));   //ハニング窓の作成
y1 = w.*y1;     //作成したハニング窓をかける
Y1 = fft(y1);   //フーリエ変換
Y1 = Y1(1 : length(y1)/ 2+1);   //フーリエ変換結果の後半分を破棄
f = linspace(0, fs/2, length(Y1));  //周波数軸を作成

subplot(2,1,1);
xlabel('t[s]');
ylabel('y');
plot(y1);

subplot(2,1,2);
xlabel('f[Hz]');
ylabel('Y');
plot(f, abs(Y1));       //フーリエ変換結果を図示




