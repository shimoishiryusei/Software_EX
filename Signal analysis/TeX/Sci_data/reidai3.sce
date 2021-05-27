t = 0: 1/44100: 2;
A1 = linspace(0,0.99,ceil(0.02/44100));
A2 = linspace(0.99,0,floor(length(t) - 0.01/44100));
A = [A1 A2];
y = A.*sin(2*%pi*440*t);
wavwrite(t,44100, 16, 'test3.wav');
sound(y, 44100);
