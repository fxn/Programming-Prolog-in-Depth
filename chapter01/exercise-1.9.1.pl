/* Add the predicates grandfather, grandmother, and grandparent to FAMILY.PL. (Hint:
You will find parent useful.) Verify that your new predicates work correctly. */

grandfather(X, Z) :- father(X, Y), parent(Y, Z).
grandmother(X, Z) :- mother(X, Y), parent(Y, Z).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
