if (instance_exists(obj_quiz_control)) {
    // Só permite clicar se ainda não respondeu
    if (!obj_quiz_control.respondeu) {
        var base_x = x - sprite_width / 2 + 20;
        var base_y = y - sprite_height / 2 + 25;
        var spacing = 40;

        for (var i = 0; i < 4; i++) {
            var alt_y = base_y + i * spacing;

            if (mouse_x >= base_x && mouse_x <= base_x + 400 &&
                mouse_y >= alt_y && mouse_y <= alt_y + spacing) {

                // Marca a alternativa clicada
                obj_quiz_control.opcao_clicada = i;
                break;
            }
        }
    }
}
