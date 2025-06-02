// Inicializa opcao_clicada se não existir
if (!variable_instance_exists(id, "opcao_clicada")) {
    opcao_clicada = -1;
}

// Verifica se o jogador clicou numa opção válida e ainda não respondeu
if (!respondeu && opcao_clicada >= 0) {
    alternativa_selecionada = opcao_clicada;

    if (alternativa_selecionada == respostas_certas[pergunta_atual]) {
        // Resposta correta: diminui vida do chefe
        with (obj_coracao_chefe) {
            vida_atual = max(0, vida_atual - 1);
            show_debug_message("Correto! Vida do chefe: " + string(vida_atual));
        }
        feedback = "Correto!";
    } else {
        // Resposta errada: diminui vida do jogador
        with (obj_coracao_jogador) {
            vida_atual = max(0, vida_atual - 1);
            show_debug_message("Errado! Vida do jogador: " + string(vida_atual));
        }
        feedback = "Errado!";
    }

    respondeu = true;
    opcao_clicada = -1;

    // Checa se já respondeu 5 perguntas para aumentar vida
    if ((pergunta_atual + 1) % 5 == 0) {
        var jogador = instance_find(obj_coracao_jogador, 0);
        if (jogador != noone && jogador.vida_atual < jogador.vida_max) {
            jogador.vida_atual += 1;
            show_debug_message("Vida do jogador aumentou para: " + string(jogador.vida_atual));
        }
    }
}

// Avança para próxima pergunta ao clicar no botão avançar
if (respondeu && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    if (variable_global_exists("botao_x") &&
        variable_global_exists("botao_y") &&
        variable_global_exists("botao_w") &&
        variable_global_exists("botao_h")) {

        if (point_in_rectangle(mx, my, global.botao_x, global.botao_y, global.botao_x + global.botao_w, global.botao_y + global.botao_h)) {
            pergunta_atual += 1;
            respondeu = false;
            alternativa_selecionada = -1;
            feedback = "";
        }
    }
}

// Detecta a fase atual
var fase = floor(pergunta_atual / 5);

// Verifica se o jogador perdeu (vida chegou a 0)
if (instance_exists(obj_coracao_jogador)) {
    if (obj_coracao_jogador.vida_atual <= 0) {
        room_goto(Fim_de_jogo1); // Redireciona para a tela de derrota
    }
}

// Verifica se todas as perguntas foram respondidas
if (pergunta_atual >= 26) {
    if (instance_exists(obj_coracao_chefe)) {
        if (obj_coracao_chefe.vida_atual > 0) {
            room_goto(Fim_de_jogo1); // Chefe ainda tem vida, jogador perdeu
        } else {
            room_goto(Fim_de_jogo2); // Chefe derrotado, jogador venceu
        }
    }
} else {
    // Se não respondeu todas as perguntas ainda, mas o chefe zerou a vida
    if (instance_exists(obj_coracao_chefe) && obj_coracao_chefe.vida_atual <= 0) {
        room_goto(Fim_de_jogo2); // Jogador venceu antes de acabar as perguntas
    }
}
