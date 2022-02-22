parent_of(X,Y):-
    mother_of(X,Y);
    father_of(X,Y).

grandfather_of(X,Z)-:
    parent_of(Y,Z),
    father_of(X,Y).