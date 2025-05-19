if (respondeu && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    if (variable_global_exists("botao_x") &&
        variable_global_exists("botao_y") &&
        variable_global_exists("botao_w") &&
        variable_global_exists("botao_h")) {

        if (point_in_rectangle(mx, my, global.botao_x, global.botao_y, global.botao_x + global.botao_w, global.botao_y + global.botao_h)) {
            // Avança para a próxima pergunta
            pergunta_atual += 1;
            respondeu = false;
            alternativa_selecionada = -1;
            feedback = "";
        }
    }
}
