/* Define young_parent(X), which should succeed if X has a child but does not have any
grandchildren. Make sure it works correctly; consider the case of someone who has two
children, one of whom, in turn, has a child of her own while the other one does not. */

:- consult(family).

% This predicate works if you ask for a particular atom. Repeated elements
% appear if you pass a variable to list all young parents. I guess the fix
% to this is setof/3, but unsure until I learn more.
young_parent(X) :- parent(X, _), \+ grandparent(X, _).