%% @doc Intermediate 10: Dynamic Code Loading
-module('10_dynamic_code').
-export([check_module/1]).

check_module(Mod) ->
    code:is_loaded(Mod).
