# 03 - Construção das Paredes de Blocos e Níveis

## 1. Introdução

O jogo Brick Rush será composto por cinco níveis diferentes.

Cada nível será representado por uma parede de blocos com uma configuração própria.

A construção das paredes será realizada utilizando uma estrutura semelhante a uma matriz bidimensional, permitindo definir quais posições possuem blocos e quais posições permanecem vazias.

Essa estrutura também permitirá utilizar padrões fixos e diferentes níveis de aleatoriedade.

---

## 2. Representação da Parede

A parede de blocos será representada por uma matriz bidimensional.

Cada posição da matriz poderá representar:

- `1` = existência de um bloco;
- `0` = posição sem bloco.

Exemplo:

```text
[
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 0, 0, 0, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1]
]
```

Nesse exemplo, cada linha representa uma fileira de blocos e cada número representa uma posição.

---

## 3. Construção dos Blocos

A matriz será percorrida linha por linha e coluna por coluna.

Quando o valor encontrado for `1`, será criado um bloco naquela posição.

Quando o valor for `0`, nenhuma peça será criada.

O processo pode ser representado da seguinte forma:

```text
Início
  │
  ▼
Carregar matriz do nível
  │
  ▼
Percorrer linhas
  │
  ▼
Percorrer colunas
  │
  ▼
Valor = 1?
 ┌┴──────────────┐
 │               │
Sim              Não
 │               │
 ▼               ▼
Criar bloco   Não criar bloco
 │               │
 └───────┬───────┘
         ▼
Próxima posição
         │
         ▼
Fim da matriz?
    │          │
   Não        Sim
    │          │
    └──────────┘
         │
         ▼
Parede criada
```

---

## 4. Nível 1

O primeiro nível utilizará uma parede com padrão fixo.

Exemplo de matriz:

```text
[
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1]
]
```

O objetivo do primeiro nível é apresentar uma parede simples e uniforme.

---

## 5. Nível 2

O segundo nível utilizará uma configuração diferente da primeira.

Exemplo:

```text
[
  [1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 0, 0, 0, 1, 1, 1],
  [1, 0, 1, 1, 1, 0, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, 1]
]
```

A presença de posições vazias altera o formato da parede.

---

## 6. Nível 3

O terceiro nível utilizará uma configuração com maior quantidade de espaços vazios.

Exemplo:

```text
[
  [1, 1, 0, 1, 1, 0, 1, 1],
  [1, 0, 0, 1, 1, 0, 0, 1],
  [0, 1, 1, 1, 1, 1, 1, 0],
  [1, 1, 0, 0, 0, 0, 1, 1]
]
```

Esse padrão cria uma parede mais irregular.

---

## 7. Nível 4

O quarto nível utilizará uma configuração ainda mais variada.

Exemplo:

```text
[
  [1, 0, 1, 0, 1, 0, 1, 0],
  [0, 1, 1, 1, 1, 1, 1, 0],
  [1, 1, 0, 1, 1, 0, 1, 1],
  [0, 1, 1, 1, 1, 1, 1, 0]
]
```

O padrão cria diferentes caminhos para a bola atingir os blocos.

---

## 8. Nível 5

O quinto nível será o mais complexo dos níveis planejados.

Exemplo:

```text
[
  [1, 1, 0, 1, 1, 0, 1, 1],
  [1, 0, 1, 1, 1, 1, 0, 1],
  [0, 1, 1, 0, 0, 1, 1, 0],
  [1, 1, 1, 1, 1, 1, 1, 1]
]
```

Esse nível combina regiões preenchidas e vazias para aumentar a variação da parede.

---

## 9. Utilização de Aleatoriedade

Além dos padrões fixos, o sistema poderá utilizar aleatoriedade para determinar quais posições da matriz receberão blocos.

Um exemplo de regra seria utilizar uma probabilidade para cada posição.

Por exemplo:

```text
Se número aleatório < 0.75
    criar bloco
Senão
    deixar posição vazia
```

Nesse caso, aproximadamente 75% das posições poderão receber blocos.

A utilização de uma variável de probabilidade permite controlar a quantidade de espaços vazios.

---

## 10. Controle da Aleatoriedade

