%% @doc Lesson 2: Variables in Erlang
%% Variables in Erlang must start with an Uppercase letter and are immutable.
-module('02_variables').
-export([start/0]).

start() ->
    %% Assigning a value to a variable
    Name = "Erlang Learner",
    Age = 25,
    
    %% Variables are immutable. If you try to reassign Name = "John", it will throw a badmatch error!
    
    io:format("Hello ~s! You are ~w years old.~n", [Name, Age]).
