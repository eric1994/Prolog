#UTILITIES IN PROLOG
We will go to develop 4 exercise in *PROLOG*
##1º Before
The predicate wil work as follows `before(x,y,[z])`

    2 ?- before(a,b,[a,b,c]).
    true 

`before(x,y,[z])`

To develop this function we need two conditions, `stop condition` and `recursion condition` and we need use a prolog function  named 
*member* the result of the function member is if one element is a member of a array list 

    Remember the list has two components, H and T. H(Head is the first element of the array)
    and T is a array list with the another elements in the array

`The operator | is an OR in prolog`

The program give us a warning that we can resolve with the _ variable. Is the anonim variable that can be used in multiple sites inside 
our program.


    Recursion -> before(X, Y, [H|T]) :- 
	    before(X, Y, T).


    Stop -> before(X, Y, [X|T] ) :- 
	    member(Y, T).

##2º Concatenation
This exercise concatenate twho list, let's see the example

    2 ?- conc([a,b],[c,b],X).
    X = [a, b, c, b].
    
With two predicates as exercise 1.
We use the recursion to iterate in the T, and when the Tail is [], we add the elements.

    Stop -> conc([], L, L).

    Recursion -> conc([X|L1], L2, [X|L3]) :- conc(L1, L2, L3).
  

##3º Factorial

This predicates calculate the factorial of a number.


    3 ?- fact(4,X).
    X = 24.

As the others two examples we need two conditions and we wiil use the `is` for aritmethic operations.

    Stop -> fact(1,1).  

    Recursion ->  fact(N,F) :- N > 0 , N is N-1, fact(N1,F1), F is N * F1. 



