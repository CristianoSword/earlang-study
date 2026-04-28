%% @doc Intermediate 05: File System Operations
-module('05_file_system').
-export([demo/0]).

demo() ->
    {ok, Cwd} = file:get_cwd(),
    {ok, Files} = file:list_dir("."),
    {Cwd, lists:sublist(Files, 5)}.
