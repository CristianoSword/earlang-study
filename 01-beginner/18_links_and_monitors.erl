%% @doc Lesson 18: Links and Monitors
-module('18_links_and_monitors').
-export([demo/0]).

demo() ->
    spawn_link(fun() -> exit(reason) end).
