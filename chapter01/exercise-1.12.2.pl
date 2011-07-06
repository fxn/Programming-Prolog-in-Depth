/* Can a query such as '?- only_child(X).' retrieve a value for X? Explain why or why
not. If necessary, add an instance of an only child to the knowledge base in order to
test this. */

/*

Yes, you can list all only childs. Reason is mother(M, X) enumerates all pairs (M, X)
thanks to the facts database. Given instantiations of M and X, the second goal is
proven or disproven just fine.

*/

:- consult(family).
only_child(X) :- mother(M, X), \+ (mother(M, Y), \+ X == Y).
