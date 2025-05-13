# Sistema de Gerenciamento de Tarefas — README

## Visão Geral

Este projeto demonstra o uso de diversos Design Patterns (Padrões de Projeto) em um sistema de gerenciamento de tarefas, incluindo Factory Method, Decorator, Observer, e outros padrões implementados conforme solicitado.

---

## Funcionalidades e Padrões Implementados

### 1. **Factory Method (Criacional)**

- **Arquivo:** `js/patterns/factory.js`, `js/models/task.js`
- **O que foi feito:**
  - Adicionada a classe `ShoppingTask` para tarefas do tipo "Compras".
  - Atualizado o método `createTask()` da `TaskFactory` para suportar o novo tipo.
  - Adicionada a opção "Compras" no `<select>` do formulário em `index.html`.

### 2. **Decorator (Estrutural)**

- **Arquivo:** `js/patterns/decorator.js`, `index.html`, `js/ui/ui-controller.js`
- **O que foi feito:**
  - Criada a classe `ChecklistDecorator` para adicionar um checklist às tarefas.
  - Adicionada interface no HTML para marcar a opção "Checklist" e inserir itens.
  - Atualizado o método `applyDecorators()` para aplicar o checklist.
  - Melhorado o layout do card para suportar muitos recursos decorados.

### 3. **Observer (Comportamental)**

- **Arquivo:** `js/patterns/observer.js`, `index.html`, `js/ui/ui-controller.js`
- **O que foi feito:**
  - Criada a classe `SoundObserver` que toca um som ao mudar o status da tarefa.
  - Adicionada opção "Notificação Sonora" na interface.
  - Atualizado `initObservers()` e `updateObservers()` para suportar o novo observer.

### 4. **Melhorias de Layout**

- **Arquivo:** `js/models/task.js`, `js/patterns/decorator.js`
- **O que foi feito:**
  - Cards de tarefas agora suportam muitos recursos sem quebrar o layout.
  - Badges e botões organizados em linhas separadas, checklist com rolagem.

---

## Sugestões de Novos Padrões (não implementados, mas sugeridos)

- **Singleton:** Para configurações globais do app.
- **Adapter:** Para integração com APIs externas de tarefas.
- **Command:** Para funcionalidade de desfazer/refazer ações do usuário.

---

## Como Usar

1. Clone o repositório e abra o `index.html` em seu navegador.
2. Crie tarefas de diferentes tipos (incluindo "Compras").
3. Use os decoradores para adicionar recursos como checklist, prioridade, etiquetas e data de vencimento.
4. Ative/desative observadores (incluindo notificação sonora) na interface de notificações.

---

## Créditos

Implementado conforme solicitações do usuário, com foco em exemplos práticos de Design Patterns em JavaScript.
