/*

triangle(A, B, C, R).
    es cierto si R unifica con "equilateral"
    y A B C corresponden a la longitud de un triangulo equilatero.

    es cierto si R unifica con "scalene"
    y A B C corresponden a la longitud de un triangulo escaleno.

    es cierto si R unifica con "isosceles"
    y A B C corresponden a la longitud de un triangulo isosceles.

triangle(A, B, C).
    es cierto si A, B y C corresponden a las longiudes de un triangulo
    

*/

triangle(A, B, C, equilateral) :- triangle(A, B, C), A == B, B == C, C == A.
triangle(A, B, C, scalene) :- triangle(A, B, C), A \= B, B \= C, C \= A.
triangle(A, B, C, isosceles) :- triangle(A, B, C), A == B, A \= C.
triangle(A, B, C, isosceles) :- triangle(A, B, C), A == C, A \= B.
triangle(A, B, C, isosceles) :- triangle(A, B, C), C == B, A \= C.

triangle(A, B, C) :- A + B >= C, C + B >= A, A + C >= B, A > 0, B > 0, C > 0.
