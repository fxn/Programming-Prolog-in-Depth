/* Add to FAMILY.PL the predicate related(X,Y) such that X is related to Y if X and Y
have any ancestor in common but are not the same person. (Note that when you ask
for all solutions, it will be normal to get many of them more than once, because if
two people have one ancestor in common, they also have earlier ancestors in common,
several of whom may be in the knowledge base.)

Verify that Michael and Julie are related, Cathy and Daniele are related, but
Michael and Melody are not related. */

:- consult(family).

% This predicate is defined on page 26.
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% This is a solution.
related(X, Y) :- ancestor(A, X), ancestor(A, Y).
