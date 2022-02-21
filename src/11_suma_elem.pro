suma([],0):-!.
suma([H|T], Sum):-
    suma(T, Sum1),
    Sum is Sum1 + H.

suma_elem(L1, L2, [Tsum]):-
    suma(L1, Sum1),
    suma(L2, Sum2),
    Tsum is Sum1 + Sum2.
    