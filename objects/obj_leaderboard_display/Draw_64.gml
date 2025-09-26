draw_set_font(Font1);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Centralização horizontal
var spacing = 40;
var y_start = 100;
var leaderboard_title = "=== PLACAR DE LÍDERES ===";
var x_center = display_get_gui_width() div 2;

draw_set_halign(fa_center);
draw_text(x_center, y_start - 50, leaderboard_title);

// Verifica se leaderboard existe
if (variable_global_exists("leaderboard")) {
    var n = ds_list_size(global.leaderboard);

    // 1) Descobrir posição do jogador
    var player_pos = -1;
    for (var i = 0; i < n; i++) {
        var entry = global.leaderboard[| i];
        if (entry[? "nickname"] == global.nickname) {
            player_pos = i; // posição real (0-based)
            break;
        }
    }

    // 2) Mostrar posição do jogador acima do Top 10
    if (player_pos != -1) {
        var entry = global.leaderboard[| player_pos];
        var texto_jogador = "Sua posição: " + string(player_pos+1) + "  |  " +
            entry[? "nickname"] + " - " +
            "Acertos: " + string(entry[? "acertos"]) + " | " +
            "Erros: " + string(entry[? "erros"]) + " | " +
            "Tempo: " + string(entry[? "tempo"]) + "s";

        draw_set_color(c_yellow);
        draw_text(x_center, y_start, texto_jogador);
        draw_set_color(c_white);

        y_start += 60; // espaço abaixo do destaque
    }

    // 3) Mostrar Top 10
    var top = min(10, n);
    for (var i = 0; i < top; i++) {
        var entry = global.leaderboard[| i];
        var texto = string(i+1) + ". " +
            entry[? "nickname"] + " - " +
            "Acertos: " + string(entry[? "acertos"]) + " | " +
            "Erros: " + string(entry[? "erros"]) + " | " +
            "Tempo: " + string(entry[? "tempo"]) + "s";

        // Se for o jogador dentro do top 10, destaca em amarelo também
        if (i == player_pos) {
            draw_set_color(c_yellow);
        } else {
            draw_set_color(c_white);
        }

        draw_text(x_center, y_start + i * spacing, texto);
    }
}
