-module(variaveis).
-export([start/0]).

start() ->
    %% =========================================================
    %% 1. VARIÁVEIS EM ERLANG
    %% =========================================================
    %% Em Erlang, variáveis SEMPRE começam com letra maiúscula
    %% ou underscore (_). São imutáveis: uma vez atribuídas, 
    %% não podem ser alteradas (single assignment).

    Nome = "Super Nintendo",
    Preco = 350.00,
    Quantidade = 5,
    Disponivel = true,

    io:format("~n=== VARIÁVEIS BÁSICAS ===~n"),
    io:format("Nome:        ~s~n",  [Nome]),
    io:format("Preço:       R$ ~.2f~n", [Preco]),
    io:format("Quantidade:  ~w~n",  [Quantidade]),
    io:format("Disponível:  ~w~n",  [Disponivel]),

    %% =========================================================
    %% 2. TIPOS DE DADOS
    %% =========================================================
    %% Erlang é dinamicamente tipado — o tipo é inferido pelo valor.

    Inteiro    = 42,
    Flutuante  = 3.14,
    Atom       = erlang,          % atom: identificador constante
    Booleano   = false,           % booleans são atoms: true / false
    Lista      = [1, 2, 3, 4, 5],
    Tupla      = {playstation, 2, 299.99},
    Binario    = <<"Olá, Erlang">>,  % binary string (eficiente)

    io:format("~n=== TIPOS DE DADOS ===~n"),
    io:format("Inteiro:   ~w~n", [Inteiro]),
    io:format("Flutuante: ~w~n", [Flutuante]),
    io:format("Atom:      ~w~n", [Atom]),
    io:format("Booleano:  ~w~n", [Booleano]),
    io:format("Lista:     ~w~n", [Lista]),
    io:format("Tupla:     ~w~n", [Tupla]),
    io:format("Binário:   ~s~n", [Binario]),

    %% =========================================================
    %% 3. PATTERN MATCHING (casamento de padrão)
    %% =========================================================
    %% Em Erlang, o '=' não é só atribuição — é pattern matching.
    %% Ele verifica SE o padrão do lado esquerdo bate com o valor
    %% do lado direito.

    io:format("~n=== PATTERN MATCHING ===~n"),

    %% Desestruturando uma tupla
    {Console, Geracao, PrecoConsole} = Tupla,
    io:format("Console: ~w | Geração: ~w | Preço: R$ ~.2f~n",
              [Console, Geracao, PrecoConsole]),

    %% Desestruturando uma lista com Head | Tail
    [Primeiro | Resto] = Lista,
    io:format("Primeiro elemento: ~w~n", [Primeiro]),
    io:format("Resto da lista:    ~w~n", [Resto]),

    %% =========================================================
    %% 4. VARIÁVEL ANÔNIMA _
    %% =========================================================
    %% Use _ quando não precisa do valor — evita warning do compilador.

    io:format("~n=== VARIÁVEL ANÔNIMA _ ===~n"),
    {_, GeracaoSomente, _} = Tupla,
    io:format("Só a geração: ~w~n", [GeracaoSomente]),

    %% =========================================================
    %% 5. IMUTABILIDADE
    %% =========================================================
    %% Tentar reatribuir uma variável causa erro em runtime.
    %% O exemplo abaixo está comentado propositalmente:
    %%
    %%   Nome = "Mega Drive",  %% ERRO: Nome já está ligado a "Super Nintendo"
    %%
    %% Para "alterar" um valor, você cria uma nova variável:

    NomeAtualizado = "Mega Drive",
    io:format("~n=== IMUTABILIDADE ===~n"),
    io:format("Original:   ~s~n", [Nome]),
    io:format("Nova var:   ~s~n", [NomeAtualizado]),

    %% =========================================================
    %% 6. OPERAÇÕES COM VARIÁVEIS
    %% =========================================================

    PrecoComDesconto = Preco * 0.9,
    TotalEmEstoque   = Preco * Quantidade,
    NomeUpper        = string:uppercase(Nome),

    io:format("~n=== OPERAÇÕES ===~n"),
    io:format("Preço original:    R$ ~.2f~n", [Preco]),
    io:format("Com 10%% desconto:  R$ ~.2f~n", [PrecoComDesconto]),
    io:format("Total em estoque:  R$ ~.2f~n", [TotalEmEstoque]),
    io:format("Nome em maiúscula: ~s~n", [NomeUpper]),

    %% =========================================================
    %% 7. VARIÁVEIS EM MAPS (dicionários)
    %% =========================================================
    %% Maps são pares chave-valor, muito usados para representar objetos.

    Produto = #{
        nome      => "Super Nintendo",
        preco     => 350.00,
        condicao  => usado,
        vendidos  => 12
    },

    io:format("~n=== MAP (dicionário) ===~n"),
    io:format("Produto: ~w~n", [Produto]),

    %% Acessando valores do map
    NomeProduto  = maps:get(nome, Produto),
    PrecoProduto = maps:get(preco, Produto),
    io:format("Nome:  ~s~n",       [NomeProduto]),
    io:format("Preço: R$ ~.2f~n",  [PrecoProduto]),

    io:format("~n=== FIM ===~n").
