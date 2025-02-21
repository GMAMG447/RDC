/*

natural(N)
	Es cierto si N es un número natural.
	
Principio de Inducción Matemática
	Queremos comprobar que una propiedad P es ciera para todos
	los elementos del conjunto S. Precondición: 
	Los elementos de S tienen que ser ordenables 
	(Tendré un elemento n0 que será el más pequeño).
	
1) P(n0) es cierto.

2) Para todo n > n0: 

	- Si P(n-1) es cierta, entonces P(n) también lo es.
	
	- Si P(n) es cierta, entonces P(n+1) también lo es.
	
	-Si natural(N-1) -> natural(N).
*/

natural(1).
natural(N):- N2 is N-1, natural(N2).

% En prolog le damos la vuelta a las reglas.
% A -> B
% B :- A

% msg * /server:172.17.11.X ""
