// Só muda o background se a layer for válida e obj_quiz_control existir
if (global.bg_layer != -1 && instance_exists(obj_quiz_control)) {

    // Obtém a fase com base na pergunta atual
    var fase_atual = floor(obj_quiz_control.pergunta_atual / 5);

    // Define o sprite correspondente à fase
    var sprite_para_usar;

    switch (fase_atual) {
        case 0: sprite_para_usar = spr_background1; break;
        case 1: sprite_para_usar = spr_background2; break;
        case 2: sprite_para_usar = spr_background3; break;
        case 3: sprite_para_usar = spr_background4; break;
        case 4: sprite_para_usar = spr_background5; break;
        default: sprite_para_usar = spr_background1; break;
    }

    // Aplica o sprite na layer de background
    layer_background_sprite(global.bg_layer, sprite_para_usar);
    layer_background_blend(global.bg_layer, c_white);
    layer_background_alpha(global.bg_layer, 1);
}
