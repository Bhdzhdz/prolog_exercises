
% employee(Name, Id, Age, Salary).

:- dynamic employee/4.   

inicio:- carga,
    repeat,
        write('Altas 1'),nl,
        write('Bajas 2'),nl,
        write('Consultas 3'),nl,
        write('Guardar 4'),nl,
        write('Salir 5'),nl,
        read(Op),
        caso(Op). 

carga:-consult("src/17_employee_data.pro").
carga.

caso(1):- altas, fail.
caso(2):- bajas, fail.
caso(3):- consultas, fail.
caso(4):- guardar, fail.
caso(5).

get_valid_new_id(Id):-
    write('Ingrese el id del empleado: '),
    read(Id),
    (current_predicate(employee/4) ->
        (employee(_, Id, _, _) ->
            write('El id ya existe, ingrese otro: '),
            get_valid_new_id(Id)
        ;
            true
        )
    ;
        true
    ).
            

altas:- write('Ingrese el nombre: '),
    read(Nombre),
    get_valid_new_id(Id),    
    write('Ingrese la edad: '),
    read(Edad),
    write('Ingrese el salario: '),
    read(Salario),
    assert(employee(Nombre, Id, Edad, Salario)).


bajas:- 
    write('Ingrese el id: '),
    read(Id),
    retract(employee(_, Id, _, _)).

consultas:-
    write('Ingrese el id: '),
    read(Id),
    (employee(Nombre, Id, Edad, Salario) ->
        write('Nombre: '), write(Nombre), nl,
        write('Id: '), write(Id), nl,
        write('Edad: '), write(Edad), nl,
        write('Salario: '), write(Salario), nl
    ;
        write('No existe el empleado'), nl).

guardar:- file_list("src/17_employee_data.pro").


% listing(employee).
file_list(File):-
    open(File, write, Stream),
    write(Stream, ':- dynamic employee/4.'), nl(Stream),
    forall(employee(Nombre, Id, Edad, Salario),
        (write(Stream, 'employee('),
        write(Stream, Nombre), write(Stream, ', '),
        write(Stream, Id), write(Stream, ', '),
        write(Stream, Edad), write(Stream, ', '),
        write(Stream, Salario), write(Stream, ').'), nl(Stream))),
    close(Stream).
