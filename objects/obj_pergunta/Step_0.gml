// Só executa se já respondeu a pergunta
if (obj_quiz_control.respondeu) {
    // Posição e tamanho do botão
    var botao_x = x - 50;
    var botao_y = y + 80;
    var botao_w = 100;
    var botao_h = 40;

    // Verifica se o mouse está dentro da área do botão
    if (mouse_check_button_pressed(mb_left)) {
        var mx = device_mouse_x(0);
        var my = device_mouse_y(0);

        if (mx >= botao_x && mx <= botao_x + botao_w &&
            my >= botao_y && my <= botao_y + botao_h) {
            
            // Avança para a próxima pergunta
            obj_quiz_control.pergunta_atual += 1;
            obj_quiz_control.respondeu = false;
            obj_quiz_control.resposta_correta = -1;
            obj_quiz_control.feedback = "";
        }
    }
}
