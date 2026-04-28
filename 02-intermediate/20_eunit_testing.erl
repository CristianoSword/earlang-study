%% @doc Intermediate 20: Unit Testing (EUnit)
-module('20_eunit_testing').
-include_lib("eunit/include/eunit.hrl").

add_test() ->
    ?assertEqual(4, 2 + 2).
