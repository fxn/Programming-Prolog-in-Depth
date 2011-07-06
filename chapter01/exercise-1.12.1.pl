/* Does FAMILY.PL list anyone who satisfies only_child as defined in this section? Explain
why or why not. */

/*

only_child cannot be satisfied in the FAMILY.PL of the book because all mothers
have two children.

My FAMILY.PL has a few solutions, for example andrea.

*/

:- consult(family).
only_child(X) :- mother(M, X), \+ (mother(M, Y), \+ X == Y).

