%% @doc Advanced 37: Profiling (fprof)
%% Identifying performance bottlenecks in Erlang applications.
-module('37_profiling').
-export([start/0, profile_me/0]).

start() ->
    fprof:apply(?MODULE, profile_me, []),
    fprof:profile(),
    fprof:analyse().

profile_me() ->
    lists:foreach(fun(X) -> X * X end, lists:seq(1, 10000)).
