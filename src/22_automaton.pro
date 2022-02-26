delta(0,a,1).
delta(0,b,2).
delta(1,a,1).
delta(1,b,2).
delta(2,a,2).
delta(2,b,1).

start(0).

end(2).

path(Q, []) :-
    end(Q),!.

path(Q, [H | T]) :-
    delta(Q, H, Destination),
    path(Destination, T).

parse(String) :-
    start(Q),
    path(Q, String).

