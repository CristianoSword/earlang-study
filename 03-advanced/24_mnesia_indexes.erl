%% @doc Advanced 24: Mnesia Indexes
%% Indexes speed up lookups for non-primary key attributes.
-module('24_mnesia_indexes').
-export([start/0, add_index/0, find_by_role/1]).

-record(user, {id, name, role}).

start() ->
    mnesia:start(),
    add_index(),
    Users = find_by_role(admin),
    io:format("Admins found: ~p~n", [Users]).

add_index() ->
    mnesia:add_table_index(user, role).

find_by_role(Role) ->
    Read = fun() ->
        mnesia:index_read(user, Role, #user.role)
    end,
    {atomic, Results} = mnesia:transaction(Read),
    Results.
