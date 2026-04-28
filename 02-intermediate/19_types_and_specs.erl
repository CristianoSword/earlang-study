%% @doc Intermediate 19: Types and Specs
-module('19_types_and_specs').
-export([add/2]).

-spec add(integer(), integer()) -> integer().
add(A, B) -> A + B.
