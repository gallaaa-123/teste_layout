// Só desenha se a variável 'indice' existir
if (variable_instance_exists(id, "indice")) {
    var spr;

    switch (indice) {
        case 1: spr = carta1; break;
        case 2: spr = carta2; break;
        case 3: spr = carta3; break;
        case 4: spr = carta4; break;
        default: spr = -1; break;
    }

    if (spr != -1 && sprite_exists(spr)) {
        var pos_x = x;      // posição X da carta (pode ajustar aqui)
        var pos_y = 100;      // posição Y da carta (pode ajustar aqui)
        var escala_x = 0.25; // escala horizontal (0.5 = metade do tamanho)
        var escala_y = 0.32; // escala vertical

        // desenha o sprite na posição com escala ajustada, sem rotação, sem efeito de cor
        draw_sprite_ext(spr, 0, pos_x, pos_y, escala_x, escala_y, 0, c_white, 1);
    }
}
