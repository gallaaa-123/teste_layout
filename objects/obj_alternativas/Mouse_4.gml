if (instance_exists(obj_quiz_control)) {
    var base_x = x - sprite_width/2 + 40;
    var base_y = y - sprite_height/2 + 388;
    var spacing = 40;

    for (var i = 0; i < 4; i++) {
        var alt_y = base_y + i * spacing;
        if (mouse_x >= base_x && mouse_x <= base_x + 400 && mouse_y >= alt_y && mouse_y <= alt_y + spacing) {
            
            // Marca a alternativa escolhida
            obj_quiz_control.alternativa_selecionada = i;
            obj_quiz_control.respondeu = true;

            // Verifica se está certa
            if (i == obj_quiz_control.respostas_certas[obj_quiz_control.pergunta_atual]) {
                obj_quiz_control.feedback = "Correto!";
            } else {
                obj_quiz_control.feedback = "Errado!";
            }
        }
    }
}
