if (sprite_index != -1) {
    var cor = c_white;
    var alpha = 1;

    if (variable_instance_exists(id, "indice") && global.cartas_usadas[indice]) {
        cor = make_color_rgb(80, 80, 80); // tom de cinza escuro
    }

    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, cor, alpha);
}