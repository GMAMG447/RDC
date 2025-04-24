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
