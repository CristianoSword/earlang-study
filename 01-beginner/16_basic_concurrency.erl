%% @doc Lesson 16: Basic Concurrency
-module('16_basic_concurrency').
-export([start/0, say_hello/0]).

say_hello() ->
    io:format("Hello from another process!~n").

start() ->
    spawn(fun say_hello/0).
