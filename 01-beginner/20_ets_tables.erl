%% @doc Lesson 20: ETS Tables
-module('20_ets_tables').
-export([demo/0]).

demo() ->
    Table = ets:new(my_table, [set]),
    ets:insert(Table, {key1, value1}),
    ets:lookup(Table, key1).
