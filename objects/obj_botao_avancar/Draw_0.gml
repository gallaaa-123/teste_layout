if (!visible) exit;

draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Botão visual
var botao_w = 180;
var botao_h = 50;
var botao_x = x - botao_w/2;
var botao_y = y - botao_h/2;

draw_set_color(make_color_rgb(70, 130, 180)); // Azul escuro
draw_roundrect(botao_x, botao_y, botao_x + botao_w, botao_y + botao_h, false);

// Texto
draw_set_color(c_white);
draw_text(x, y, "Avançar");
