// Posição e margem de clique das opções
var margin_left = 350;
var margin_top = 405;
var spacing = 40;

var base_x = x - sprite_width/2 + margin_left;
var base_y = y - sprite_height/2 + margin_top;
var altura_linha = spacing;

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

for (var i = 0; i < 3; i++) {
    var opt_y = base_y + i * spacing;

    if (mx >= base_x && mx <= base_x + 300 && my >= opt_y && my <= opt_y + altura_linha) {
        // Opção clicada
        switch (i) {
            case 2: // Pular
                if (obj_quiz_control.pulos_restantes > 0 && !obj_quiz_control.respondeu) {
                    obj_quiz_control.pulos_restantes -= 1;
                    obj_quiz_control.pergunta_atual += 1;
                    obj_quiz_control.alternativa_selecionada = -1;
                    obj_quiz_control.feedback = "";
                    obj_quiz_control.opcao_clicada = -1;
                    obj_quiz_control.respondeu = false;
                }
                break;
        }
    }
}
