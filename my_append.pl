/*

my_append(?L1, ?L2, ?Res)
  Es cierto di Res unifica con una lista
  que contiene los elementos de L1 seguidos 
  de los elementos de L2 en el mismo orden.

-Induccion
1) P(n0)
2) P(n-1) -> P(n) ===> P(n) :- P(n-1).

*/

my_append([], L1, L1).
my_append([Cab|Resto], L2, [Cab|R]) :- my_append(Resto, L2, R).
