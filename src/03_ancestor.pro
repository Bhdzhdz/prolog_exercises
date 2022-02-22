parent_of(Child, Parent):-
    mother_of(Child, Parent);
    father_of(Child, Parent).
    
ancestor_of(Decendant, Ancestor):-
    parent_of(Decendant, Ancestor);
    parent_of(Possible_ancestor, Ancestor),
    ancestor_of(Decendant, Possible_ancestor).

find_ancestors(Decendant, Ancestors):-
    findall(Ancestor, ancestor_of(Decendant, Ancestor), Ancestors).

mother_of(daniel, emma).
father_of(emma, alex).
father_of(daniel, alan).