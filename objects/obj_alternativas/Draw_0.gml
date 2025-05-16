draw_self();

var font_normal = Font1;
var font_hover = Font1;

var margin_left = 40;
var margin_top = 388;
var spacing = 40;

var base_x = x - sprite_width/2 + margin_left;
var base_y = y - sprite_height/2 + margin_top;

var alternativas = obj_quiz_control.alternativas[obj_quiz_control.pergunta_atual];
var altura_linha = spacing;

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var alternativas = obj_quiz_control.alternativas[obj_quiz_control.pergunta_atual];
var resposta_certa = obj_quiz_control.respostas_certas[obj_quiz_control.pergunta_atual];
var selecionada = obj_quiz_control.alternativa_selecionada;
var respondeu = obj_quiz_control.respondeu;

for (var i = 0; i < array_length(alternativas); i++) {
    var alt_y = base_y + i * spacing;

    // Verifica se o mouse está sobre a alternativa
    var is_hover = (mx >= base_x && mx <= base_x + 400 && my >= alt_y && my <= alt_y + altura_linha);

    // Define cor
    if (respondeu && i == selecionada) {
        draw_set_color(i == resposta_certa ? c_lime : c_red); // verde se certo, vermelho se errado
    } else if (is_hover && !respondeu) {
        draw_set_color(c_black);
    } else {
        draw_set_color(make_color_rgb(100, 100, 100));
    }

    // Desenha o texto
    draw_text(base_x, alt_y, alternativas[i]);
}
