if (variable_instance_exists(id, "indice")) {
    switch (indice) {
        case 1:
            if (instance_exists(global.instancia_chefe)) {
                global.instancia_chefe.vida -= 2;
            }
            break;
        case 2:
            if (instance_exists(global.instancia_jogador)) {
                global.instancia_jogador.vida -= 2;
            }
            break;
        case 3:
            if (instance_exists(global.instancia_chefe)) {
                global.instancia_chefe.vida += 2;
            }
            break;
        case 4:
            if (instance_exists(global.instancia_jogador)) {
                global.instancia_jogador.vida += 2;
            }
            break;
    }

    // Remove todas as cartas após uma ser clicada
    with (obj_carta) {
        instance_destroy();
    }

    // Exibe novamente a pergunta
    obj_quiz_control.exibir_pergunta = true;

    // Destroi o container após o uso
    if (instance_exists(obj_cartas_container)) {
        with (obj_cartas_container) {
            instance_destroy();
        }
    }
}
