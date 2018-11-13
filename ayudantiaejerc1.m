% Datos 
fc = 200;   % frecuencia de corte en [Hz] 
FC = 250;
Fs = 1000;  % frec. de muestreo en [Hz] 
N = 30;     % longitud de la respuesta impulso 
f1 = 0;     % frec. mínima para el cálculo de la respuesta de frec. 
f2 = 500;   % frec. máxima para el cálculo de la respuesta de frec. 
m1 = 1e-6;  % límite inferior del gráfico de magnitud 
 % Diseña el filtro 
 wn = [2 * fc / Fs, 2*FC/Fs]; 
 b=fir1(N-1, wn, 'bandpass',hanning(N)); 
 t=fir1(N-1, wn, 'bandpass',hamming(N));
 k=fir1(N-1, wn, 'bandpass',kaiser(N,10));
 % Graba h(n) 
 h1 = b'; save 'h1.txt' h1 -ascii   % Calcula la respuesta de frecuencia obtenida
 h2 = t'; save 'h2.txt' h2 -ascii
 h3 = k'; save 'h3.txt' h3 -ascii
 
 f = [f1 : (f2-f1)/1023 : f2]; 
 H1 = freqz(b, 1, f, Fs); 
 H2 = freqz(t, 1, f, Fs);
 H3 = freqz(k, 1, f, Fs);

 % Grafica 
 subplot 311; semilogy(f, abs(H1)); 
 axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H1)') 
 subplot 312; semilogy(f, abs(H2));  axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H2)') 
 subplot 313; semilogy(f, abs(H3));  axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H3)') 