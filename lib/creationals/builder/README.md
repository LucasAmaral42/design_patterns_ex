## Builder
### Explicação

Builder é um design criacional voltado para criações complexas serem feitas por etapas.

O padrão **Builder** remove a etapa de criação do módulo principal e move para um módulo específico de criação.

**Vantagens**
* Single Responsibility Principle, a complexidade da criação das estruturas agora é responsabilidade de um módulo apenas, separando a criação do código principal (aplicação).
* Construção das estruturas por etapas.

**Desvantagens**
* Aumento da complexidade por conta de adicionar mais módulos para a criação.

---
### Arquivos criados

- `classes/archer.ex`

  Modulo que define a estrutura do classe **archer**, pode ser adicionada as funções específicas para o Archer.

- `classes/knight.ex`

  Modulo que define a estrutura do classe **knight**, pode ser adicionada as funções específicas para o Knight.

- `classes/mage.ex`

  Modulo que define a estrutura do classe **mage**, pode ser adicionada as funções específicas para o Mage.

- `character_builder.ex`

  Modulo responsável pelas funções de construções por etapas do Character (Personagem), como setter de vida, armadura, força, inteligência e destreza.

- `character.ex`

  Modulo responsável em chamar as funções do builder de acordo com o personagem que a aplicação solicita que seja criado, responsável também por chamar as steps do **Builder** conforme precisa para a criação.
  A vantagem da função `build_character/1` de criação de usuário é que a aplicação principal apenas passa qual classe do personagem deve ser criada `build_character(:mage)`.
---
### Exemplo de execução

```elixir
  mage = Character.build_character(:mage)
  # -> %Creationals.Builder.Classes.Mage{
  #      armor: 2,
  #      dexterity: 4,
  #      health: 6,
  #      intelligence: 12,
  #      strength: 3
  #    }
  archer = Character.build_character(:archer)
  # -> %Creationals.Builder.Classes.Archer{
  #      armor: 4,
  #      dexterity: 8,
  #      health: 8,
  #      intelligence: 6,
  #      strength: 3
  #    }
  smart_archer = Character.build_character(:smart_archer)
  # -> %Creationals.Builder.Classes.Archer{
  #      armor: 4,
  #      dexterity: 12,
  #      health: 8,
  #      intelligence: 13,
  #      strength: 3
  #    }
  heavy_knight = Character.build_character(:heavy_knight)
  # -> %Creationals.Builder.Classes.Knight{
  #      armor: 8,
  #      dexterity: 2,
  #      health: 21,
  #      intelligence: 2,
  #      strength: 12
  #    }
  knigth = Character.build_character(:knight)
  # -> %Creationals.Builder.Classes.Knight{
  #      armor: 7,
  #      dexterity: 5,
  #      health: 12,
  #      intelligence: 3,
  #      strength: 8
  #    }

  error = Character.build_character(:bard)
  # -> {:error, "Need to specify the class as :archer, :smart_archer, :heavy_knight, :knigth or :mage"}
```

