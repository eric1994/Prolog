before(X, Y, [X|T]) :- 
	member(Y, T).

before(X, Y, [_|T]) :- 
	before(X, Y, T).

conc([], L, L).

conc([X|L1], L2, [X|L3]) :- conc(L1, L2, L3). 

fact(1,1) :- !.
fact(N,F) :- 
	N > 0,
    N1 is N - 1, 
    fact(N1, F1), 
    F is N * F1,
    !.
% el !. es para que No se quede trabado

