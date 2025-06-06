// Cria 4 cartas com espaçamento horizontal
for (var i = 0; i < 4; i++) {
    var espacamento = 150; // ajuste conforme necessário
    var carta = instance_create_layer(x + i * espacamento, y, "Instances_1", obj_carta);
    carta.indice = i + 1;
}
