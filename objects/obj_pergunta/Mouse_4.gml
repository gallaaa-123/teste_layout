if (obj_quiz_control.respondeu) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    // Usa os valores definidos no Draw
    if (mx >= global.botao_x && mx <= global.botao_x + global.botao_w &&
        my >= global.botao_y && my <= global.botao_y + global.botao_h) {

        // Avança para próxima pergunta
        obj_quiz_control.pergunta_atual += 1;
        obj_quiz_control.respondeu = false;
        obj_quiz_control.feedback = "";
    }
}
