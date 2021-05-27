n = 1 : 100;
Fs = 8000;
t = 0 : 1/Fs : 1-1/Fs;
nz = grand(1, length(t), 'nor', 0, 1); plot(n, nz(n));
sound(nz, Fs);
s = sin( 2 * %pi * 440 * t);
sn = 0.8 * s + 0.1 * nz;
plot(n, sn(n));
sound(sn, Fs);

h = ones(1, 3) / 3 
fsn = conv(sn, h);
plot(n, fsn(n)); 
sound(fsn, Fs);
