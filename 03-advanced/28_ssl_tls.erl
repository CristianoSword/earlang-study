%% @doc Advanced 28: SSL/TLS
%% Secure communications over TCP using the ssl module.
-module('28_ssl_tls').
-export([start/0, fetch_google/0]).

start() ->
    ssl:start(),
    fetch_google().

fetch_google() ->
    %% Note: In a real scenario, you would use a dedicated HTTP client like 'inets' or 'hackney'
    %% but here we demonstrate basic ssl:connect
    {ok, Socket} = ssl:connect("google.com", 443, [binary, {active, false}], 5000),
    ssl:send(Socket, "GET / HTTP/1.1\r\nHost: google.com\r\n\r\n"),
    {ok, Data} = ssl:recv(Socket, 0, 5000),
    io:format("SSL Data received: ~p...~n", [binary:part(Data, 0, 50)]),
    ssl:close(Socket).
