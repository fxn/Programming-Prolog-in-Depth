/* Add to FAMILY.PL the definitions of "brother", "sister", "uncle", and "aunt". Verify that your
predicate definitions work correctly. (Hint: Recall that you have two kinds of uncles:
the brothers of your parents, and the husbands of your aunts. You will need to add facts to
specify who is male, who is female, and who is married to whom.) */

:- consult(family).

male(charles_gordon).
male(elmo).
male(greg).
male(jim).
male(michael).

female(cathy).
female(crystal).
female(danielle).
female(eleanor).
female(hazel).
female(julie).
female(melody).
female(sharon).
female(stephanie).

% True is X is a brother or Y.
brother(X, Y) :- male(X), mother(M, X), mother(M, Y).

% True is X is a sister or Y.
sister(X, Y) :- female(X), mother(M, X), mother(M, Y).

% In spite of my response to exercise 1.12.3, let's concede people are free of sin.
husband(X, Y) :- father(X, C), mother(Y, C).
wife(X, Y) :- husband(Y, X).

% True if X is an uncle of Y.
uncle(X, Y) :-
    male(X), % logically redundant, but fails fast for women
    parent(Parent, Y),
    (brother(X, Parent);
     sister(Aunt, Parent), husband(X, Aunt)).

% True if X is an aunt of Y.
aunt(X, Y) :-
    female(X), % logically redundant, but fails fast for men
    parent(Parent, Y),
    (sister(X, Parent);
     brother(Uncle, Parent), wife(X, Uncle)).
