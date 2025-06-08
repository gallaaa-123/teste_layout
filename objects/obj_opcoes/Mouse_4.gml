var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var base_x = x - sprite_width / 2 + 60;
var base_y = y - sprite_height / 2 + 40;
var spacing = 40;

for (var i = 0; i < 3; i++) {
    var opt_y = base_y + i * spacing;
    if (point_in_rectangle(mx, my, base_x, opt_y, base_x + 300, opt_y + spacing)) {
        switch (i) {
            case 0: // Cartas
                if (instance_exists(obj_quiz_control)) {
                    if (obj_quiz_control.cartas_restantes > 0 && !instance_exists(obj_cartas_container)) {
                        // Apenas abre o container, não diminui o contador aqui
                        obj_quiz_control.abrir_cartas();
                    }
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
