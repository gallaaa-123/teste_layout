var escala_x = 0.2; // Largura
var escala_y = 0.2; // Altura

for (var i = 0; i < vida_atual; i++) {
    var pos_x = x + i * (sprite_width * escala_x + 5); // 5 é um espaçamento extra
    draw_sprite_ext(Sprite8, 0, pos_x, y, escala_x, escala_y, 0, c_white, 1);
}
