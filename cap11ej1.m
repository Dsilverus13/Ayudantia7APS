x = 0.2 * ones(1, 5); n = [0 : 4]; w = [0 : 0.01 : 1] * pi; [X] = dtft(x, n, w); subplot 221; plot(w/pi, abs(X));  xlabel('frec. ang. en m�ltiplos de Pi');  title('Magnitud'); grid 
x = 0.1 * ones(1, 10); n = [0 : 9]; w = [0 : 0.01 : 1] * pi; [X] = dtft(x, n, w); subplot 222; plot(w/pi, abs(X));  xlabel('frec. ang. en m�ltiplos de Pi');  title('Magnitud'); grid 
x = [0.07  0.24  0.38  0.24  0.07]; n = [0 : 4]; w = [0 : 0.01 : 1] * pi; [X] = dtft(x, n, w); subplot 223; plot(w/pi, abs(X));  xlabel('frec. ang. en m�ltiplos de Pi');  title('Magnitud'); grid 
 
