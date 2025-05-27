draw_self(); // Desenha o sprite normalmente

draw_set_color(c_white);
draw_set_font(Font1);

// Verifica se o obj_quiz_control existe para acessar a pergunta atual
if (instance_exists(obj_quiz_control)) {
    var pergunta_atual = obj_quiz_control.pergunta_atual + 1; // +1 para mostrar começando em 1
    var total_perguntas = array_length(obj_quiz_control.perguntas);

    // Formata o texto do progresso, ex: "01/26"
    var texto = string_format(pergunta_atual, 2, 0) + "/" + string(total_perguntas);

    var largura_texto = string_width(texto);
    var altura_texto = string_height(texto);

    // Centralizar texto dentro do sprite
    var pos_x = x - sprite_width/2 + (sprite_width - largura_texto) / 2;
    var pos_y = y - sprite_height/2 + (sprite_height - altura_texto) / 2;

    // Ajuste fino para posicionar texto
    pos_y += 80;
    pos_x += 80;

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(pos_x, pos_y, texto);
}
else {
    // Caso não tenha obj_quiz_control na room, mostra só o padrão
    var texto = "01/26";
    var largura_texto = string_width(texto);
    var altura_texto = string_height(texto);
    var pos_x = x - sprite_width/2 + (sprite_width - largura_texto) / 2;
    var pos_y = y - sprite_height/2 + (sprite_height - altura_texto) / 2;
    pos_y += 80;
    pos_x += 80;

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(pos_x, pos_y, texto);
}
