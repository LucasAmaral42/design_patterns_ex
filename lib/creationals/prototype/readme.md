## Prototype

### Explicação

Prototype é um padrão criacional, que consiste no módulo existir uma função responsável pela clonagem da estrutura.

O Prototype sugere a criação de uma função responsável pela clonagem da estrutura chamando a função de criação com os mesmos parâmetros usados na criação da estrutura principal.

**Vantagens**
* Não necessita chamar a função de criação a todo momento.
* Criar estruturas mais complexas, pois para copiar basta clonar.

**Desvantagens**
* Clonar estruturas com dependências circulares pode ser complexo.

---
### Arquivos criados

- `tracker.ex`

Uma estrutura de monitoria de eventos com adição, remoção, limpeza e clonagem da monitoria de eventos.

---
### Exemplo de execução

```elixir
tracker = Tracker.new
#-> %{events: [], updated_at: nil}

tracker = Tracker.add(tracker, %{operation: :remove, item: :user})
#-> %{
#     events: [%{item: :user, operation: :remove}],
#     updated_at: ~U[2022-09-27 03:28:41.117786Z]
#   }

{event, tracker} = Tracker.remove(tracker)
#-> {%{item: :user, operation: :remove},
#   %{
#     events: [%{item: :user, operation: :remove}],
#     updated_at: ~U[2022-09-27 03:30:23.712738Z]
#   }}

copy = Tracker.copy(tracker)
#-> %{
#     events: [%{item: :user, operation: :remove}],
#     updated_at: ~U[2022-09-27 03:33:01.335524Z]
#   }

copy = Tracker.remove_all_events
#-> %{events: [], updated_at: ~U[2022-09-27 03:34:28.992830Z]}
```

