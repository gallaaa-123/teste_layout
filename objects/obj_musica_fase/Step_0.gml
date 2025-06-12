// Só toca música se estiver na Room1
if (room == Room1) {
    var musica_desejada;

    if (global.pergunta_atual >= 1 && global.pergunta_atual <= 10) {
        musica_desejada = mus_fase1;
    } else if (global.pergunta_atual >= 11 && global.pergunta_atual <= 20) {
        musica_desejada = mus_fase2;
    } else if (global.pergunta_atual >= 21 && global.pergunta_atual <= 30) {
        musica_desejada = mus_fase3;
    } else {
        musica_desejada = -1; // Nenhuma música se estiver fora da faixa
    }

    // Se for uma música nova diferente da atual
    if (musica_desejada != musica_tocando) {
        audio_stop_all();

        if (musica_desejada != -1) {
            audio_play_sound(musica_desejada, true, 1);
        }

        musica_tocando = musica_desejada;
    }

} else {
    // Se sair da Room1, parar qualquer música que esteja tocando
    if (musica_tocando != -1) {
        audio_stop_all();
        musica_tocando = -1;
    }
}
