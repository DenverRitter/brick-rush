# 03 - Construção das Paredes de Blocos e Níveis

## 1. Introdução

O jogo Brick Rush será composto por diferentes níveis, sendo cada nível representado por uma parede de blocos.

A disposição dos blocos será definida por uma estrutura semelhante a uma matriz, na qual cada posição poderá representar a existência ou ausência de um bloco.

Essa abordagem permite criar diferentes padrões de paredes e possibilita a utilização de aleatoriedade na geração dos níveis.

---

## 2. Representação da Parede

A parede de blocos será representada por uma matriz bidimensional.

Cada posição da matriz representa um bloco:

- `1` = bloco existente
- `0` = posição sem bloco

Exemplo:

```text
[
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 0, 0, 0, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1]
]