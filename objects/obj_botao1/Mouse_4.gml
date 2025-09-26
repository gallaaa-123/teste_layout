// Pede nickname
global.nickname = get_string("Digite seu nickname:", "");

// Se o jogador não digitar nada, define "Jogador"
if (string_length(global.nickname) <= 0) {
    global.nickname = "Jogador";
}

// Zera estatísticas da sessão
global.acertos = 0;
global.erros = 0;
global.tempo = 0;

// Vai para o jogo
room_goto(Room1);
