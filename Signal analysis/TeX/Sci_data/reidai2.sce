t = 0: 1/44100: 5;
y = 0.4 * sin(2 * %pi * 440 * t) + 0.3 * sin(2 * %pi * 880 * t) + 0.2 * sin(2 * %pi * 11320 * t);
wavwrite(y, 44100, 16, 'test2.wav');
sound(y, 44100);
