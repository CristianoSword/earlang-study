%% @doc Intermediate 06: Header Files and Includes
-module('06_header_files').
-export([demo/0]).

-record(state, {id, status}).

demo() ->
    S = #state{id = 1, status = online},
    S#state.status.
