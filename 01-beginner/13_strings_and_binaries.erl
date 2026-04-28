%% @doc Lesson 13: Strings and Binaries
-module('13_strings_and_binaries').
-export([demo/0]).

demo() ->
    String = "Hello", % Actually a list of integers
    Binary = <<"Hello">>,
    {String, Binary}.
