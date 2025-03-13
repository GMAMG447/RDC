%        UNIFICACIÓN
%
%        

[Cabeza|Resto] = [1,2,3,4].
%Cabeza = 1, Resto = [2,3,4]

[Cabeza1,Cabeza2|Resto] = [1,2,3,4].
%Cabeza = 1, Resto = [2,3,4]

[Cabeza|Resto] = [1].
%Cabeza = 1, Resto = []

[Cabeza1,Cabeza2|Resto] = []. % Necesita al menos un elemento
%false 


/*

my_Lenght(List,Num)
  es cierto di Num unifica con
  el número de elementos de List.

Introducción
1) P(n0) es cierta.
2) P(n-1) -> P(n)

P("N") :- P("N-1")

*/

my_Length([],0).

my_Length([Cab|Resto], ) :- my_Lenght(Resto, R), R2 is R + 1.

/*

comprime(Lista, R)
  es cierto si R unifica con una lista de La si siguiente forma:

comprime([a,a,a,b,b,c,a,a], R).
R=[(a,3),(b,2),(c,1),(a,2)]

*/

/*

elemento_n(+Lista, +N, -R)
  es cierto cuando R unifica con el elemento
  de Lista que ocupa la posicion N empezando a contar
  en 1.

  Inducción
  1) P(n0)
  2) P(n-1) -> P(n)

*/

elemento_n([Cab|_], 1, Cab).

elemento_n([Cab|Resto], N, ]) :- N2 is N-1, elemento_n(Resto, N2, R]), N > 1


