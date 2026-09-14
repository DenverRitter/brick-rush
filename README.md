# 🧱 Brick Rush

## Projeto Integrador VI-A

Aplicativo móvel desenvolvido como parte da disciplina **Projeto Integrador VI-A**, com a proposta de desenvolver um jogo inspirado no clássico **Brick Breaker (Breakout)**.

O projeto foi desenvolvido utilizando **Flutter** e **Dart**, com utilização do **Flame Engine** para implementação dos elementos e mecânicas do jogo.

---

## 🎮 Sobre o projeto

O **Brick Rush** é um jogo mobile baseado no conceito clássico do Brick Breaker.

O jogador controla uma plataforma móvel, denominada **paddle**, responsável por rebater uma bola que se movimenta pela área de jogo.

O objetivo é destruir todos os blocos presentes na parte superior da tela.

Ao destruir todos os blocos de uma fase, o jogador recebe uma tela de vitória e pode avançar para o próximo nível.

O jogo possui diferentes configurações de paredes de blocos, utilizando padrões predefinidos para os níveis.

---

## 🎯 Objetivo

O objetivo principal do projeto é desenvolver uma aplicação para dispositivos móveis aplicando conceitos de:

- Desenvolvimento para dispositivos móveis;
- Componentes de interface;
- Design de interfaces;
- Usabilidade;
- Interação com o usuário;
- Desenvolvimento de jogos;
- Controle de colisões;
- Organização de projetos de software;
- Estruturação de níveis;
- Controle de estados do jogo;
- Controle de versão com Git e GitHub.

---

## 📱 Funcionalidades

A aplicação possui as seguintes funcionalidades:

### 1. Menu principal

O menu principal apresenta as opções:

- **JOGAR**
- **INTEGRANTES**
- **CONFIGURAÇÕES**

### 2. Integrantes

Apresenta as informações do integrante responsável pelo desenvolvimento:

**Denver Ritter**

Projeto Integrador VI-A  
Brick Rush

### 3. Seleção de níveis

O jogador pode selecionar entre **5 níveis** diferentes:

- Nível 1;
- Nível 2;
- Nível 3;
- Nível 4;
- Nível 5.

### 4. Controle da base

A base pode ser movimentada horizontalmente através da interação com a tela.

O jogador pode utilizar o toque e o movimento horizontal para posicionar o paddle.

### 5. Movimento da bola

A bola possui movimentação automática pela área de jogo.

Ela realiza colisões com:

- Parede esquerda;
- Parede direita;
- Teto;
- Paddle;
- Blocos.

### 6. Destruição dos blocos

Quando a bola colide com um bloco, o bloco é destruído e a pontuação do jogador é incrementada.

### 7. Sistema de pontuação

Cada bloco destruído adiciona pontos ao jogador.

A pontuação é apresentada na interface durante a partida.

### 8. Sistema de vidas

O jogador possui **3 vidas por nível**.

Quando a bola ultrapassa a parte inferior da tela, uma vida é perdida.

Ao perder todas as vidas, é apresentada a tela de **DERROTA**.

### 9. Reinício da fase

Após uma derrota, o jogador pode selecionar a opção:

**REINICIAR**

A fase é carregada novamente com três vidas.

### 10. Sistema de vitória

Quando todos os blocos do nível são destruídos, é apresentada a tela:

**VITÓRIA!**

O jogador pode então avançar para o próximo nível.

### 11. Progressão dos níveis

O jogo possui cinco níveis.

A progressão ocorre através da opção:

**PRÓXIMO NÍVEL**

Após completar o nível 5, o jogo apresenta a tela de conclusão:

**BRICK RUSH CONCLUÍDO!**

### 12. Sistema de pausa

Durante a partida, o jogador pode pausar o jogo.

A tela de pausa apresenta as opções:

- **CONTINUAR**
- **SAIR**

---

## 🧱 Níveis do jogo

O Brick Rush possui **5 níveis**.

Cada nível utiliza uma configuração de blocos baseada em uma estrutura semelhante a uma matriz.

Cada posição pode representar:

- `1` — existência de um bloco;
- `0` — espaço vazio.

Os níveis utilizam diferentes padrões de organização dos blocos.

Os padrões são definidos no código e utilizados durante a criação da fase.

---

## ⚙️ Mecânicas do jogo

As principais mecânicas implementadas são:

- Movimento automático da bola;
- Movimento horizontal do paddle;
- Colisão com as paredes;
- Colisão com o paddle;
- Colisão com os blocos;
- Destruição dos blocos;
- Sistema de pontuação;
- Sistema de vidas;
- Sistema de vitória;
- Sistema de derrota;
- Reinício da fase;
- Progressão entre os níveis;
- Sistema de pausa;
- Seleção de níveis.

---

## 🛠️ Tecnologias

| Tecnologia | Utilização |
|---|---|
| Flutter | Desenvolvimento da aplicação mobile |
| Dart | Linguagem de programação |
| Flame Engine | Desenvolvimento das mecânicas do jogo |
| Android SDK | Compilação e execução para Android |
| Visual Studio Code | Editor de código |
| Git | Controle de versão |
| GitHub | Hospedagem do código e documentação |

Mais detalhes podem ser encontrados em:

➡️ [Documentação de tecnologias](docs/01-tecnologias.md)

---

## 🎨 Wireframes

O projeto possui wireframes de alta definição utilizados para representar a estrutura das telas da aplicação.

Foram documentadas as seguintes telas:

- Tela inicial;
- Menu principal;
- Tela de integrantes;
- Tela de configurações;
- Tela de seleção de nível;
- Nível 1;
- Nível 2;
- Nível 3;
- Nível 4;
- Nível 5;
- Tela de pausa;
- Tela de resultado;
- Tela de perda.

A documentação dos wireframes está disponível em:

➡️ [Documentação dos Wireframes](docs/02-wireframes.md)

As imagens dos wireframes estão disponíveis em:

`docs/wireframes/`

---

## 🧩 Construção dos níveis

A construção das paredes de blocos utiliza uma estrutura semelhante a uma matriz.

Cada posição da matriz representa a existência ou ausência de um bloco.

Exemplo:

```text
1 1 1 1 1 1 1
1 0 1 1 1 0 1
1 1 0 1 0 1 1
1 1 1 0 1 1 1
1 1 1 1 1 1 1