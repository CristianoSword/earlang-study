%% @doc Advanced 35: Distributed Mnesia
%% Replicating data across multiple Erlang nodes.
-module('35_distributed_mnesia').
-export([start/0, add_node/1]).

start() ->
    mnesia:start(),
    io:format("Mnesia started on node ~p.~n", [node()]),
    io:format("To add a node, call add_node('node@host').~n").

add_node(Node) ->
    %% Ensure the node is connected
    case net_adm:ping(Node) of
        pong ->
            mnesia:change_config(extra_db_nodes, [Node]),
            mnesia:add_table_copy(schema, Node, disc_copies),
            io:format("Node ~p added to Mnesia cluster.~n", [Node]);
        pang ->
            {error, node_not_reachable}
    end.
