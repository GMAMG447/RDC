select(matrix, X, R) :-
    length(Matrix, LM), N1 is X - 1,
    N12 is max(0, N1),
    length(L1, N32),
    append([L1, R, L3], Matrix).

neighbours(X,Y,Matrix,List):- select(Matrix,Y,Rows), 
    transpose(Rows, Cols), select(Cols,X,R), transpose(R,R2), append(R2, List).

    
% nth0(X, [5,4,3], 5). --> X = 0 (primera posicion).
% nth0(0, [5,4,3], X). --> X = 5 (primer elemento).
