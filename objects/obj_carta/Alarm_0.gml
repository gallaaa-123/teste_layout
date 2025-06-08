switch (indice) {
    case 1:
        sprite_index = carta1;
        break;
    case 2:
        sprite_index = carta2;
        break;
    case 3:
        sprite_index = carta3;
        break;
    case 4:
        sprite_index = carta4;
        break;
    default:
        sprite_index = carta1;
        break;
}

// Redimensiona o sprite para bater com o tamanho desejado na tela
image_xscale = 0.25;
image_yscale = 0.32;
