/*

representacion de un arbol en prolog

a(1,a(2,nil,nil),a(3,nil,nil)) ==>     1
                                      / \
                                    2    3

Inducción:

1) P(n0) ==> n0 en Arboles Binarios es nil.
2) n > n0, P(n-1) -> P(n)



*/

arbol1(
  a(1, a(2,nil,nil), a(3,nil,nil))
  ).

/*
  arbol2(
    a(1, a(2, a(4, nil,nil), a(5, nil, nil)),
      a(3, a(6, nil, nil), a(7, a(8,nil,nil), nil)))
  ).
*/

cuenta_nodos(nil,0).

cuenta_nodos(a(_, AI, AD), R) :-
  cuenta_nodos(AI,RI), 
  cuenta_nodos(AD,RD),
  R is RI + RD + 1.


/*

crea_ab(Lista, ArbolBinario)
  Es cierto si ArbolBinario unifica con un arbol binario
  balanceado que contiene todas las etiquetas de Lista.
  
balanceado(Arbol)
  Es cierto si para todo nodo de Arbol la diferencia entre
  la altura del subarbol izq y la del derecho sea como maximo 1.
  
*/

crea_ab([], nil).

crea_ab([Cab|Resto], a(Cab, A1, A2)) :-
  length(Resto, I),
  Med is L div 2,
  length(L1, Med), /* Crea una lista de la mitad de longitud de Lista */
  append(L1, L2, Resto),
  crea_ab(L1, A1),
  crea_ab(L2, A2).
  
/*
altura(ArbolBin, Alt)
  Es cierto si Alt unifica con la altura del ArbolBin.

*/
  
altura(nil,0).

altura(a(Cab,A1,A2), Alt) :-
  altura(A1, Alt1),
  altura(A2, Alt2),
  Alt1 < Alt2
  Alt is Alt2 + 1.

altura(a(Cab,A1,A2), Alt) :-
  altura(A1, Alt1),
  altura(A2, Alt2),
  Alt1 >= Alt2
  Alt is Alt1 + 1.

balanceado(a(_, AI, AD)) :-
  altura(AI,ai),
  altura(AD,ad),
  abs(ai - ad) <= 1.


  
  
