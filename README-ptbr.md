# 🚀 Guia de Estudos Erlang

<h4 align="center">
    <p>
        <a href="./README.md">English</a> | <b>Português</b>
    </p>
</h4>

Um guia abrangente para aprender Erlang, cobrindo desde fundamentos de programação funcional até concorrência e sistemas tolerantes a falhas, através de exemplos de código granulares.

## 📊 Progresso
Atualmente: 20/60 Passos Planejados

### Fase 1: Iniciante (Beginner)
| Passo | Tópico | Descrição |
|---|---|---|
| 01 | Hello World | Estrutura básica de módulo e output |
| 02 | Variáveis | Nomenclatura e imutabilidade |
| 03 | Funções | Definição, aridade e exportação |
| 04 | Pattern Matching | Seleção de cláusulas e extração de dados |
| 05 | Listas e Tuplas | Estruturas de dados principais |
| 06 | Recursão | Loops funcionais e acumuladores |
| 07 | Guards | Condições extras no pattern matching |
| 08 | Fluxo de Controle | Expressões Case e If |
| 09 | List Comprehensions | Transformações elegantes de listas |
| 10 | Maps e Records | Dados estruturados e pares KV |
| 11 | Higher Order Functions | Funções como cidadãs de primeira classe |
| 12 | Funções Anônimas | Sintaxe `fun` e closures |
| 13 | Strings e Binários | Manipulando texto e bitstreams |
| 14 | Exceções | Tratamento de erros com try/catch |
| 15 | File IO | Operações de armazenamento persistente |
| 16 | Concorrência Básica | Criação de processos com `spawn` |
| 17 | Troca de Mensagens | Comunicação via `!` e `receive` |
| 18 | Links e Monitors | Gerenciando dependências de processos |
| 19 | Processos Registrados | Nomeando processos globalmente |
| 20 | Tabelas ETS | Armazenamento em memória de alta performance |

## 🛠️ Como Executar

Para compilar e rodar qualquer módulo, você precisará do Erlang/OTP instalado.

### Usando o Shell (Interativo)
```bash
erl
> c("01_hello_world").
> '01_hello_world':start().
```

### Via Linha de Comando
```bash
erlc 01_hello_world.erl
erl -noshell -s 01_hello_world start -s init stop
```
