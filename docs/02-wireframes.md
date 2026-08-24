
---

# 2. `docs/02-wireframes.md`

Esse arquivo atual já está razoável, mas vamos deixar **mais completo e organizado**, principalmente para atender aos 4 pontos dos wireframes.

Apague tudo e coloque:

```markdown
# 02 - Wireframes do Aplicativo

## 1. Introdução

Os wireframes têm como objetivo representar visualmente a estrutura e o fluxo de navegação planejados para o aplicativo **Brick Rush** antes da implementação definitiva das telas.

O desenvolvimento dos wireframes permite definir a organização dos elementos da interface, os caminhos de navegação e a disposição dos componentes que serão utilizados posteriormente no aplicativo.

Os wireframes foram elaborados considerando a utilização em dispositivos móveis e a necessidade de ocupar a maior área possível da tela durante a execução do jogo.

Os wireframes representam o planejamento visual do aplicativo e não devem ser considerados como as telas finais da implementação.

---

## 2. Fluxo Principal de Navegação

O fluxo principal planejado para o aplicativo é:

```text
                         ┌───────────────────┐
                         │    TELA INICIAL   │
                         └─────────┬─────────┘
                                   │
              ┌────────────────────┼────────────────────┐
              │                    │                    │
              ▼                    ▼                    ▼
      ┌──────────────┐      ┌──────────────┐    ┌────────────────┐
      │ INTEGRANTES  │      │    JOGAR     │    │ CONFIGURAÇÕES  │
      └──────────────┘      └──────┬───────┘    └────────────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │ SELEÇÃO DE NÍVEL  │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │      NÍVEL 1      │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │      NÍVEL 2      │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │      NÍVEL 3      │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │      NÍVEL 4      │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │      NÍVEL 5      │
                         └─────────┬─────────┘
                                   │
                                   ▼
                         ┌───────────────────┐
                         │     RESULTADO     │
                         └───────────────────┘