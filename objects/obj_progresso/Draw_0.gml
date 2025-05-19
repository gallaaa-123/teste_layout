draw_self(); // Desenha o sprite normalmente

draw_set_color(c_white);
draw_set_font(Font1);

// Centraliza o texto horizontalmente dentro do sprite
var texto = "01/26";
var largura_texto = string_width(texto);
var altura_texto = string_height(texto);

// Centralizar texto horizontalmente e verticalmente no sprite
var pos_x = x - sprite_width/2 + (sprite_width - largura_texto) / 2;
var pos_y = y - sprite_height/2 + (sprite_height - altura_texto) / 2;

// Ajuste de posição vertical para mover o texto mais para baixo
pos_y += 80; // Aumente esse valor se quiser descer mais
pos_x += 80; // Move o texto para a direita

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(pos_x, pos_y, texto);
