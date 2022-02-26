
%movie(Id_movie, Year, Title, Genre, Duration).
%Actor(Rfc, Name, Last_name).
%Acts_on(Rfc, Id_movie).
%Producer(Rfc, Name, Address).
%Producer_of(Id_movie, Rfc).

consult(Movie, Actors, Producer):-
    movie(Movie, _, _, _, _),
    findall(Rfc, acts_on(Rfc, Movie), Actors),
    producer_of(Movie, Producer).
