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
/*

bin2gen(AB, AG)
	Es cierto si AB unifica con un arbol
	generico equivalente a AB.

*/

bin2gen(a(E,nil,nil),a(E,[])).

bin2gen(a(E,nil,HD), a(E, [RD])):- HD \= nil, bin2gen(HD,RD).
bin2gen(a(E,HI,nil), a(E, [RI])):- HI \= nil, bin2gen(HI,RI).


bin2gen(a(E,AI,AD),a(E,[AG1,AG2])):- 
	AI \= nil,
	AD \= nil,
	bin2gen(AI,AG1),
	bin2gen(AD,AG2).
	
/*

anchura(AG, L)
	

*/

anchura(a(E,Hijos),[E|R]):-
	anchura(Hijos,R).
	
anchura([],[]).

anchura([a(E,Hijos)|Resto], [E|R2]):-
	append(Resto,Hijos,R),
	anchura(R,R2).
	

	


	
	
