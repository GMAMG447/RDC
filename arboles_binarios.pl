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

arbol2(
  a(1, a(2, a(4, nil, nil), a(5, nil, nil)),
    a(3, a(6, nil, nil)), a(7, a(8, nil, nil), nil))
).

cuenta_nodos(nil,0).

cuenta_nodos(a(_, AI, AD), R) :-
  cuenta_nodos(AI,RI), 
  cuenta_nodos(AD,RD),
  R is RI + RD + 1.
