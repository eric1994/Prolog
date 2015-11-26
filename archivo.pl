before(X, Y, [X|T]) :- 
	member(Y, T).

before(X, Y, [_|T]) :- 
	before(X, Y, T).

conc([], L, L).

conc([X|L1], L2, [X|L3]) :- conc(L1, L2, L3). 