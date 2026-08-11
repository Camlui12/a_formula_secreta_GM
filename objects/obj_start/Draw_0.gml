// 1. Fundo Escuro da Vela (Fica no fundo de tudo)
// O "-1" faz o GameMaker rodar a animação automaticamente
draw_sprite(scene1_1, -1, 0, 0);

// 2. Fundo Claro (Fica por cima do escuro, com a opacidade controlada)
draw_sprite_ext(scene1bright, 0, 0, 0, 1, 1, 0, c_white, bg_bright_alpha);

// 3. A Cortina (Fica por cima do cenário)
if (bg_bright_alpha > 0) {
    draw_sprite(curtains, frame_cortina, 0, 0);
}

// 4. A Luz pulsante e os Botões (Ficam no topo de tudo, mas só no MENU)
if (estado_atual == "MENU") {
    // Desenha a luz (glow) com o alpha que criamos
    draw_sprite_ext(glow, 0, 0, 0, 1, 1, 0, c_white, glow_alpha);
    
    // NOTA: Como você não importou a imagem dos textos ainda na foto anterior, 
    // quando importar, é só tirar as barras "//" da linha abaixo e colocar o nome da imagem:
    // draw_sprite(nome_da_imagem_dos_textos, 0, 0, 0);
}