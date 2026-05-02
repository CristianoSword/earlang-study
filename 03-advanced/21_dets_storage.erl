%% @doc Advanced 21: Dets (Disk Erlang Term Storage)
%% Dets is similar to ETS but provides disk-based storage.
-module('21_dets_storage').
-export([start/0]).

start() ->
    io:format("Lesson 21: Dets Storage initialized.~n").
