gcd(X, 0, Z):-
    Z is abs(X), !.
gcd(X, Y, Z):-
    abs(Y) > 0,!,
    X1 is X mod Y,
    gcd(Y, X1, Z).
