draw_self(); // Desenha o balão

draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if (!obj_quiz_control.respondeu) {
	var pergunta = obj_quiz_control.perguntas[obj_quiz_control.pergunta_atual];
	
	// Desenha a pergunta
	var margin_left = 96;
	var margin_top = 260;
	var base_x = x - sprite_width/2 + margin_left;
	var base_y = y - sprite_height/2 + margin_top;
	draw_text(base_x, base_y, pergunta);
}

// Feedback após responder
if (obj_quiz_control.respondeu) {
    draw_set_font(Font1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(x, y + -10, obj_quiz_control.feedback);
}