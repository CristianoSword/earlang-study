%% @doc Intermediate 04: Standard Libraries (Timer, OS, Calendar)
-module('04_standard_libraries').
-export([demo/0]).

demo() ->
    Time = erlang:localtime(),
    Os = os:type(),
    UnixTime = os:system_time(second),
    {Time, Os, UnixTime}.
