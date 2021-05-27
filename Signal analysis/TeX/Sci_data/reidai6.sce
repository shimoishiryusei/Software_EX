t = 0 : 1/44100 : 2;    //時間軸の作成
y = 0.9 * sin(2 * %pi * 440 * t); //440Hzの正弦波を作成
Y = fft(y); //フーリエ変換
Y = Y(1: length(y)/ 2 + 1);     //フーリエ変換結果の後ろ半分を破棄
f = linspace(0, 22050, length(Y)); //周波数軸を作成
scf(0);
subplot(2,1,1);
xlabel('t');
ylabel('y');
plot(y1); 

subplot(2,1,2);
xlabel('f');
ylabel('Y');
plot(f, abs(Y));    //フーリエ変換結果を図示
sound(y, 44100);
xs2png(0,'reidai6.png'); //グラフをpngで保存
