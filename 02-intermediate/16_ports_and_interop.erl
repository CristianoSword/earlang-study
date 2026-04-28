%% @doc Intermediate 16: Ports and Interoperability
-module('16_ports_and_interop').
-export([echo/1]).

echo(Msg) ->
    Port = open_port({spawn, "cat"}, [binary]),
    Port ! {self(), {command, Msg}},
    receive {Port, {data, Data}} -> Data end.
