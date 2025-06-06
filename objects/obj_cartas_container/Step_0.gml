// Se todas as cartas já foram destruídas, mostra novamente a pergunta
if (instance_number(obj_carta) == 0) {
    obj_quiz_control.exibir_pergunta = true;
    instance_destroy(); // Destrói o container
}
