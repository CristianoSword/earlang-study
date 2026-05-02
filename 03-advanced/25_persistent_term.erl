%% @doc Advanced 25: Persistent Term
%% persistent_term is optimized for read-heavy operations on data that changes rarely.
-module('25_persistent_term').
-export([start/0]).

start() ->
    io:format("Lesson 25: Persistent Term initialized.~n").
