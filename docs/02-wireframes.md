# 02 - Wireframes do Aplicativo

## 1. Introdução

O wireframe tem como objetivo apresentar a estrutura visual e o fluxo de navegação planejado para o aplicativo Brick Rush antes da implementação das telas.

A proposta é utilizar uma interface simples, objetiva e adequada para dispositivos móveis, ocupando a maior área possível da tela durante a execução do jogo.

Os wireframes apresentados neste documento representam o planejamento da interface e não devem ser considerados como telas finais do aplicativo.

---

## 2. Fluxo de Navegação

O fluxo principal do aplicativo será:

```text
                    ┌─────────────────┐
                    │   TELA INICIAL  │
                    └────────┬────────┘
                             │
            ┌────────────────┼────────────────┐
            │                │                │
            ▼                ▼                ▼
     ┌────────────┐   ┌────────────┐   ┌──────────────┐
     │ INTEGRANTES│   │   JOGAR    │   │ CONFIGURAÇÕES│
     └────────────┘   └─────┬──────┘   └──────────────┘
                            │
                            ▼
                     ┌─────────────┐
                     │   NÍVEL 1   │
                     └──────┬──────┘
                            │
                            ▼
                     ┌─────────────┐
                     │   NÍVEL 2   │
                     └──────┬──────┘
                            │
                            ▼
                     ┌─────────────┐
                     │   NÍVEL 3   │
                     └──────┬──────┘
                            │
                            ▼
                     ┌─────────────┐
                     │   NÍVEL 4   │
                     └──────┬──────┘
                            │
                            ▼
                     ┌─────────────┐
                     │   NÍVEL 5   │
                     └──────┬──────┘
                            │
                            ▼
                     ┌─────────────┐
                     │  RESULTADO  │
                     └─────────────┘
```

---

## 3. Telas do Aplicativo

### 3.1 Tela Inicial

![Tela Inicial](wireframes/01-tela-inicial.png)

A tela inicial apresenta a identidade visual do Brick Rush e permite acessar as funcionalidades principais do aplicativo.

---

### 3.2 Menu Principal

![Menu Principal](wireframes/02-menu-principal.png)

O menu principal apresenta as três opções exigidas para o aplicativo:

- Integrantes;
- Jogar;
- Configurações.

---

### 3.3 Seleção de Nível

![Seleção de Nível](wireframes/03-selecao-nivel.png)

A tela permite selecionar o nível que será iniciado.

O jogo será composto por cinco níveis com diferentes configurações de paredes de blocos.

---

### 3.4 Nível 1

![Nível 1](wireframes/04-jogo-nivel-01.png)

O primeiro nível utiliza uma configuração de blocos previamente definida.

A parede possui um padrão organizado e serve como primeiro desafio do jogo.

---

### 3.5 Nível 2

![Nível 2](wireframes/05-jogo-nivel-02.png)

O segundo nível apresenta uma configuração diferente de blocos em relação ao primeiro nível.

---

### 3.6 Nível 3

![Nível 3](wireframes/06-jogo-nivel-03.png)

O terceiro nível apresenta espaços vazios na parede, utilizando uma configuração diferente dos níveis anteriores.

---

### 3.7 Pausa

![Pausa](wireframes/07-pausa.png)

A tela de pausa permite interromper temporariamente a partida.

---

### 3.8 Resultado

![Resultado](wireframes/08-resultado.png)

A tela de resultado apresenta o resultado da fase após a conclusão do nível.

---

### 3.9 Integrantes

![Integrantes](wireframes/09-integrantes.png)

A tela apresenta o responsável pelo desenvolvimento do projeto.

---

### 3.10 Configurações

![Configurações](wireframes/10-configuracoes.png)

A tela de configurações permite definir características visuais relacionadas às cores e aos tamanhos dos blocos.

Essas configurações serão utilizadas posteriormente durante a construção das paredes de blocos.

---

### 3.11 Nível 4

![Nível 4](wireframes/11-jogo-nivel-04.png)

O quarto nível apresenta uma configuração de blocos com maior variação na disposição.

---

### 3.12 Nível 5

![Nível 5](wireframes/12-jogo-nivel-05.png)

O quinto nível apresenta uma configuração mais complexa de blocos, encerrando a sequência principal de níveis planejada para o jogo.

---

### 3.13 Perda da Fase

![Perda da Fase](wireframes/13-perdeu.png)

Essa tela é apresentada quando a bola não colide com o paddle.

O jogador poderá escolher entre:

- Reiniciar o nível atual;
- Avançar para o próximo nível.

---

## 4. Fluxo entre as Telas

O fluxo planejado do aplicativo é:

```text
Tela Inicial
    │
    ├── Integrantes
    │
    ├── Configurações
    │
    └── Jogar
          │
          ▼
    Seleção de Nível
          │
          ▼
       Nível 1
          │
          ▼
       Nível 2
          │
          ▼
       Nível 3
          │
          ▼
       Nível 4
          │
          ▼
       Nível 5
          │
          ▼
       Resultado
```

---

## 5. Organização das Telas

As imagens dos wireframes estão armazenadas no diretório:

```text
docs/wireframes/
```

Os arquivos utilizados são:

```text
01-tela-inicial.png
02-menu-principal.png
03-selecao-nivel.png
04-jogo-nivel-01.png
05-jogo-nivel-02.png
06-jogo-nivel-03.png
07-pausa.png
08-resultado.png
09-integrantes.png
10-configuracoes.png
11-jogo-nivel-04.png
12-jogo-nivel-05.png
13-perdeu.png
```

Dessa forma, os wireframes representam o planejamento visual e a sequência de navegação do aplicativo antes da implementação definitiva.

---

## 6. Considerações sobre Usabilidade

A interface será planejada considerando dispositivos móveis.

Durante a execução do jogo, a área destinada à partida deverá ocupar a maior parte possível da tela.

Os principais elementos de interação serão:

- Paddle;
- Bola;
- Blocos;
- Botões de navegação;
- Botão de pausa;
- Opções de reinício e avanço de nível.

A organização dos elementos deverá facilitar a compreensão das ações disponíveis ao usuário.