if (!variable_instance_exists(id, "opcao_clicada")) {
    opcao_clicada = -1;
}

// Verifica transição de fase
if (pergunta_atual == 5 || pergunta_atual == 10 || pergunta_atual == 15 || pergunta_atual == 20 || pergunta_atual == 25) {
    if (fase_mostrada != pergunta_atual) {
        mostrar_aviso_fase = true;
        fase_mostrada = pergunta_atual;

        if (instance_exists(obj_coracao_jogador)) {
            with (obj_coracao_jogador) {
                vida_atual += 1;
            }
        }
    }
}

// Fecha modal de aviso de fase
if (mostrar_aviso_fase && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    if (point_in_rectangle(mx, my, botao_aviso_x, botao_aviso_y, botao_aviso_x + botao_aviso_w, botao_aviso_y + botao_aviso_h)) {
        mostrar_aviso_fase = false;
    }
}

// Respondeu?
if (!respondeu && opcao_clicada >= 0 && !mostrar_aviso_fase) {
    alternativa_selecionada = opcao_clicada;

    if (alternativa_selecionada == respostas_certas[pergunta_atual]) {
        with (obj_coracao_chefe) {
            vida_atual = max(0, vida_atual - 1);
        }
        feedback = "Correto!";
    } else {
        with (obj_coracao_jogador) {
            vida_atual = max(0, vida_atual - 1);
        }
        feedback = "Errado!";
    }

    respondeu = true;
    opcao_clicada = -1;
}

// Botão de próxima pergunta
if (respondeu && mouse_check_button_pressed(mb_left) && !mostrar_aviso_fase) {
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
            exibir_pergunta = true;
        }
    }
}

// Derrota?
if (instance_exists(obj_coracao_jogador) && obj_coracao_jogador.vida_atual <= 0) {
    room_goto(Fim_de_jogo1);
}

// Vitória?
if (pergunta_atual >= 30) {
    if (instance_exists(obj_coracao_chefe)) {
        if (obj_coracao_chefe.vida_atual > 0) {
            room_goto(Fim_de_jogo2);
        } else {
            room_goto(Fim_de_jogo3);
        }
    }
} else if (instance_exists(obj_coracao_chefe) && obj_coracao_chefe.vida_atual <= 0) {
    room_goto(Fim_de_jogo3);
}

function abrir_cartas() {
    if (!instance_exists(obj_cartas_container)) {
        exibir_pergunta = false;
        instance_create_layer(630, 100, "Instances_1", obj_cartas_container);
    }
}

// Música por fase
if (pergunta_atual < 5) {
    if (!audio_is_playing(mus_fase1)) {
        audio_stop_all();
        audio_play_sound(mus_fase1, 1, true);
    }
} else if (pergunta_atual < 10) {
    if (!audio_is_playing(mus_fase1)) {
        audio_stop_all();
        audio_play_sound(mus_fase1, 1, true);
    }
} else if (pergunta_atual < 15) {
    if (!audio_is_playing(mus_fase2)) {
        audio_stop_all();
        audio_play_sound(mus_fase2, 1, true);
    }
} else if (pergunta_atual < 20) {
    if (!audio_is_playing(mus_fase2)) {
        audio_stop_all();
        audio_play_sound(mus_fase2, 1, true);
    }
} else {
    if (!audio_is_playing(mus_fase3)) {
        audio_stop_all();
        audio_play_sound(mus_fase3, 1, true);
    }
}
