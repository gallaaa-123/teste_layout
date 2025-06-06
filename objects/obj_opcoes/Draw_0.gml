draw_self(); // Desenha o sprite

var font_normal = Font1;
var font_hover = Font1;

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var margin_left = 320;
var margin_top = 405;
var spacing = 40;

var base_x = x - sprite_width/2 + margin_left;
var base_y = y - sprite_height/2 + margin_top;

var opcoes = [
    "Cartas",
    "Roleta",
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

    var texto = opcoes[i];

    if (texto == "Pular") {
        if (instance_exists(obj_quiz_control)) {
            var restantes = obj_quiz_control.pulos_restantes;
            if (restantes > 0) {
                texto += " " + string(restantes) + "x";
            }
        }
    }

    if (texto == "Roleta") {
        if (instance_exists(obj_quiz_control)) {
            var restantes = obj_quiz_control.roletas_restantes;
            if (restantes > 0) {
                texto += " " + string(restantes) + "x";
            }
        }
    }

    draw_text(base_x, opt_y, texto);
}
