# Ejercicios de Prolog

Lista de ejercicios de la materia *Representación Del Conocimiento Y Ontologías*.

Se utiliza el interprete [**SWI-Prolog**](https://www.swi-prolog.org/).

## Lista de ejercios

1. Corregir el siguiente programa para que valide si recibe un número negativo

    ```prolog
    factorial(0,1):-!.
    factorial(1,1):-!.
    factorial(N,R):-N1 is N-1,!, 
            factorial(N1,R1), R is N*R1.
    ```

2. Hacer un predicado que inserte un elemento al final de una lista
   
    ```prolog
    inserta(X,L).
    ```

3. Hacer un predicado que encuentre a todos los antepasados de una persona: tu papá, tu mamá y los padres de ellos son tus antepasados y todos los que le sigan en el árbol

    ```prolog
    antepasado(X,Y).
    ```

4. Hacer un predicado abuelo considerando tanto el de mamá como el de papá

    ```prolog
    abuelo(A,N).
    ```

5.  Escribe, con y sin cortes, el procedimiento “separa”, que divide una lista en dos sublistas, la primera con los números positivos, y la segunda con los números negativos.Hacer un predicado que inserte un elemento al final de una lista
  
    ```prolog
    separa(L,L1,L2).
    ```

6. Hacer un predicado para obtener el máximo común divisor entre dos números

    ```prolog
    maxcd(X,Y,Z).
    ```

7. Escribir un predicado para una función que devuelva 0 si x es menor que 3, 2 si es mayor o igual a 3 y menor que 6 y 4 si x es menor o igual a 6

    ```prolog
    f(X,Y).
    ```


8. Hacer un predicado para Concatenar dos listas

    ```prolog
    concatenar(L1, L2, L).
    ```

9. Hacer un predicado para invertir los elementos de una lista

    ```prolog
    invertir(L1, L2).
    ```

10. Hacer un predicado que obtenga la longitud de la lista (usar cortes)

    ```prolog
    longitud(L,X).
    ```