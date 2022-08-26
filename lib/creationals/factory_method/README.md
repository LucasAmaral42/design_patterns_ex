## Factory Method

### Explicação

Factory Method é um padrão criacional, que consiste em módulo ser responsável pela criação das estruturas.

O Factory Method sugere a criação de um módulo responsável apenas pela criação das estruturas, evitando que a aplicação principal chame diretamente a criação das estruturas.

**Vantagens**
* Single Responsibility Principle, a criação das estruturas agora é responsabilidade de um módulo apenas, separando a criação do código principal (aplicação).
* Open/Closed Principle, adicionar novos tipos de estruturas sem interferir nas já existentes.

**Desvantagens**
* Aumento da complexidade conforme vai adicionando mais módulos para a criação.

---
### Arquivos criados

- `items/bow.ex`

  Modulo que define a estrutura do item **bow**, pode ser adicionada as funções específicas para o Bow.

- `items/sword.ex`

  Modulo que define a estrutura do item **sword**, pode ser adicionada as funções específicas para o Sword.

- `items/shield.ex`

  Modulo que define a estrutura do item **shield**, pode ser adicionada as funções específicas para o Shield.

- `item_creator.ex`
  Responsável pela criação das estruturas conforme a necessidade da aplicação através da função create/1, create/2 ou create/3, retornando a estrutura de Bow, Shield ou Sword de acordo com os parâmetros passados.

- `items.ex`

  Responsável pelas funções comuns entre os items, a função implementada para o exemplo dos itens foi `upgrade/1` que recebe uma estrutura como parâmetro e faz a lógica de upgrade dos itens aumentando o nivel e seu atributo específico.

---
### Exemplo de execução

```elixir
sword = Creationals.FactoryMethod.ItemCreator.create(:sword)
#-> %Creationals.FactoryMethod.Items.Sword{damage: 14, level: 1}

shield = Creationals.FactoryMethod.ItemCreator.create(:shield)
#-> %Creationals.FactoryMethod.Items.Shield{defense: 8, level: 1}

bow = Creationals.FactoryMethod.ItemCreator.create(:bow)
#-> %Creationals.FactoryMethod.Items.Bow{level: 1, range: 10}

upgraded_sword = Creationals.FactoryMethod.Items.upgrade(sword)
#-> %Creationals.FactoryMethod.Items.Sword{damage: 15.6, level: 2}

upgraded_shield = Creationals.FactoryMethod.Items.upgrade(shield)
#-> %Creationals.FactoryMethod.Items.Shield{defense: 9.5, level: 2}

upgraded_bow = Creationals.FactoryMethod.Items.upgrade(bow)
#-> %Creationals.FactoryMethod.Items.Bow{level: 2, range: 11.8}
```

