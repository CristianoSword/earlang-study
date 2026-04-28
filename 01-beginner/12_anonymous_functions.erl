%% @doc Lesson 12: Anonymous Functions
-module('12_anonymous_functions').
-export([demo/0]).

demo() ->
    Add = fun(X, Y) -> X + Y end,
    Result = Add(10, 20),
    Result.
