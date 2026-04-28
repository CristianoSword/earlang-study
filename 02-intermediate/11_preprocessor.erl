%% @doc Intermediate 11: Preprocessor Macros
-module('11_preprocessor').
-export([demo/0]).

-define(DEBUG(Msg), io:format("DEBUG: ~p~n", [Msg])).

demo() ->
    ?DEBUG("Testing macro").
