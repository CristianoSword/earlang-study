%% @doc Lesson 9: List Comprehensions
-module('09_list_comprehensions').
-export([double/1, even/1, product/2, start/0]).

start() ->
    L = [1, 2, 3, 4, 5, 6],
    io:format("Original: ~p~n", [L]),
    io:format("Doubled: ~p~n", [double(L)]),
    io:format("Even only: ~p~n", [even(L)]),
    io:format("Product [1,2] x [a,b]: ~p~n", [product([1, 2], [a, b])]).

double(L) -> [X * 2 || X <- L].

even(L) -> [X || X <- L, X rem 2 == 0].

product(L1, L2) -> [{X, Y} || X <- L1, Y <- L2].
