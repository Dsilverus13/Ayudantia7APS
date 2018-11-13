N = 20; % longitud del pulso Tx
Tx = [ones(1, N) zeros(1, 1000-N)];
Rx = [zeros(1, 600) ones(1, N) ...
zeros(1, 400-N)] + ...
0.5 * randn(1, 1000);
[Corr, lags] = xcorr(Rx, Tx);
subplot 321; plot(Tx); grid;
axis([1 1000 -0.5 1.5]);
title('Tx N = 20')
subplot 323; plot(Rx); grid;
axis([1 1000 -3 3]); title('Rx')
subplot 325; plot(lags, Corr); grid;
axis([1 1000 -20 70]); title('Corr');