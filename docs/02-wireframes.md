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