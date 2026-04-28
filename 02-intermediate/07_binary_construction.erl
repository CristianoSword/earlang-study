%% @doc Intermediate 07: Binary Construction
-module('07_binary_construction').
-export([demo/0]).

demo() ->
    Bin = <<1, 2, 3, "ABC">>,
    Size = byte_size(Bin),
    {Bin, Size}.
