%% @doc Advanced 36: Observer
%% Using the GUI tool to monitor and troubleshoot Erlang systems.
-module('36_observer').
-export([start/0, open_observer/0]).

start() ->
    open_observer(),
    io:format("Observer tool opened. Check the GUI for system stats.~n").

open_observer() ->
    %% This requires the 'runtime_tools' and 'observer' apps to be available
    observer:start().
