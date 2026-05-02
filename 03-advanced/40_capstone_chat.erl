%% @doc Advanced 40: Capstone: Distributed Chat
%% A final project combining Sockets, Mnesia, and OTP patterns.
-module('40_capstone_chat').
-export([start/0, broadcast/2, join/1]).

-record(chat_user, {node, name}).

start() ->
    mnesia:start(),
    mnesia:create_table(chat_user, [{attributes, record_info(fields, chat_user)}]),
    io:format("Distributed Chat System ready.~n").

join(Name) ->
    mnesia:transaction(fun() -> 
        mnesia:write(#chat_user{node = node(), name = Name}) 
    end),
    io:format("~s joined the chat.~n", [Name]).

broadcast(Sender, Msg) ->
    {atomic, Users} = mnesia:transaction(fun() -> mnesia:match_object(#chat_user{_ = '_'}) end),
    [rpc:cast(U#chat_user.node, io, format, ["~s: ~s~n", [Sender, Msg]]) || U <- Users].
