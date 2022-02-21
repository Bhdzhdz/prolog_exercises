f(X,Y):-
    X < 3,
    Y is 0,!.
f(X,Y):-
    X < 6,
    Y is 2,!.
f(_,Y):-
    Y is 4,!.