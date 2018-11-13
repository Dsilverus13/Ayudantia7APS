% Llama 4 veces a la función pr_esp con diferentes parámetros
[k, E] = pr_esp(256, 0, 1); % 1 bloque de 256 muestras
subplot 221; plot(k, E); grid; title('|X| Sin promediación')
[k, E] = pr_esp(256, 0, 10); % 10 bloques, sin traslapo
subplot 222; plot(k, E); grid; title('|X| 10 bloques, sin traslapo')
[k, E] = pr_esp(256, 128, 10); % 10 bloques, con traslapo
subplot 223; plot(k, E); grid; title('|X| 10 bloques, con traslapo')
[k, E] = pr_esp(256, 128, 100); % 100 bloques, con traslapo
subplot 224; plot(k, E); grid; title('|X| 100 bloques, con traslapo')