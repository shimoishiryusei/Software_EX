t = 0: 1/44100: 2;
f = linspace(440, 880, length(t));
y = 0.9 * sin(2 * %pi * f.*t);
wavwrite(y, 44100, 16, 'test4.wav');
sound(y,44100);
