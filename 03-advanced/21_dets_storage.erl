%% @doc Advanced 21: Dets (Disk Erlang Term Storage)
%% Dets is similar to ETS but provides disk-based storage.
-module('21_dets_storage').
-export([start/0, demo/0]).

start() ->
    demo().

demo() ->
    Name = my_disk_table,
    File = "my_table.dets",
    %% Open the table
    {ok, Name} = dets:open_file(Name, [{file, File}, {type, set}]),
    
    %% Insert data
    dets:insert(Name, {key1, "Hello from Disk"}),
    dets:insert(Name, {key2, 12345}),
    
    %% Lookup
    {ok, Val} = dets:lookup(Name, key1),
    io:format("Lookup key1: ~p~n", [Val]),
    
    %% Close
    dets:close(Name),
    io:format("Dets demo finished.~n").
