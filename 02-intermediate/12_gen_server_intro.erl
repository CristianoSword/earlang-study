%% @doc Intermediate 12: Intro to Gen_Server
-module('12_gen_server_intro').
-behavior(gen_server).
-export([start_link/0, init/1, handle_call/3, handle_cast/2]).

start_link() -> gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).
init([]) -> {ok, #{}}.
handle_call(ping, _From, State) -> {reply, pong, State}.
handle_cast(_Msg, State) -> {noreply, State}.
