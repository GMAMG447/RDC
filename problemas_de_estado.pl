/*

Problemas de Estados - Ejemplo Misionarios y Canibales

1.- Definir el estado

	estado(MI,CI,Balsa).
	
2.- Definir estado inicial

	E_ini = estado(3,3,dch)
	E_fin = estado(3,3,izq)
	
3.- Definir los movimientos

	pasar((M,C,Lado), EAnterior, EPosterior)
			^
			|
			|
		  Nombre
		
4.- Camino desde Ei hasta Ef



*/


/* Problema de las jarras */


EIni = estado(0,0).
EFin = estado(_,4).

mov(llenar_3, estado(_, L5), estado(3, L5)).
mov(vaciar_3, estado(_, L5), estado(0, L5)).
mov(llenar_5, estado(L3, _), estado(L3, 5)).
mov(vaciar_5, estado(L3, _), estado(L3, 0)).
mov(pasar_3a5, estado(L3, L5), estado(0, Suma)):- Suma is L3+L5, Suma <= 5.
mov(pasar_3a5, estado(L3, L5), estado(Suma2, 5)):- Suma is L3+L5, Suma > 5, Suma2 is Suma -5.
mov(pasar_5a3, estado(L3, L5), estado(Suma, 0)):- Suma is L3+L5, Suma <= 3.
mov(pasar_5a3, estado(L3, L5), estado(3, Suma2)):- Suma is L3+L5, Suma > 3, Suma2 is Suma -3.

camino(Ei, Ef, Visitados, Camino).

camino(Ei, Ei,_,[]).
camino(Ei, Ef,Visitados, [Mov|Camino]):-
	mov(Mov, Ei, ETMP),
	\+ member(ETMP, Visitados),
	camino(ETMP, Ef, [ETMP|Visitados], Camino).



