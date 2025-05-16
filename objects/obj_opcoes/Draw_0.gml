draw_self(); // Desenha o sprite

// Define fontes
var font_normal = Font1;
var font_hover = Font1; // Use uma versão maior aqui se quiser um zoom mais visível

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Margens internas do sprite
var margin_left = 350;
var margin_top = 405;
var spacing = 40;

var base_x = x - sprite_width/2 + margin_left;
var base_y = y - sprite_height/2 + margin_top;

// Lista de opções
var opcoes = [
    "Cartas",
    "Charadas",
    "Pular 3x"
];

// Altura estimada da linha
var altura_linha = spacing;

// Coordenadas do mouse
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// Loop para desenhar cada opção
for (var i = 0; i < array_length(opcoes); i++) {
    var opt_y = base_y + i * spacing;

    // Verifica se o mouse está sobre a opção
    var is_hover = (mx >= base_x) && (mx <= base_x + 300) // ajuste a largura se necessário
                && (my >= opt_y) && (my <= opt_y + altura_linha);

    if (is_hover) {
        draw_set_font(font_hover);
        draw_set_color(c_black);
    } else {
        draw_set_font(font_normal);
        draw_set_color(make_color_rgb(100, 100, 100)); // cinza claro
    }

    draw_text(base_x, opt_y, opcoes[i]);
}
