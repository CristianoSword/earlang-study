%% @doc Advanced 30: NIFs Intro
%% Native Implemented Functions allow calling C code from Erlang.
-module('30_nifs_intro').
-export([start/0, add/2, init/0]).
-on_load(init/0).

start() ->
    %% This will likely call the Erlang fallback since we don't have the C library compiled
    Res = add(10, 20),
    io:format("Result: ~p~n", [Res]).

init() ->
    ok = erlang:load_nif("./nif_library", 0).

add(_A, _B) ->
    erlang:nif_error("NIF library not loaded").
