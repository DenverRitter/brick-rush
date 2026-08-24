# 01 - Tecnologias e Ambiente de Desenvolvimento

## 1. Introdução

O projeto **Brick Rush** será desenvolvido como uma aplicação para dispositivos móveis, tendo como plataforma principal o sistema operacional Android.

A escolha das tecnologias considera os conhecimentos desenvolvidos nas disciplinas de Dispositivos Móveis I e Fundamentos de Inteligência Artificial, além das necessidades específicas de um jogo 2D, como movimentação de objetos, interação com o usuário, controle de colisões, gerenciamento de níveis e reprodução de sons.

---

## 2. Ambiente de Desenvolvimento

O desenvolvimento do projeto será realizado em um computador com sistema operacional **Windows 11**.

As principais ferramentas utilizadas no desenvolvimento serão:

- Visual Studio Code;
- Android Studio;
- Flutter SDK;
- Dart SDK;
- Android SDK;
- Git;
- GitHub.

O **Visual Studio Code** será utilizado como principal editor para desenvolvimento e documentação do projeto.

O **Android Studio** será utilizado principalmente para gerenciamento do Android SDK, configuração do ambiente Android e utilização do emulador para testes.

---

## 3. Linguagem de Programação

### Dart

A linguagem de programação escolhida para o desenvolvimento do aplicativo é a **Dart**, utilizada pelo framework Flutter.

A linguagem será utilizada para implementar:

- lógica da aplicação;
- gerenciamento das telas;
- regras do jogo;
- movimentação da bola;
- movimentação do paddle;
- controle dos blocos;
- gerenciamento dos níveis;
- configurações;
- interação com o usuário.

---

## 4. Framework Flutter

O **Flutter** será utilizado como framework principal para o desenvolvimento da aplicação móvel.

O Flutter permite desenvolver aplicações utilizando uma única base de código, possibilitando a criação das interfaces e a execução do aplicativo em dispositivos Android.

No projeto Brick Rush, o Flutter será utilizado para:

- criação das telas;
- navegação entre telas;
- criação dos componentes da interface;
- tela inicial;
- menu principal;
- tela de integrantes;
- tela de configurações;
- seleção dos níveis;
- integração com o jogo;
- geração do aplicativo Android.

---

## 5. Flame Engine

Para o desenvolvimento das mecânicas do jogo será utilizado o **Flame Engine**.

O Flame é um motor de jogos desenvolvido para aplicações Flutter e possui recursos apropriados para o desenvolvimento de jogos 2D.

No Brick Rush, o Flame será utilizado para auxiliar na implementação de:

- gerenciamento do jogo;
- movimentação da bola;
- movimentação do paddle;
- gerenciamento dos blocos;
- detecção de colisões;
- atualização dos objetos;
- controle dos níveis;
- gerenciamento do estado do jogo;
- reprodução de elementos relacionados ao jogo.

A utilização do Flame permite organizar os elementos do jogo de maneira adequada para uma aplicação 2D.

---

## 6. Android Studio

O **Android Studio** será utilizado como ferramenta de apoio ao desenvolvimento Android.

Suas principais funções no projeto serão:

- gerenciamento do Android SDK;
- configuração do ambiente Android;
- criação e gerenciamento do dispositivo virtual;
- execução do aplicativo no emulador;
- realização de testes;
- suporte às ferramentas necessárias para compilação Android.

Foi utilizado um dispositivo virtual Android para realizar os testes do aplicativo durante o desenvolvimento.

---

## 7. Visual Studio Code

O **Visual Studio Code** será utilizado como principal editor do projeto.

A ferramenta será utilizada para:

- edição dos arquivos Dart;
- edição dos arquivos Markdown;
- organização dos diretórios;
- execução dos comandos Flutter;
- execução dos comandos Git;
- acompanhamento das alterações;
- desenvolvimento e manutenção do projeto.

A documentação da primeira etapa também será mantida dentro do projeto utilizando arquivos no formato Markdown (`.md`).

---

## 8. Git e GitHub

O **Git** será utilizado como sistema de controle de versão do projeto.

O **GitHub** será utilizado para hospedagem do repositório público, armazenamento do código-fonte e disponibilização da documentação exigida na disciplina.

Repositório do projeto:

**https://github.com/DenverRitter/brick-rush**

O desenvolvimento será organizado utilizando commits incrementais.

Também será utilizada a convenção **Conventional Commits** para facilitar a identificação das alterações realizadas no projeto.

Exemplos de commits utilizados:

```text
chore: inicializa projeto Flutter
docs: adiciona documentação inicial do projeto
docs: adiciona wireframes
docs: documenta construção dos níveis
docs: atualiza documentação das tecnologias
feat: implementa tela inicial
feat: implementa movimentação da bola
feat: implementa colisão dos blocos 