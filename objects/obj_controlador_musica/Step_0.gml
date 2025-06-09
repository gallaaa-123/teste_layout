// Verifica se estamos em uma room que deve tocar música
var tocar = (room == Menu) || (room == Regras1) || (room == Regras2) || (room == Regras3) || (room == Regras4) || (room == Regras5);

// Se deve tocar e ainda não está tocando
if (tocar && !musica_tocando) {
    audio_stop_all(); // Garante que nenhuma outra música esteja tocando
    audio_play_sound(mus_menu, true, 1); // ← usa seu som corretamente aqui
    musica_tocando = true;
}

// Se entrou em uma sala onde a música não deve tocar
if (!tocar && musica_tocando) {
    audio_stop_all();
    musica_tocando = false;
}
