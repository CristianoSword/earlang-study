%% @doc Lesson 14: Exceptions
-module('14_exceptions').
-export([safe_div/2]).

safe_div(X, Y) ->
    try X / Y of
        Result -> Result
    catch
        error:badarith -> infinity
    end.
