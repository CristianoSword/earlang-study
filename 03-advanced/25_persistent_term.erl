%% @doc Advanced 25: Persistent Term
%% persistent_term is optimized for read-heavy operations on data that changes rarely.
-module('25_persistent_term').
-export([start/0, store_config/2, get_config/1]).

start() ->
    store_config(api_key, "secret_12345"),
    Val = get_config(api_key),
    io:format("Config value: ~p~n", [Val]).

store_config(Key, Value) ->
    persistent_term:put(Key, Value).

get_config(Key) ->
    persistent_term:get(Key).
