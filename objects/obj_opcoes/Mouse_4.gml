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
        switch (i) {
            case 0: // Cartas
                if (!instance_exists(obj_cartas_container)) {
                    instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_cartas_container);
                    obj_quiz_control.exibir_pergunta = false;
                }
                break;

            case 1: // Roleta
                if (obj_quiz_control.roletas_restantes > 0 && !instance_exists(obj_seta_charadas)) {
                    obj_quiz_control.roletas_restantes -= 1;
                    instance_create_layer(room_width / 2 - 660, room_height / 2 - 325, "Instances_1", obj_seta_charadas);
                }
                break;

            case 2: // Pular
                if (obj_quiz_control.pulos_restantes > 0 && !obj_quiz_control.respondeu) {
                    obj_quiz_control.pulos_restantes -= 1;
                    obj_quiz_control.pergunta_atual += 1;
                    obj_quiz_control.alternativa_selecionada = -1;
                    obj_quiz_control.feedback = "";
                    obj_quiz_control.opcao_clicada = -1;
                    obj_quiz_control.respondeu = false;
                    if (instance_exists(global.instancia_jogador)) global.instancia_jogador.vida_atual -= 1;
                    if (instance_exists(global.instancia_chefe)) global.instancia_chefe.vida_atual -= 1;
                }
                break;
        }
    }
}
