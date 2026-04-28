%% @doc Intermediate 09: Nested List Comprehensions
-module('09_nested_comprehensions').
-export([demo/0]).

demo() ->
    Matrix = [[1, 2], [3, 4]],
    Flattened = [X || Row <- Matrix, X <- Row],
    Flattened.
