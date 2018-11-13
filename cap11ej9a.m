mr = audioread('mr.wav');          % música + ruido 
load h.txt;                        % h(n) 
mf = conv(h, mr);                  % filtra 
soundsc(mf, 11025)                 % reproduce sonido filtrado 
audiowrite(mf, 11025, 8, 'mf.wav')   % graba 'mf.wav