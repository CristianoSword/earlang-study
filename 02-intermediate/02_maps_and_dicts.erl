%% @doc Intermediate 02: Maps and Dicts
-module('02_maps_and_dicts').
-export([demo/0]).

demo() ->
    Map = #{a => 1, b => 2},
    MapVal = maps:get(a, Map),
    Dict = dict:from_list([{x, 10}, {y, 20}]),
    DictVal = dict:fetch(x, Dict),
    {MapVal, DictVal}.
