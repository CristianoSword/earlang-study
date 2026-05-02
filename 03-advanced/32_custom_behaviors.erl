%% @doc Advanced 32: Custom Behaviors
%% Defining custom behavior specifications in Erlang.
-module('32_custom_behaviors').
-export([start/0]).

%% Define the callbacks required for this behaviour (Modern Way)
%% Note: When using -callback, you MUST NOT define behaviour_info/1 manually.
-callback init(Args :: term()) -> {ok, State :: term()} | {error, Reason :: term()}.
-callback handle_message(Msg :: term(), State :: term()) -> {ok, NewState :: term()}.


start() ->
    io:format("Custom behaviour defined with callbacks: init/1 and handle_message/2.~n").


