-module(start_mod).

-export([start/0]).

start() ->
    ok = application:start(example).
