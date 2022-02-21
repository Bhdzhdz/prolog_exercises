concatenate([],L,L):-!.
concatenate([H|T],L2,[H|L]):-
    concatenate(T,L2,L).
    