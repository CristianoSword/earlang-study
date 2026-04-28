%% @doc Lesson 1: Hello World in Erlang
%% This module demonstrates how to write a simple "Hello, World!" program.
-module('01_hello_world').
-export([start/0]).

start() ->
    io:format("Hello, World! Welcome to Erlang.~n").
