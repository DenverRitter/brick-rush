# 04 - Arquitetura do Aplicativo

## 1. Estrutura Geral

O projeto Brick Rush será desenvolvido utilizando Flutter, com a linguagem Dart e o framework Flame Engine.

A aplicação será organizada de forma modular, separando as telas, componentes, configurações, níveis e elementos responsáveis pelo funcionamento do jogo.

## 2. Organização do Projeto

A estrutura planejada será:

```text
brick_rush/
├── android/
├── assets/
│   ├── images/
│   └── sounds/
├── docs/
├── lib/
│   └── game/
│       ├── components/
│       ├── config/
│       ├── levels/
│       ├── managers/
│       ├── managerstype/
│       ├── screens/
│       └── widgets/
├── test/
└── pubspec.yaml