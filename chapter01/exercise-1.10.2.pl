/* Define a predicate equivalent to

    f(X) :- (a(X), b(X)); (c(X), d(X)).

but without using semicolons. Use as many clauses as necessary. */

f(X) :- a(X), b(X).
f(X) :- c(X), d(X).
