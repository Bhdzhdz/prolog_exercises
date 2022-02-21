ultimo_elem([X], X):-!.
ultimo_elem([_|T], X) :- ultimo_elem(T, X).
