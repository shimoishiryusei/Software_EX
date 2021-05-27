[y, fs, bits] = wavread('enshu4.wav');
scf();
mapsound(y, 0.02, 200, 10000, 1, fs);
f = gcf();
f.color_map = jetcolormap(256);
