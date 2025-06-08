for (var i = 0; i < 4; i++) {
    var espacamento = 150;
    var carta = instance_create_layer(x + i * espacamento, y, "Instances_1", obj_carta);
    carta.depth = -10; // Menor que a do container, para ficar na frente
    carta.indice = i + 1;
    carta.alarm[0] = 1;
}
