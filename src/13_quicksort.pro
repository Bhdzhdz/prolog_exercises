separate(Pivot, [X|T], Greater, [X|LessEq]):-
    X <= Pivot,
    separate(Pivot, T, Greater, LessEq).
separate(Pivot, [X|T], [X|Greater], LessEq):-
    X > Pivot,
    separate(Pivot, T, Greater, LessEq).

quicksort([], []).
quicksort(L, Sorted):-
    L = [H|T],
    separate(H, L, Greater, LessEq),
    quicksort(LessEq, LessEqSorted),
    quicksort(Greater, GreaterSorted),
    append(LessEqSorted, GreaterSorted, Sorted).