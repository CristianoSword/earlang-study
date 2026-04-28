%% @doc Lesson 9: List Comprehensions
-module('09_list_comprehensions').
-export([double/1, even/1, product/2]).

double(L) -> [X * 2 || X <- L].

even(L) -> [X || X <- L, X rem 2 == 0].

product(L1, L2) -> [{X, Y} || X <- L1, Y <- L2].
