separate([], [], []).
separate([H|T], [H|Even], Odd) :-
    0 is H mod 2,
    separate(T, Even, Odd).
separate([H|T], Even, [H|Odd]) :-
    1 is H mod 2,
    separate(T, Even, Odd).

separate_with_cuts([], [], []) :- !.
separate_with_cuts([H|T], [H|Even], Odd) :-
    0 is H mod 2,!,
    separate_with_cuts(T, Even, Odd).
separate_with_cuts([H|T], Even, [H|Odd]) :-
    1 is H mod 2,
    separate_with_cuts(T, Even, Odd).