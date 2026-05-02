%% @doc Advanced 38: Tracing (dbg)
%% Real-time inspection of function calls and messages.
-module('38_tracing').
-export([start/0, trace_demo/0, test_fun/1]).

start() ->
    trace_demo(),
    test_fun(hello_tracing).

trace_demo() ->
    dbg:tracer(),
    dbg:p(all, c),
    dbg:tpl(?MODULE, test_fun, cx).

test_fun(Msg) ->
    io:format("Function called with: ~p~n", [Msg]).
