%% @doc Intermediate 15: Distributed Nodes
-module('15_distributed_nodes').
-export([check_nodes/0]).

check_nodes() ->
    nodes(). % Returns list of connected nodes
