/*

1. P(n0)

2. Para todo n > n0, P(n-1) -> P(n)

  P(N) :- N2 is N -1, P(N2).

*/

ordena_insercion([], []).

ordena_insercion([Cab|Resto],R2) :- ordena_insercion(Resto,R), inserta_en_list_ord(Cab, R, R2).

inserta_en_list_ord(Elem,[],[Elem]).

inserta_en_list_ord(Elem, [Cab|Resto], [Elem,Cab|Resto]) :- Elem =< Cab.

inserta_en_list_ord(Elem, [Cab|Resto], [Cab|R]) :- Elem > Cab, inserta_en_list_ord(Elem, Resto, R).

/*

ordena_quick(+Lista, -ListaR)
  Es cierto cuando ListaR unifica con una lista que
  contiene los mismos elementos que Lista ordenados
  de menor a mayor.

*/

ordena_quick([],[]).

ordena_quick([Cab|Resto], ) :- divide(Cab, Resto, Men, May), ordena_quick(Men,RMen), ordena_quick(May,RMay), append(RMen, [Cab|RMay], R).

divide(_,[],[],[]).

divide(Elem,[Cab,Resto], [Cab|Men], May) :- divide(Elem, Resto, Men, May), Cab =< Elem.

divide(Elem,[Cab,Resto], Men, [Cab|May]) :- divide(Elem, Resto, Men, May), Cab > Elem.


