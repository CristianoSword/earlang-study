%% @doc Intermediate 03: Sets and Queues
-module('03_sets_and_queues').
-export([demo/0]).

demo() ->
    Set = sets:from_list([1, 2, 3, 1]),
    IsMem = sets:is_element(2, Set),
    Q = queue:from_list([a, b, c]),
    {{value, Item}, _NewQ} = queue:out(Q),
    {IsMem, Item}.
