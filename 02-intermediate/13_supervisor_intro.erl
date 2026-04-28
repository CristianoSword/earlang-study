%% @doc Intermediate 13: Intro to Supervisors
-module('13_supervisor_intro').
-behavior(supervisor).
-export([start_link/0, init/1]).

start_link() -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).
init([]) -> {ok, {#{strategy => one_for_one, intensity => 1, period => 5}, []}}.
