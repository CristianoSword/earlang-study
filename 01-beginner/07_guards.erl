%% @doc Lesson 7: Guards
-module('07_guards').
-export([is_adult/1, max_value/2]).

is_adult(Age) when Age >= 18 -> true;
is_adult(_) -> false.

max_value(X, Y) when X > Y -> X;
max_value(_, Y) -> Y.
