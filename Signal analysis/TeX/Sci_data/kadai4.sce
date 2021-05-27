t = 0: 1/44100: 2;  //時間軸の作成
f = linspace(500, 300, length(t)); //周波数軸の作成
y = 0.9 * sin(2 * %pi * f.*t); //周波数(音)の作成
wavwrite(y, 44100, 16, 'enshu4.wav'); //音声データの書き出し
sound(y,44100); //音を鳴らす
scf(0);
xlabel('t');
ylabel('y');
plot(t,y);

xs2png(0, 'kadai4.png') //グラフをpngで保存
