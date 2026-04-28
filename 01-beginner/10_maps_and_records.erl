%% @doc Lesson 10: Maps and Records
-module('10_maps_and_records').
-export([map_demo/0, record_demo/0]).

-record(user, {name, id, role = guest}).

map_demo() ->
    Map = #{name => "Alice", age => 25},
    NewMap = Map#{age := 26},
    maps:get(name, NewMap).

record_demo() ->
    User = #user{name = "Bob", id = 1},
    User#user.name.
