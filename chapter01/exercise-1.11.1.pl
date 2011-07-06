/* Define non_grandparent(X, Y), which should succeed if X is not a grandparent of Y. */

non_grandparent(X, Y) :- \+ grandparent(X, Y).
