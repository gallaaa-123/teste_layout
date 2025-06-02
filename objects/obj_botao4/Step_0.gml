// Verifica se o mouse está sobre este objeto
var mouse_sobre = position_meeting(mouse_x, mouse_y, id);

// Define os alvos para cada eixo
var alvo_x = mouse_sobre ? tamanho_hover_x : tamanho_original_x;
var alvo_y = mouse_sobre ? tamanho_hover_y : tamanho_original_y;

// Aplica a interpolação suave
image_xscale = lerp(image_xscale, alvo_x, velocidade_zoom);
image_yscale = lerp(image_yscale, alvo_y, velocidade_zoom);
