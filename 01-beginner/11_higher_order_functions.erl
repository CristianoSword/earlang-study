%% @doc Lesson 11: Higher Order Functions
-module('11_higher_order_functions').
-export([apply_twice/2, map/2]).

apply_twice(F, X) -> F(F(X)).

map(F, []) -> [];
map(F, [H|T]) -> [F(H) | map(F, T)].
