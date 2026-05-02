%% @doc Advanced 34: Global Registry
%% Registering process names globally across an Erlang cluster.
-module('34_global_registry').
-export([start/0, register_service/0, find_service/0]).

start() ->
    register_service(),
    Pid = find_service(),
    io:format("Global Service found at Pid: ~p~n", [Pid]).

register_service() ->
    yes = global:register_name(my_global_service, self()).

find_service() ->
    global:whereis_name(my_global_service).
