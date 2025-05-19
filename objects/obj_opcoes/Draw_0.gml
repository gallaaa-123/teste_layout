draw_self(); // Desenha o sprite

var font_normal = Font1;
var font_hover = Font1;

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var margin_left = 350;
var margin_top = 405;
var spacing = 40;

var base_x = x - sprite_width/2 + margin_left;
var base_y = y - sprite_height/2 + margin_top;

var opcoes = [
    "Cartas",
    "Charadas",
    "Pular"
];

var altura_linha = spacing;

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

for (var i = 0; i < array_length(opcoes); i++) {
    var opt_y = base_y + i * spacing;

    var is_hover = (mx >= base_x) && (mx <= base_x + 300)
                && (my >= opt_y) && (my <= opt_y + altura_linha);

    if (is_hover) {
        draw_set_font(font_hover);
        draw_set_color(c_black);
    } else {
        draw_set_font(font_normal);
        draw_set_color(c_white);
    }

    // Se for "Pular 3x", mostra quantos restam
    var texto = opcoes[i];
    if (texto == "Pular") {
        var restantes = obj_quiz_control.pulos_restantes;
        if (restantes > 0) {
            texto += " " + string(restantes) + "x";
        } else {
            texto += ""; // Desabilitado visualmente
        }
    }

    draw_text(base_x, opt_y, texto);
}
