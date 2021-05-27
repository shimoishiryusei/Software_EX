t = 0: 1/44100: 5;
y = 0.9 * sin(2 * %pi * 262 * t);
wavwrite(y, 44100, 16, 'test1.wav');
sound(y, 44100);

