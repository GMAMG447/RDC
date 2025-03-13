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

*/

my_length([],_).
