%% @doc Lesson 19: Registered Processes
-module('19_registered_processes').
-export([start/0, say_hi/0]).

say_hi() ->
    receive
        hi -> io:format("Hi there!~n")
    end.

start() ->
    register(shell_helper, spawn(fun say_hi/0)),
    shell_helper ! hi.
