%% @doc Intermediate 17: Application Structure (.app)
-module('17_application_structure').
-export([info/0]).

info() ->
    application:get_all_key(myapp).
