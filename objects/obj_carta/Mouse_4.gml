if (variable_instance_exists(id, "indice")) {
    if (!global.cartas_usadas[indice]) {  // só permite se ainda não foi usada

        // Aplica o efeito da carta:
        switch (indice) {
            case 1:
                if (instance_exists(global.instancia_chefe)) {
                    global.instancia_chefe.vida_atual -= 2;
                }
                break;
            case 2:
                if (instance_exists(global.instancia_jogador)) {
                    global.instancia_jogador.vida_atual -= 2;
                }
                break;
            case 3:
                if (instance_exists(global.instancia_chefe)) {
                    global.instancia_chefe.vida_atual += 2;
                }
                break;
            case 4:
                if (instance_exists(global.instancia_jogador)) {
                    global.instancia_jogador.vida_atual += 2;
                }
                break;
        }

        // Marca essa carta como usada
        global.cartas_usadas[indice] = true;

        // Reduz o contador de cartas restantes em obj_quiz_control
        if (instance_exists(obj_quiz_control)) {
            obj_quiz_control.cartas_restantes = max(0, obj_quiz_control.cartas_restantes - 1);
        }

        // Remove todas as cartas após a seleção
        with (obj_carta) {
            instance_destroy();
        }

        // Reexibe a pergunta e destrói o container de cartas
        obj_quiz_control.exibir_pergunta = true;
        if (instance_exists(obj_cartas_container)) {
            with (obj_cartas_container) {
                instance_destroy();
            }
        }
    }
}
