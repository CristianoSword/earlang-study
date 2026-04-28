%% @doc Lesson 17: Message Passing
-module('17_message_passing').
-export([start/0, loop/0]).

loop() ->
    receive
        {greet, Name} ->
            io:format("Hello, ~s!~n", [Name]),
            loop();
        stop ->
            ok
    end.

start() ->
    Pid = spawn(fun loop/0),
    Pid ! {greet, "Erlang"},
    Pid ! stop.
