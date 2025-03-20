/*

my_reverse(?Lista,?Restultados)
  es cierto si Resultado unifica con una lista
  que contiene los elementos de Lista en orden
  inverso.

my_reverse([1,2,3,4,5], R).
R = [5,4,3,2,1]

-Inducción
1) P(n0)
2) P(n-1) -> P(n) ===> P(n) :- P(n-1).

*/

/* Damos una solucion para el caso mas pequeño, en este caso lista vacia. */

my_reverse([], []).

/* append([1,2,3], [4,5], R). : Junta dos listas, devuelve [1,2,3,4,5]. */

my_reverse([Cab|Resto], R2) :- my_reverse(Resto,R), append(R, [Cab], R2).

