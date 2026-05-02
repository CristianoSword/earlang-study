%% @doc Advanced 31: Dynamic Supervisors
%% Managing temporary or transient child processes dynamically.
-module('31_dynamic_supervisors').
-behavior(supervisor).
-export([start/0, init/1, start_child/1]).

start() ->
    {ok, Pid} = supervisor:start_link({local, ?MODULE}, ?MODULE, []),
    io:format("Supervisor started: ~p~n", [Pid]),
    start_child("Child1").

init([]) ->
    %% Simple one_for_one strategy for dynamic children
    {ok, {#{strategy => one_for_one, intensity => 1, period => 5}, []}}.

start_child(Id) ->
    ChildSpec = #{id => Id, 
                  start => {timer, sleep, [1000]}, % Dummy child
                  restart => temporary},
    supervisor:start_child(?MODULE, ChildSpec).
