function scr_add_to_leaderboard(_nickname, _acertos, _erros, _tempo) {
    // Cria leaderboard se não existir
    if (!variable_global_exists("leaderboard")) {
        global.leaderboard = ds_list_create();
    }

    // Cria entrada do jogador
    var entry = ds_map_create();
    entry[? "nickname"] = _nickname;
    entry[? "acertos"]  = _acertos;
    entry[? "erros"]    = _erros;
    entry[? "tempo"]    = _tempo;

    ds_list_add(global.leaderboard, entry);

    // Ordenação personalizada (acertos > erros < tempo <)
    var n = ds_list_size(global.leaderboard);
    for (var i = 0; i < n - 1; i++) {
        for (var j = i + 1; j < n; j++) {
            var e1 = global.leaderboard[| i];
            var e2 = global.leaderboard[| j];

            var melhor = false;

            if (e2[? "acertos"] > e1[? "acertos"]) melhor = true;
            else if (e2[? "acertos"] == e1[? "acertos"]) {
                if (e2[? "erros"] < e1[? "erros"]) melhor = true;
                else if (e2[? "erros"] == e1[? "erros"]) {
                    if (e2[? "tempo"] < e1[? "tempo"]) melhor = true;
                }
            }

            if (melhor) {
                global.leaderboard[| i] = e2;
                global.leaderboard[| j] = e1;
            }
        }
    }

    // Salvar em JSON para manter persistência
    var json = json_encode(global.leaderboard);
    var buffer = buffer_create(string_length(json), buffer_fixed, 1);
    buffer_write(buffer, buffer_text, json);
    buffer_save(buffer, "leaderboard.json");
    buffer_delete(buffer);
}
