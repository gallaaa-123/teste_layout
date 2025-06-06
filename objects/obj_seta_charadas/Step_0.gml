// Enquanto estiver girando
if (tempo_atual < tempo_total && pode_executar) {
    image_index = (tempo_atual div 10) mod 2; // alterna entre 0 e 1
    tempo_atual++;
}
else if (pode_executar) {
    // Parar a rotação
    pode_executar = false;

    // Escolhe aleatoriamente a direção final
    var sorte = irandom(1); // 0 = para baixo (jogador), 1 = para direita (chefe)
    image_index = 1 - sorte;

    // Aplica dano com base na direção final
    if (sorte == 0) {
        if (instance_exists(global.instancia_jogador)) {
            global.instancia_jogador.vida_atual -= 3;
        }
    } else {
        if (instance_exists(global.instancia_chefe)) {
            global.instancia_chefe.vida_atual -= 3;
        }
    }

    // Aguarda 1 segundo antes de destruir a seta
    alarm[0] = 30;
}
