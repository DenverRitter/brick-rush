# 🧱 Brick Rush

## Projeto Integrador VI-A

Aplicativo móvel desenvolvido como parte da disciplina **Projeto Integrador VI-A**, com a proposta de desenvolver um jogo inspirado no clássico **Brick Breaker (Breakout)**.

O projeto será desenvolvido utilizando **Flutter** e **Dart**, com utilização do **Flame Engine** para a implementação dos elementos e mecânicas do jogo.

---

## 🎮 Sobre o projeto

O Brick Rush é um jogo mobile baseado no conceito clássico do Brick Breaker.

O jogador controla uma plataforma móvel, denominada **paddle**, responsável por rebater uma bola que se movimenta pela área de jogo.

O objetivo é destruir todos os blocos presentes na parte superior da tela. Ao destruir todos os blocos de uma fase, o próximo nível será iniciado automaticamente.

O jogo contará com diferentes configurações de paredes de blocos, incluindo padrões fixos e estruturas que poderão utilizar aleatoriedade.

---

## 🎯 Objetivo

O objetivo principal do projeto é projetar, prototipar e posteriormente implementar uma aplicação para dispositivos móveis, aplicando conceitos de:

- Desenvolvimento para dispositivos móveis;
- Componentes de interface;
- Design de interfaces;
- Usabilidade;
- Interação com o usuário;
- Desenvolvimento de jogos;
- Controle de colisões;
- Reprodução de sons;
- Organização de projetos de software;
- Fundamentos de Inteligência Artificial e aleatoriedade.

---

## 📱 Funcionalidades planejadas

A aplicação contará inicialmente com uma tela principal contendo três opções:

### 1. Integrantes

Tela destinada à apresentação do integrante responsável pelo desenvolvimento do projeto.

### 2. Iniciar jogo

Permite iniciar o jogo e acessar os diferentes níveis do Brick Rush.

### 3. Configurações

Permite configurar características relacionadas ao padrão visual dos blocos e aos tamanhos utilizados na construção das paredes.

---

## 🧱 Níveis do jogo

O jogo será composto por pelo menos **5 níveis diferentes**.

Cada nível possuirá uma configuração própria de blocos.

As paredes poderão ser:

- Fixas;
- Geradas a partir de padrões predefinidos;
- Geradas utilizando algum nível de aleatoriedade.

A representação dos blocos será baseada em uma estrutura semelhante a uma matriz, na qual cada posição poderá representar a existência ou ausência de um bloco.

Ao destruir todos os blocos de um nível, o próximo nível será iniciado automaticamente.

---

## ⚙️ Mecânicas previstas

Entre as principais mecânicas do jogo estão:

- Movimento da bola;
- Movimento do paddle;
- Colisão da bola com as paredes;
- Colisão da bola com o paddle;
- Colisão da bola com os blocos;
- Destruição dos blocos após colisão;
- Progressão automática entre os níveis;
- Reprodução de som no início da fase;
- Reprodução de som quando a bola atingir o paddle;
- Tratamento da perda da bola;
- Opção de reiniciar o nível atual;
- Opção de avançar para o próximo nível.

---

## 🛠️ Tecnologias

As principais tecnologias previstas para o desenvolvimento são:

| Tecnologia | Utilização |
|---|---|
| Flutter | Desenvolvimento da aplicação mobile |
| Dart | Linguagem de programação |
| Flame Engine | Desenvolvimento das mecânicas do jogo |
| Android Studio | Ambiente de desenvolvimento e gerenciamento do Android SDK |
| Visual Studio Code | Editor de código |
| Git | Controle de versão |
| GitHub | Hospedagem do código e documentação |

Mais detalhes podem ser encontrados em:

➡️ [Documentação de tecnologias](docs/01-tecnologias.md)

---

## 🎨 Wireframes

O projeto contará com wireframes de alta definição para representar a estrutura das telas antes da implementação.

Serão planejadas as seguintes telas:

- Tela inicial;
- Tela de integrantes;
- Tela de configurações;
- Tela de seleção/início do jogo;
- Nível 1;
- Nível 2;
- Nível 3;
- Nível 4;
- Nível 5;
- Tela de perda;
- Tela de conclusão de nível.

A documentação dos wireframes está disponível em:

➡️ [Documentação dos Wireframes](docs/02-wireframes.md)

---

## 🧩 Construção dos níveis

A construção das paredes de blocos será documentada considerando uma estrutura semelhante a uma matriz.

Cada posição da matriz poderá representar:

- `1` — existência de um bloco;
- `0` — espaço vazio.

Essa abordagem permite criar diferentes formatos de paredes e também aplicar aleatoriedade na composição dos níveis.

Mais informações:

➡️ [Construção das paredes de blocos e níveis](docs/03-construcao-dos-niveis.md)

---

## 📂 Organização da documentação

A documentação do projeto está organizada da seguinte forma:

```text
brick-rush/
│
├── docs/
│   ├── wireframes/
│   ├── 01-tecnologias.md
│   ├── 02-wireframes.md
│   └── 03-construcao-dos-niveis.md
│
├── lib/
├── android/
├── assets/
├── test/
│
├── README.md
├── pubspec.yaml
└── .gitignore