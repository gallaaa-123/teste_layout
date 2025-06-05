draw_self(); // Desenha o balão de fundo

draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if (!obj_quiz_control.respondeu) {
    var pergunta = obj_quiz_control.perguntas[obj_quiz_control.pergunta_atual];

    // Margens internas do balão
    var margin_left = -48;
    var margin_top = 184;
    var base_x = x - sprite_width / 2 + margin_left;
    var base_y = y - sprite_height / 2 + margin_top;
	draw_set_font(Font1);
    draw_text(base_x, base_y, pergunta);
}

// Exibe feedback e botão "Avançar"
if (obj_quiz_control.respondeu) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(x + -70, y - 60, obj_quiz_control.feedback);

    // Botão "Avançar"
    var botao_w = 160;
    var botao_h = 40;
    var botao_x = x + 50;
    var botao_y = y + -25;

    // Salva a posição globalmente para o clique funcionar
    global.botao_x = botao_x;
    global.botao_y = botao_y;
    global.botao_w = botao_w;
    global.botao_h = botao_h;

    draw_set_color(c_white);
    draw_roundrect(botao_x, botao_y, botao_x + botao_w, botao_y + botao_h, false);

    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(botao_x + botao_w / 2, botao_y + botao_h / 2, "Avançar");
}
