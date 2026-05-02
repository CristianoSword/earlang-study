%% @doc Advanced 27: Gen_TCP
%% Reliable streaming data over TCP sockets.
-module('27_gen_tcp').
-export([start/0, server/1, client/2]).

start() ->
    spawn(fun() -> server(8001) end),
    timer:sleep(100),
    client(8001, "Hello TCP Echo").

server(Port) ->
    {ok, ListenSocket} = gen_tcp:listen(Port, [binary, {packet, 4}, {active, false}, {reuseaddr, true}]),
    io:format("TCP Server listening on ~p~n", [Port]),
    {ok, Socket} = gen_tcp:accept(ListenSocket),
    {ok, Data} = gen_tcp:recv(Socket, 0),
    io:format("Server received: ~p~n", [Data]),
    gen_tcp:send(Socket, Data),
    gen_tcp:close(Socket),
    gen_tcp:close(ListenSocket).

client(Port, Msg) ->
    {ok, Socket} = gen_tcp:connect("localhost", Port, [binary, {packet, 4}, {active, false}]),
    gen_tcp:send(Socket, Msg),
    {ok, Reply} = gen_tcp:recv(Socket, 0),
    io:format("Client received reply: ~p~n", [Reply]),
    gen_tcp:close(Socket).
