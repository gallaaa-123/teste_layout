// Desenha a pergunta se ainda não respondeu
if (!obj_quiz_control.respondeu) {
    // Desenha o fundo baseado no conteúdo
if (obj_quiz_control.exibir_pergunta) {
    var pergunta = obj_quiz_control.perguntas[obj_quiz_control.pergunta_atual];
    
    draw_set_font(Font1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Cálculo do tamanho do texto
    var texto_w = string_width(pergunta);
    var texto_h = string_height(pergunta);

    // Margens internas
    var padding_x = 32;
    var padding_y = 24;

    // Posição base
    var deslocamento = 200;  // quanto mover para a esquerda
	var base_x = x - texto_w / 2 - padding_x / 2 - deslocamento;

    var base_y = y - texto_h / 2 - padding_y / 2;

    var fundo_w = texto_w + padding_x;
    var fundo_h = texto_h + padding_y;

    // Fundo arredondado (balão de fala)
    draw_set_color(#C50303);
    draw_roundrect(base_x, base_y, base_x + fundo_w, base_y + fundo_h, false);

    // Desenha o texto
    draw_set_color(c_white);
    draw_text(base_x + padding_x / 2, base_y + padding_y / 2, pergunta);
}
}

// Exibe feedback e botão "Avançar"
if (obj_quiz_control.respondeu) {
    // Container vermelho (fundo da mensagem e botão)
    var container_w = 320;  // Ajustei a largura
    var container_h = 160;  // Ajustei a altura
    var container_x = x - container_w / 2;
    var container_y = y - 80;

    draw_set_color(make_color_rgb(197, 3, 3)); // vermelho
    draw_roundrect(container_x, container_y, container_x + container_w, container_y + container_h, false);

    // Feedback centralizado
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(x, container_y + 40, obj_quiz_control.feedback);

    // Botão "Avançar" com fundo branco e texto preto
    var botao_w = 160;  // Ajustei a largura
    var botao_h = 40;   // Ajustei a altura
    var botao_x = x - botao_w / 2;
    var botao_y = container_y + container_h - botao_h - 15;

    // Salva posição global do botão
    global.botao_x = botao_x;
    global.botao_y = botao_y;
    global.botao_w = botao_w;
    global.botao_h = botao_h;

    // Padding horizontal
    var padding = 8;

    // Fundo branco do botão com padding interno (reduz a largura do retângulo para o padding)
    draw_set_color(c_white);
    draw_roundrect(botao_x + padding, botao_y, botao_x + botao_w - padding, botao_y + botao_h, false);

    // Texto preto no botão, centralizado no botão inteiro
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(botao_x + botao_w / 2, botao_y + botao_h / 2, "Avançar");
}