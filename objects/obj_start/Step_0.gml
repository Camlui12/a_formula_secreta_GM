if (estado_atual == "MENU") {
    // 1. Faz a luz do botão pulsar suavemente
    glow_alpha += 0.02 * glow_direcao;
    
    // Inverte a direção do piscar
    if (glow_alpha >= 0.7) glow_direcao = -1; // Começa a apagar
    if (glow_alpha <= 0.0) glow_direcao = 1;  // Começa a acender

    // 2. Espera o jogador apertar Enter ou Espaço
    if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
        estado_atual = "CORTINA"; // Muda a fase da cena!
    }
}
else if (estado_atual == "CORTINA") {
    // 3. Abre a cortina
    frame_cortina += 0.2; // Velocidade da cortina (ajuste se precisar)
    
    // Verifica se chegou no último frame da cortina
    if (frame_cortina >= sprite_get_number(curtains) - 1) {
        frame_cortina = sprite_get_number(curtains) - 1; // Trava no último frame
        estado_atual = "FADE"; // Vai para a próxima fase
    }
}
else if (estado_atual == "FADE") {
    // 4. Faz a luz clara apagar devagar para revelar o cenário escuro
    if (bg_bright_alpha > 0) {
        bg_bright_alpha -= 0.015;
    } else {
        // Quando a luz apagar 100%, a cena de introdução acabou!
        // (No futuro, colocaremos o código para mudar de sala aqui)
    }
}