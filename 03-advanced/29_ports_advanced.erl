%% @doc Advanced 29: Ports Advanced
%% Complex communication with external OS programs via ports.
-module('29_ports_advanced').
-export([start/0, run_port/0]).

start() ->
    run_port().

run_port() ->
    %% On Windows, we'll use 'cmd /c echo' for demonstration
    Port = open_port({spawn, "cmd /c echo HelloFromPort"}, [binary]),
    receive
        {Port, {data, Data}} ->
            io:format("Port Output: ~p~n", [Data]);
        {Port, {exit_status, Status}} ->
            io:format("Port exited with ~p~n", [Status])
    after 2000 ->
        io:format("Port timeout~n")
    end.
