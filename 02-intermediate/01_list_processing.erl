%% @doc Intermediate 01: Advanced List Processing
-module('01_list_processing').
-export([demo/0, start/0]).

start() ->
    io:format("Result: ~p~n", [demo()]).

demo() ->
    L = [1, 2, 3, 4, 5],
    Mapped = lists:map(fun(X) -> X * 10 end, L),
    Filtered = lists:filter(fun(X) -> X rem 2 == 0 end, L),
    Folded = lists:foldl(fun(X, Acc) -> X + Acc end, 0, L),
    {Mapped, Filtered, Folded}.
