%% @doc Advanced 33: Process Groups (pg)
%% Managing groups of processes across a cluster.
-module('33_process_groups').
-export([start/0, demo/0]).

start() ->
    pg:start_link(),
    demo().

demo() ->
    GroupName = workers,
    pg:join(GroupName, self()),
    Members = pg:get_members(GroupName),
    io:format("Members of group ~p: ~p~n", [GroupName, Members]).
