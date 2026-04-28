%% @doc Lesson 5: Lists and Tuples
-module('05_lists_and_tuples').
-export([list_demo/0, tuple_demo/0]).

list_demo() ->
    List = [1, 2, 3, 4, 5],
    Head = hd(List),
    Tail = tl(List),
    NewList = [0 | List],
    {Head, Tail, NewList}.

tuple_demo() ->
    Person = {person, "John", 30, engineer},
    {_, Name, Age, _} = Person,
    {Name, Age}.
