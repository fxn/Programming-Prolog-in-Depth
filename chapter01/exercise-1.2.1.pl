/* Give an example, in Prolog, of a fact, a rule, a clause, a one-place predicate, and a
predicate of arity 2. */

% This is a fact.
even(0).

% This is a rule.
even(N) :-
  N1 is N-2,
  even(N1).

% A clause is either a fact or a rule.
odd(1).

% This is a one-place predicate.
prime(7).

% And this is a predicate of arity 2.
factorial(0, 1).
