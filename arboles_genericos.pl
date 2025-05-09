/*

			Árbol generico

a(1,[a(2,[a(5,[])]), a(3,[]), a(4,[])]). 


*/

cuenta_nodos(a(_, Hijos), R) :- 
	cuenta_nodos(Hijos, RLH),
	R is RLH + 1.
	
cuenta_nodos([], 0).
cuenta_nodos([Cab|Resto], R) :-
	cuenta_nodos(Resto, RR),
	cuenta_nodos(Cab, RCa),
	R is RR + RCa.
