%% @doc Advanced 32: Custom Behaviors
%% Defining custom behavior specifications in Erlang.
-module('32_custom_behaviors').
-export([start/0, callback_mode/0]).

%% Define the callbacks required for this behavior
-callback init(Args :: term()) -> {ok, State :: term()} | {error, Reason :: term()}.
-callback handle_message(Msg :: term(), State :: term()) -> {ok, NewState :: term()}.

start() ->
    io:format("Custom behavior defined with callbacks: init/1 and handle_message/2.~n").

%% Implementing part of it for demo
callback_mode() ->
    behavior_info(callbacks).
