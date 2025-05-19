perguntas = [
    "Qual a região do Brasil que inclui o Pará?",
    "Qual a capital do Pará?",
    "Atualmente, o Estado do Pará é o maior produtor \nnacional de:",
    "Quais estados fazem limite com o Pará?",
    "Qual o nome da maior feira aberta da América do \nSul que é localizada no Pará?",
    "Qual era o nome da província do Pará?",
    "Sobre o potencial econômico do Pará é INCORRETO \nafirmar que:",
    "Quais são as cores da bandeira do Pará?",
    "O relevo do Pará tem três influências. Quais que \nnão representam uma dessas 3 influências?",
    "Qual município do estado do Pará é considerado o \nmaior do Brasil."
];

alternativas = [
    ["A - Sudeste", "B - Nordeste", "C - Sul", "D - Norte"],
    ["A - Santarém", "B - Belém", "C - Palmas", "D - Porto Velho"],
    ["A - Pimenta do reino, Abacate e Melão.", "B - Café, Milho e Feijão.", "C - Arroz, Soja e Milho.", "D - Abacaxi, Cacau e Dendê."],
    ["A - Acre e Ceará", "B - Amapá, Roraima, Amazonas, Mato Grosso, Tocantins e Maranhão", "C - Amazonas, Bahia, Brasília e Goiás", "D - Amazonas, Rondônia, Goiás, Maranhão e Amapá"],
    ["A - Ver-O-Peso", "B - Varejão da CEAGESP", "C - Mercadão de Madureira", "D - Feira do Largo da Ordem"],
    ["A - Província do Antigo Pará", "B - Belém", "C - Província de Belém", "D - Grão-Pará"],
    ["A - Os principais cultivos no Pará são banana, cana-de-açúcar, mandioca, entre outros.", "B - Seu solo possui poucos recursos minerais, tendo uma mineração inexpressiva.", "C - Turismo está em constante expansão", "D - Tem a maior economia do Norte (maior PIB)."],
    ["A - Branco e Azul", "B - Verde, Amarelo e Vermelho", "C - Azul, Vermelho e Branco", "D - Amarelo, Branco e Verde"],
    ["A - Planalto norte-amazônico", "B - Planície amazônica", "C - Planalto sul-amazônico", "D - Planalto sudeste-amazônico"],
    ["A - Almeirim.", "B - São Félix do Xingú.", "C - Altamira.", "D - Oriximiná."]
];

respostas_certas = [3, 1, 3, 1, 0, 3, 1, 2, 3, 2];

pergunta_atual = 0;
respondeu = false;
alternativa_selecionada = -1;
feedback = "";
pulos_restantes = 3;
