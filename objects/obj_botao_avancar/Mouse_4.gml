if (visible) {
    obj_quiz_control.pergunta_atual += 1;
    obj_quiz_control.respondeu = false;
    obj_quiz_control.resposta_correta = -1;
    obj_quiz_control.resposta_selecionada = -1;
    obj_quiz_control.feedback = "";

    // Se passar do número de perguntas, reinicia ou faz outra ação
    if (obj_quiz_control.pergunta_atual >= array_length(obj_quiz_control.perguntas)) {
        obj_quiz_control.pergunta_atual = 0;
    }
}
