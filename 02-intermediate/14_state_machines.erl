%% @doc Intermediate 14: State Machines (gen_statem)
-module('14_state_machines').
-behavior(gen_statem).
-export([start_link/0, init/1, callback_mode/0]).

start_link() -> gen_statem:start_link({local, ?MODULE}, ?MODULE, [], []).
init([]) -> {ok, state_name, #{}}.
callback_mode() -> state_functions.
