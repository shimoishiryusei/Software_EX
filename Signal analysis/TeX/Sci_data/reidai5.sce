t = 0 : 1/44100 : 5;
y = 0.9 * sin(2 * %pi * 440 * t);
Y = fft(y);
f = linspace(0, 44100, length(Y));
plot(f, abs(Y));
sound(y, 44100);
