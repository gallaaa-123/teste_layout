// Escala visual da seta
image_xscale = 0.1;
image_yscale = 0.1;

// Define o tempo de rotação aleatório (2 a 4 segundos, considerando 30 FPS)
tempo_total = irandom_range(60, 120); // 2 a 4 segundos
tempo_atual = 0;

// Controle de execução
pode_executar = true;
