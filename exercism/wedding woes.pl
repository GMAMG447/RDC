/*List:Esteban, Gustavo, Jaime, Malena, and Valeria.*/

/* Gustavo is chatty
Valeria is chatty
Esteban likes Malena
Malena likes Esteban
Gustavo likes Valeria (but not vice versa!)*/

chatty(gustavo).
chatty(valeria).

likes(malena, esteban).
likes(esteban, malena).
likes(gustavo, valeria).

pairing(A, _):- chatty(A).
pairing(_, A):- chatty(A).
pairing(A, B):- likes(A, B), likes(B, A).

seating(A, B, C, D, E):- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E), pairing(E, A).

