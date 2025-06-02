// Armazena o ID da layer "Background" globalmente
if (layer_exists("Background")) {
    global.bg_layer = layer_get_id("Background");
} else {
    global.bg_layer = -1;
}
