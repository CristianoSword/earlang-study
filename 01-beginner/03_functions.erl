%% @doc Lesson 3: Functions
%% This module demonstrates defining multiple functions and exporting them.
-module('03_functions').
-export([add/2, multiply/2, greet/1]).

%% A simple addition function
add(A, B) ->
    A + B.

%% A simple multiplication function
multiply(A, B) ->
    A * B.

%% A function with a single parameter
greet(Name) ->
    io:format("Greetings, ~s!~n", [Name]).
