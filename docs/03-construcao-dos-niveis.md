# 03 - Construção das Paredes de Blocos e Níveis

## 1. Introdução

O jogo Brick Rush será composto por diferentes níveis, sendo cada nível representado por uma parede de blocos.

A disposição dos blocos será definida utilizando uma estrutura semelhante a uma matriz, na qual cada posição poderá representar a existência ou ausência de um bloco.

Essa abordagem permite criar diferentes padrões de paredes e também possibilita a utilização de aleatoriedade na geração dos níveis.

---

## 2. Representação da Parede

A parede de blocos poderá ser representada por uma matriz.

Por exemplo:

```text
[
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1]
]