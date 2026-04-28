%% @doc Intermediate 08: Advanced Bit Syntax
-module('08_bit_syntax').
-export([parse/1]).

parse(<<Type:8, Length:16, Data/binary>>) ->
    {Type, Length, Data}.
