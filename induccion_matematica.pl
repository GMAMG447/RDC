/*
				Inducción Matemáica

Quiero probar si el programa P funciona con todos los elementos del conjunto S.

Necesitamos que los elementos de S sean ordenables.

Existe un elemento más pqeueño, n0.

Para todo par de elementos de S puedo saber di n1<n2.


Naturales
n0=1 , 4 < 5 ?


Listas
n0=[], [_] < [_,_] ?


Arbol
n0=nil

Grafos
n0=vacio

				Principio de Inducción

1) El programa P es cierto para el mas pequeño ( P(n0) ).

2) P(n-1) -> P(n).


				EJERCICIO: Naturales */
				
P(N) :- P(N-1).
