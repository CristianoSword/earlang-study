%% @doc Advanced 26: Gen_UDP
%% Basic connectionless networking using UDP sockets.
-module('26_gen_udp').
-export([start/0, server/1, client/2]).

start() ->
    spawn(fun() -> server(8000) end),
    timer:sleep(100),
    client(8000, "Hello UDP").

server(Port) ->
    {ok, Socket} = gen_udp:open(Port, [binary, {active, false}]),
    io:format("UDP Server listening on ~p~n", [Port]),
    {ok, {Address, Port2, Packet}} = gen_udp:recv(Socket, 0),
    io:format("Received ~p from ~p:~p~n", [Packet, Address, Port2]),
    gen_udp:close(Socket).

client(Port, Msg) ->
    {ok, Socket} = gen_udp:open(0, [binary]),
    gen_udp:send(Socket, "localhost", Port, Msg),
    io:format("UDP Client sent: ~s~n", [Msg]),
    gen_udp:close(Socket).
