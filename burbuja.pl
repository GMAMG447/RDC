%-----------------------------------------------------
% ordena_burbuja(+Lista, -ListaR).
%  es cierto cuando ListaR unifica con una lista que
%  contiene los mismos elementos que Lista ordenados
%  de menor a mayor.
%-----------------------------------------------------

/*

ordenada(Lista)
  es cierto si los elementos de Lista están ordenados 
  de menor a mayor.

Principio de induccion
1) P(n0)
2) P(n-1) -> P(n) ==> P(N) :- N2 is N - 1, P(N2).

*/

ordenada([]).
ordenada([_]).
ordenada([Cab1|Cab2|Resto]) :- Cab1<Cab2, ordenada(Cab2|Resto). % Se ponen las restricciones como comparaciones delante.



