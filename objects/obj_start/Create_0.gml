// 1. Estados da Cena (Controla o que está acontecendo agora)
estado_atual = "MENU"; // Pode ser "MENU", "CORTINA" ou "FADE"

// 2. Variáveis do Brilho (Glow) que fica embaixo dos textos
glow_alpha = 0;
glow_direcao = 1; // 1 = acendendo, -1 = apagando

// 3. Variável da Cortina
frame_cortina = 0; // Vai controlar a animação de abrir

// 4. Variáveis do Fundo (Backgrounds)
bg_bright_alpha = 1.0; // O fundo claro começa 100% visível
// O fundo normal (animado) vai ficar escondido embaixo dele!