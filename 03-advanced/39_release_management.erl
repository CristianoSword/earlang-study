%% @doc Advanced 39: Release Management
%% Packaging Erlang applications for production using relx/rebar3.
-module('39_release_management').
-export([start/0, info/0]).

start() ->
    info().

info() ->
    io:format("To create a release, add the following to rebar.config:~n"),
    io:format("{relx, [{release, {myapp, \"0.1.0\"}, [myapp]},~n"),
    io:format("        {dev_mode, true},~n"),
    io:format("        {include_erts, false},~n"),
    io:format("        {extended_start_script, true}]}.~n").
