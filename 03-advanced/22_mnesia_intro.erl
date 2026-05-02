%% @doc Advanced 22: Mnesia Intro
%% Mnesia is a distributed, soft real-time database management system.
-module('22_mnesia_intro').
-export([start/0, setup/0]).

-record(user, {id, name, role}).

start() ->
    setup(),
    io:format("Mnesia schema and table 'user' created.~n").

setup() ->
    mnesia:create_schema([node()]),
    mnesia:start(),
    mnesia:create_table(user, [
        {attributes, record_info(fields, user)},
        {disc_copies, [node()]}
    ]).
