/* Add to FAMILY.PL the following two predicates: */

:- consult('../chapter01/family').

/* A predicate cathys_father(X) that instantiates X to the name of Cathy's father. */

cathys_father(X) :- father(X, cathy).

/* A predicate print_cathys_father (with no arguments) that writes the name of
Cathy's father on the screen. */

print_cathys_father :- cathys_father(X), write(X).