A aleatoriedade será utilizada de maneira controlada para evitar a geração de paredes completamente vazias ou com poucos blocos.

Antes de iniciar a fase, o sistema deverá verificar se a parede possui uma quantidade mínima de blocos.

Caso a quantidade seja insuficiente, uma nova configuração poderá ser gerada.

Exemplo:

```text
Gerar matriz
     │
     ▼
Contar blocos
     │
     ▼
Quantidade mínima atingida?
   │              │
  Sim            Não
   │              │
   ▼              ▼
Aceitar       Gerar novamente
parede             │
   │               │
   └───────────────┘
           │
           ▼
      Iniciar nível
```

---

## 11. Posicionamento dos Blocos

Cada posição da matriz será convertida em uma posição dentro da área de jogo.

O posicionamento dependerá:

- Da largura disponível da tela;
- Da altura disponível;
- Da quantidade de colunas;
- Da quantidade de linhas;
- Do tamanho configurado para os blocos;
- Do espaçamento entre os blocos.

Dessa forma, a parede poderá se adaptar ao tamanho da tela do dispositivo.

---

## 12. Tamanho dos Blocos

O tamanho dos blocos poderá ser definido pelas configurações do aplicativo.

As configurações poderão permitir diferentes tamanhos predefinidos.

Por exemplo:

```text
Pequeno
Médio
Grande
```

A escolha do tamanho deverá ser considerada durante o cálculo da posição de cada bloco.

---

## 13. Destruição dos Blocos

Quando a bola colidir com um bloco, o bloco deverá ser removido da parede.

O sistema deverá atualizar a quantidade de blocos restantes.

Exemplo:

```text
Colisão detectada
       │
       ▼
Identificar bloco
       │
       ▼
Remover bloco
       │
       ▼
Atualizar quantidade
       │
       ▼
Existem blocos restantes?
      │             │
     Sim           Não
      │             │
      ▼             ▼
Continuar       Concluir nível
                │
                ▼
             Próximo nível
```

---

## 14. Progressão entre os Níveis

Ao destruir todos os blocos da parede atual, o nível será considerado concluído.

O próximo nível deverá ser iniciado automaticamente, conforme definido na proposta do projeto.

A sequência será:

```text
Nível 1
   ↓
Nível 2
   ↓
Nível 3
   ↓
Nível 4
   ↓
Nível 5
   ↓
Resultado final
```

---

## 15. Perda da Bola

Quando a bola não colidir com o paddle, o jogador será direcionado para a tela de perda da fase.

Nessa tela serão apresentadas as opções planejadas no projeto:

```text
┌──────────────────────────┐
│       FIM DA FASE        │
│                          │
│  Reiniciar nível atual   │
│                          │
│  Próximo nível           │
└──────────────────────────┘
```

A opção escolhida determinará o próximo estado do jogo.

---

## 16. Relação com o Paddle e a Bola

A parede de blocos será posicionada na região superior da área de jogo.

A bola será movimentada pela área de jogo e deverá colidir com os blocos.

O paddle será controlado pelo jogador e será responsável por rebater a bola.

O sistema deverá impedir que a bola atravesse todos os blocos sem que as colisões sejam processadas.

---

## 17. Resumo do Método

O método de construção das paredes pode ser resumido em:

1. Definir a matriz do nível;
2. Definir o tamanho dos blocos;
3. Percorrer a matriz;
4. Identificar posições com valor `1`;
5. Criar os blocos nessas posições;
6. Ignorar posições com valor `0`;
7. Posicionar os blocos na área de jogo;
8. Permitir colisões com a bola;
9. Remover os blocos atingidos;
10. Verificar a quantidade de blocos restantes;
11. Encerrar o nível quando não houver blocos;
12. Iniciar o próximo nível.

---

## 18. Conclusão

A utilização de uma matriz permite representar de forma simples e organizada as paredes de blocos do Brick Rush.

A combinação entre padrões fixos e aleatoriedade possibilita criar diferentes níveis utilizando a mesma estrutura de construção.

Esse método também facilita futuras alterações no jogo, pois novas paredes podem ser criadas apenas modificando os valores da matriz ou os parâmetros utilizados para sua geração.