%% @doc Lesson 6: Recursion
-module('06_recursion').
-export([factorial/1, sum/1]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).
