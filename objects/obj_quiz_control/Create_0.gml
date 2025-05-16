pergunta_atual = 0;

perguntas = [
    "Qual era o nome da província do estado do Pará?",
    "Qual o maior rio da Amazônia?",
    "Qual é o ponto mais alto do Brasil?"
];

alternativas = [
    [ "A - Província do Antigo Pará", "B - Belém", "C - Província do Parazinho", "D - Grão-Pará" ],
    [ "A - Rio Amazonas", "B - Rio Tietê", "C - Rio Paraná", "D - Rio São Francisco" ],
    [ "A - Pico da Neblina", "B - Pico do Jaraguá", "C - Pico das Agulhas Negras", "D - Monte Roraima" ]
];

respostas_certas = [0, 0, 0]; // índice da alternativa correta (A = 0, B = 1, etc.)

// Controle de resposta
respondeu = false;
alternativa_selecionada = -1;
feedback = "";
