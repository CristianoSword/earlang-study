%% @doc Lesson 8: Control Flow (Case and If)
-module('08_control_flow').
-export([weather/1, grade/1]).

weather(Temp) ->
    if
        Temp > 30 -> hot;
        Temp > 20 -> pleasant;
        true -> cold
    end.

grade(Score) ->
    case Score of
        N when N >= 90 -> a;
        N when N >= 80 -> b;
        _ -> f
    end.
