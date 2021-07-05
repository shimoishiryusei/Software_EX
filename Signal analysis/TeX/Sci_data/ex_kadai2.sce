[y, fs, bits] = wavread('voice2.wav'); //voice2.wavを読み込む
y1 = y(3 * fs + (0 : 50000)); //開始から3秒後の50000点を取り出す
Y1 = fft(y1);   //フーリエ変換
Y1 = Y1(1 : length(y1)/ 2+1); //フーリエ変換結果の後ろ半分を破棄
f = linspace(0, fs/2, length(Y1));  //周波数軸を作成
scf(0);
subplot(2,1,1);
xlabel('t');
ylabel('y');
plot(y1); 

subplot(2,1,2);
xlabel('f');
ylabel('Y');
plot(f, abs(Y1));   //フーリエ変換結果を図示
//wavwrite(y, 44100, 16, 'test7.wav');
sound(y1, 44100); //音を出す
xs2png(0, 'ex_kadai2.png');
