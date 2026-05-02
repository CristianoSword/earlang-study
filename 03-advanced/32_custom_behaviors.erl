%% @doc Advanced 32: Custom Behaviors
%% Defining custom behavior specifications in Erlang.
-module('32_custom_behaviors').
-export([start/0, behavior_info/1]).

%% Define the callbacks required for this behavior (Modern Way)
-callback init(Args :: term()) -> {ok, State :: term()} | {error, Reason :: term()}.
-callback handle_message(Msg :: term(), State :: term()) -> {ok, NewState :: term()}.

start() ->
    io:format("Custom behavior defined with callbacks: init/1 and handle_message/2.~n").

%% behavior_info/1 is required for the system to recognize the callbacks
%% especially in older tools or for manual reflection.
behavior_info(callbacks) ->
    [{init, 1}, {handle_message, 2}];
behavior_info(_) ->
    undefined.
