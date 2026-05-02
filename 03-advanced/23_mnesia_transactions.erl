%% @doc Advanced 23: Mnesia Transactions
%% Using transactions ensures ACID properties in Mnesia.
-module('23_mnesia_transactions').
-export([start/0, add_user/3, get_user/1]).

-record(user, {id, name, role}).

start() ->
    mnesia:start(),
    add_user(1, "Alice", admin),
    add_user(2, "Bob", user),
    {ok, User} = get_user(1),
    io:format("Retrieved User: ~p~n", [User]).

add_user(Id, Name, Role) ->
    Write = fun() ->
        mnesia:write(#user{id = Id, name = Name, role = Role})
    end,
    mnesia:transaction(Write).

get_user(Id) ->
    Read = fun() ->
        mnesia:read({user, Id})
    end,
    {atomic, [Result]} = mnesia:transaction(Read),
    {ok, Result}.
