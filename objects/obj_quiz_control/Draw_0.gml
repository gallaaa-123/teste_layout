if (mostrar_aviso_fase) {
    // Fundo escurecido cobrindo toda a tela
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1);

    // Mensagem com quebra de linha
    var mensagem = "Parabéns! Você avançou de fase,\na dificuldade aumentou e você ganhou uma vida extra.";
    var texto_largura = string_width("a dificuldade aumentou e você ganhou uma vida extra."); // linha mais longa
    var texto_altura = string_height("Parabéns!") * 2;
    var centro_x = display_get_width() div 2;
    var centro_y = display_get_height() div 2;

    draw_set_color(c_white);
    draw_text(centro_x - texto_largura div 2, centro_y - texto_altura, mensagem);

    // Botão centralizado abaixo do texto
    var padding_horizontal = 8;
    var texto_botao = "Continuar";
    var largura_botao = string_width(texto_botao) + padding_horizontal * 2;
    var altura_botao = string_height(texto_botao) + 10;
    var botao_x = centro_x - largura_botao div 2;
    var botao_y = centro_y + 20;

    // Desenhar botão
    draw_set_color(c_red);
    draw_rectangle(botao_x, botao_y, botao_x + largura_botao, botao_y + altura_botao, false);

    // Texto do botão
    draw_set_color(c_white);
    draw_text(botao_x + padding_horizontal, botao_y + 5, texto_botao);

    // Atualizar coordenadas do botão para uso no clique
    botao_aviso_x = botao_x;
    botao_aviso_y = botao_y;
    botao_aviso_w = largura_botao;
    botao_aviso_h = altura_botao;
}