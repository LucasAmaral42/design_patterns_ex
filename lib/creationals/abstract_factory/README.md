## Abstract Factory
### Explicação

Abstract Factory é um design criacional voltado para criações de acordo com uma família das estruturas.

O padrão **Abstract Factory** sugere a criação de um módulo responsável apenas pela criação das estruturas, evitando que a aplicação principal chame diretamente a criação das estruturas, para casos onde existe uma família de estruturas como o exemplo da implementação, o módulo fica responsável por criar as estruturas separando pela família.

**Vantagens**
* Single Responsibility Principle, a complexidade da criação das estruturas agora é responsabilidade de um módulo apenas, separando a criação do código principal (aplicação).
* As estruturas são as mesmas, porém de famílias diferentes.

**Desvantagens**
* Aumento da complexidade por conta de adicionar mais funções para a criação.

---
### Arquivos criados

- `classes/archer.ex`

  Modulo que define a estrutura do classe **archer**, pode ser adicionada as funções específicas para o Archer.

- `classes/knight.ex`

  Modulo que define a estrutura do classe **knight**, pode ser adicionada as funções específicas para o Knight.

- `classes/mage.ex`

  Modulo que define a estrutura do classe **mage**, pode ser adicionada as funções específicas para o Mage.

- `races.ex`

  Modulo responsável pelas funções de construção do Character (Personagem) de acordo com a raça (Elf, Human e Orc).
---
### Exemplo de execução

```elixir
  archer = :elf |> Races.create_character(:archer)
  # %Creationals.AbstractFactory.Classes.Archer{
  #   armor: 2,
  #   dexterity: 10,
  #   health: 10,
  #   intelligence: 3,
  #   strength: 4
  # }

  knight = :orc |> Races.create_character(:knight)
  # %Creationals.AbstractFactory.Classes.Knight{
  #   armor: 6,
  #   dexterity: 3,
  #   health: 18,
  #   intelligence: 2,
  #   strength: 10
  # }
```

