# 01 - Tecnologias e Ambiente de Desenvolvimento

## 1. Introdução

O projeto Brick Rush será desenvolvido como uma aplicação para dispositivos móveis, tendo como plataforma principal o sistema operacional Android.

A escolha das tecnologias considera os conhecimentos desenvolvidos nas disciplinas de Dispositivos Móveis I e Fundamentos de Inteligência Artificial, além da necessidade de desenvolver uma aplicação com interface gráfica, interação em tempo real, movimentação de objetos e detecção de colisões.

---

## 2. Ambiente de Desenvolvimento

O desenvolvimento será realizado em um computador com sistema operacional Windows 11.

As principais ferramentas utilizadas serão:

- Android Studio;
- Visual Studio Code;
- Flutter SDK;
- Dart SDK;
- Android SDK;
- Git;
- GitHub.

---

## 3. Linguagem de Programação

### Dart

A linguagem de programação utilizada será **Dart**, linguagem adotada pelo framework Flutter.

O Dart será responsável pela implementação da lógica da aplicação, gerenciamento das telas, regras do jogo, movimentação dos objetos, controle dos níveis e demais funcionalidades.

---

## 4. Framework Flutter

O **Flutter** será utilizado como framework principal para desenvolvimento da aplicação móvel.

A utilização do Flutter permite desenvolver a interface e a lógica da aplicação utilizando uma única base de código.

No projeto, o Flutter será responsável principalmente por:

- Construção das telas;
- Navegação;
- Componentes de interface;
- Configurações;
- Integração com o mecanismo do jogo;
- Geração da aplicação Android.

---

## 5. Flame Engine

Para implementação das características específicas do jogo será utilizado o **Flame Engine**.

O Flame é um motor de jogos desenvolvido para aplicações Flutter e oferece recursos adequados para jogos 2D.

No Brick Rush, sua utilização será planejada para:

- Gerenciamento do jogo;
- Atualização dos objetos;
- Movimentação da bola;
- Controle do paddle;
- Detecção de colisões;
- Gerenciamento dos blocos;
- Controle dos níveis;
- Atualização do estado do jogo.

---

## 6. Android Studio

O Android Studio será utilizado para:

- Gerenciamento do Android SDK;
- Configuração do emulador;
- Criação e gerenciamento de dispositivos virtuais;
- Execução e testes da aplicação;
- Suporte às ferramentas de desenvolvimento Android.

Foi configurado um dispositivo virtual Android para realização dos testes durante o desenvolvimento.

---

## 7. Visual Studio Code

O Visual Studio Code será utilizado como principal editor de código.

A ferramenta será utilizada para:

- Edição dos arquivos Dart;
- Edição dos arquivos Markdown;
- Organização do projeto;
- Execução de comandos Flutter;
- Execução de comandos Git;
- Controle do código-fonte.

---

## 8. Git e GitHub

O Git será utilizado para controle de versão do projeto.

O GitHub será utilizado como plataforma de hospedagem do repositório público exigido pela disciplina.

O projeto será desenvolvido de forma incremental, utilizando commits organizados e seguindo a convenção **Conventional Commits**.

Exemplos:

```text
chore: inicializa projeto Flutter
docs: adiciona documentação das tecnologias
docs: adiciona wireframes
docs: documenta construção dos níveis
feat: implementa tela inicial
feat: implementa movimentação da bola
feat: implementa colisão dos blocos
---

## 6. Geração do APK

Após o desenvolvimento e os testes, o APK de versão final será gerado utilizando o Flutter.

Com o terminal aberto na pasta do projeto:

```bash
flutter build apk --release
---
## 9. Geração do APK

Após a configuração do projeto e instalação das dependências, o aplicativo poderá ser executado e compilado utilizando os comandos do Flutter.

Para atualizar as dependências do projeto:

```bash
flutter pub get