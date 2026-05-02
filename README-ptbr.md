# 🚀 Guia de Estudos Erlang

<h4 align="center">
    <p>
        <a href="./README.md">English</a> | <b>Português</b>
    </p>
</h4>

Um guia abrangente para aprender Erlang, cobrindo desde fundamentos de programação funcional até concorrência e sistemas tolerantes a falhas, através de exemplos de código granulares.

## 📊 Progresso
Atualmente: 60/60 Passos Planejados

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

### Fase 2: Intermediário
| Passo | Tópico | Descrição |
|---|---|---|
| 01 | Processamento de Listas | Uso avançado do módulo lists |
| 02 | Maps e Dicts | Comparação de armazenamento Chave-Valor |
| 03 | Sets e Queues | Coleções de dados especializadas |
| 04 | Bibliotecas Padrão | Módulos Timer, OS e Calendar |
| 05 | Sistema de Arquivos | Operações de metadados e diretórios |
| 06 | Arquivos de Cabeçalho | Compartilhando records e macros com .hrl |
| 07 | Construção Binária | Criando dados binários eficientemente |
| 08 | Sintaxe de Bits | Pattern matching binário avançado |
| 09 | Comprehensions Aninhadas | Transformações complexas de dados |
| 10 | Código Dinâmico | Carregamento de módulos e hot-swap |
| 11 | Pré-processador | Macros e definições em tempo de compilação |
| 12 | Intro ao Gen_Server | Comportamento OTP para servidores genéricos |
| 13 | Intro ao Supervisor | Tolerância a falhas e árvores de processos |
| 14 | Máquinas de Estado | Gerenciando estados com gen_statem |
| 15 | Nós Distribuídos | Comunicação entre nós Erlang |
| 16 | Portas e Interop | Interface com programas externos do SO |
| 17 | Estrutura de App | O arquivo .app e comportamento de aplicação |
| 18 | Workflow Rebar3 | Ferramenta de build padrão do Erlang |
| 19 | Tipos e Specs | Análise estática com specs do dialyzer |
| 20 | Testes EUnit | Fundamentos de testes unitários |

### Fase 3: Avançado (Advanced)
| Passo | Tópico | Descrição |
|---|---|---|
| 21 | Armazenamento Dets | Armazenamento de termos em disco |
| 22 | Intro Mnesia | Banco de dados distribuído soft real-time |
| 23 | Transações Mnesia | Propriedades ACID no Mnesia |
| 24 | Índices Mnesia | Otimizando buscas não-primárias |
| 25 | Termos Persistentes | Acesso rápido a dados read-only |
| 26 | Gen_UDP | Networking sem conexão |
| 27 | Gen_TCP | Streaming de dados confiável |
| 28 | SSL/TLS | Comunicações seguras |
| 29 | Portas Avançadas | Interoperabilidade com processos do SO |
| 30 | Intro NIFs | Interface com bibliotecas C |
| 31 | Supervisores Dinâmicos | Gerenciando processos on-the-fly |
| 32 | Comportamentos Custom | Definindo padrões de callback |
| 33 | Grupos de Processos | Agrupamento global de processos |
| 34 | Registro Global | Registro de nomes em todo o cluster |
| 35 | Mnesia Distribuído | Replicação de banco de dados |
| 36 | Observer | Ferramenta GUI de monitoramento |
| 37 | Profiling | Análise de performance (fprof) |
| 38 | Tracing | Inspeção de funções em runtime |
| 39 | Gestão de Releases | Empacotamento para produção com relx |
| 40 | Projeto Final | Implementação de chat distribuído |

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
