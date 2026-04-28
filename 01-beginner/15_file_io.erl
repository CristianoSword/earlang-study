%% @doc Lesson 15: File IO
-module('15_file_io').
-export([read_file/1, write_file/2]).

read_file(Path) ->
    {ok, Bin} = file:read_file(Path),
    Bin.

write_file(Path, Data) ->
    file:write_file(Path, Data).
