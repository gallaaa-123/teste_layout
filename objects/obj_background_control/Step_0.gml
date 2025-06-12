// Verifica se o controlador do quiz existe
if (instance_exists(obj_quiz_control)) {

    // Obtém a fase com base na pergunta atual
    var fase_atual = floor(obj_quiz_control.pergunta_atual / 5);
    fase_atual = clamp(fase_atual, 0, 5); // Garante que fique entre 0 e 4

    // Esconde todas as backgrounds
    for (var i = 0; i < array_length(global.bg_layers); i++) {
        if (layer_exists(global.bg_layers[i])) {
            layer_set_visible(global.bg_layers[i], false);
        }
    }

    // Mostra apenas a layer da fase atual
    if (layer_exists(global.bg_layers[fase_atual])) {
        layer_set_visible(global.bg_layers[fase_atual], true);
    }
}