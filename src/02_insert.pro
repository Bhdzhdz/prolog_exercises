% insert at the end
insert(X, [], [X]):-!.
insert(X, [H|T], [H|R]):-
    insert(X, T, R).