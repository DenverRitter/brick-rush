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
                     └─────────────┘
                     ---

---

---

## 3. Telas do Aplicativo

### 3.1 Tela Inicial

![Tela Inicial](wireframes/01-tela-inicial.png)

Tela inicial do aplicativo, apresentando a identidade do Brick Rush e o acesso às funcionalidades principais.

### 3.2 Menu Principal

![Menu Principal](wireframes/02-menu-principal.png)

Apresenta as três opções principais do aplicativo: integrantes, iniciar jogo e configurações.

### 3.3 Tela de Seleção de Nível

![Seleção de Nível](wireframes/03-selecao-nivel.png)

Permite acessar os níveis disponíveis do jogo.

### 3.4 Nível 1

![Nível 1](wireframes/04-jogo-nivel-01.png)

Representação do primeiro nível, utilizando uma parede de blocos com padrão definido.

### 3.5 Nível 2

![Nível 2](wireframes/05-jogo-nivel-02.png)

Representação do segundo nível, utilizando uma configuração diferente de blocos.

### 3.6 Nível 3

![Nível 3](wireframes/06-jogo-nivel-03.png)

Representação do terceiro nível, utilizando espaços vazios na composição da parede.

### 3.7 Pausa

![Pausa](wireframes/07-pausa.png)

Tela apresentada quando o jogador pausa a partida.

### 3.8 Resultado

![Resultado](wireframes/08-resultado.png)

Tela utilizada para apresentar o resultado da fase.

### 3.9 Integrantes

![Integrantes](wireframes/09-integrantes.png)

Tela destinada à apresentação do integrante responsável pelo desenvolvimento do projeto.

### 3.10 Configurações

![Configurações](wireframes/10-configuracoes.png)

Tela destinada às configurações relacionadas às cores e aos tamanhos dos blocos.

### 3.11 Nível 4

![Nível 4](wireframes/11-jogo-nivel-04.png)

Representação do quarto nível, utilizando uma configuração de blocos com maior variação na disposição.

### 3.12 Nível 5

![Nível 5](wireframes/12-jogo-nivel-05.png)

Representação do quinto nível, utilizando uma configuração mais complexa de blocos.

### 3.13 Perda da Fase

![Perda da Fase](wireframes/13-perdeu.png)

Tela apresentada quando a bola não colide com o paddle, permitindo ao jogador decidir entre reiniciar o nível atual ou avançar para o próximo nível.

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