/* Go back to GEO.PL and add the predicate eastern/1, defined as follows: A place is
eastern if it is in Georgia or Ontario. Implement this predicate two different ways:
first with a semicolon, and then without using the semicolon. */

% with a semicolon
eastern(X) :- located_in(X, georgia); located_in(X, ontario).

% without the semicolon
eastern(X) :- located_in(X, georgia).
eastern(X) :- located_in(X, ontario).
