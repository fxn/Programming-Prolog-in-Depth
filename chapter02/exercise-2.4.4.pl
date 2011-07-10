/* Using FAMILY.PL and your knowledge from Chapter 1, construct a query that will print
out the names of all the ancestors of Cathy like this:

    The ancestors of Cathy are: michael melody charles_gordon (etc.)

Define the predicate ancestor and use it in the query. */

:- consult('../chapter01/family').
:- consult('../chapter01/exercise-1.14.1').

/*

I have used the following query:

    ?- write('The ancestors of Cathy are: '), ancestor(X, cathy), write(X), write(' '), fail.
    The ancestors of Cathy are: michael melody charles_gordon jim elmo hazel eleanor 
    false.

*/
