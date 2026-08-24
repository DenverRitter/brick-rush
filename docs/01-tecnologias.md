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

Exemplos de commits utilizados no projeto:

```text
chore: inicializa projeto Flutter
docs: adiciona documentação das tecnologias
docs: adiciona wireframes
docs: documenta construção dos níveis
feat: implementa tela inicial
feat: implementa movimentação da bola
feat: implementa colisão dos blocos
```

---

## 9. Geração do APK

Após o desenvolvimento e os testes, o aplicativo poderá ser compilado para Android utilizando o Flutter.

Primeiramente, as dependências do projeto podem ser atualizadas com:

```bash
flutter pub get
```

Para gerar o APK em versão de lançamento:

```bash
flutter build apk --release
```

Após a execução do comando, o arquivo APK será gerado no seguinte diretório:

```text
build/app/outputs/flutter-apk/app-release.apk
```

O APK poderá posteriormente ser instalado em um dispositivo Android ou utilizado para testes.

---

## 10. Processo de Desenvolvimento

O processo de desenvolvimento será realizado de forma incremental.

As principais etapas previstas são:

1. Planejamento da interface;
2. Criação dos wireframes;
3. Definição das paredes dos níveis;
4. Configuração do projeto Flutter;
5. Implementação das telas;
6. Implementação do jogo;
7. Implementação da movimentação da bola;
8. Implementação do paddle;
9. Implementação das colisões;
10. Implementação dos níveis;
11. Implementação dos efeitos sonoros;
12. Testes no dispositivo Android;
13. Geração do APK.

---

## 11. Resumo das Tecnologias

| Tecnologia | Utilização |
|---|---|
| Flutter | Desenvolvimento da aplicação mobile |
| Dart | Linguagem de programação |
| Flame Engine | Desenvolvimento das mecânicas do jogo |
| Android Studio | Android SDK e emulador |
| Visual Studio Code | Edição e organização do código |
| Git | Controle de versão |
| GitHub | Hospedagem do código e documentação |

---

## 12. Conclusão

A combinação entre Flutter, Dart e Flame Engine permitirá desenvolver o Brick Rush utilizando uma estrutura adequada para aplicações móveis e jogos 2D.

O uso do Git e GitHub permitirá manter o histórico do desenvolvimento e organizar a documentação do projeto de forma incremental.

A geração do APK será realizada utilizando o comando de compilação do Flutter, permitindo posteriormente a instalação e execução do aplicativo em dispositivos Android.