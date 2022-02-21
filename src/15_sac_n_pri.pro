sac_n_pri(L,0,L):-!.
sac_n_pri([_|T],N,L):-
    N > 0, !,
    N1 is N-1,
    N1 < length(T), !,
    sac_n_pri(T,N1,L).