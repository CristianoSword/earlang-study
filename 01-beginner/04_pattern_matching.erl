%% @doc Lesson 4: Pattern Matching
%% Pattern matching is one of the most powerful features in Erlang.
-module('04_pattern_matching').
-export([welcome/1, is_zero/1, area/1]).

%% Pattern matching on function clauses
welcome(english) -> io:format("Hello!~n");
welcome(spanish) -> io:format("Hola!~n");
welcome(portuguese) -> io:format("Olá!~n");
welcome(_) -> io:format("Language not supported yet.~n").

%% Matching numbers
is_zero(0) -> true;
is_zero(_) -> false.

%% Matching tuples to calculate area
area({square, Side}) -> 
    Side * Side;
area({rectangle, Width, Height}) -> 
    Width * Height;
area({circle, Radius}) -> 
    3.14159 * Radius * Radius.
