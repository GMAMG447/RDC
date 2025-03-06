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

pairing(A, B):- chatty(A), A\=B.
pairing(B, A):- chatty(A), A\=B.
pairing(A, B):- likes(A, B), likes(B, A), A\=B.

seating(A, B, C, D, E):- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E), pairing(E, A).

