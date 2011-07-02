located_in(atlanta, georgia).
located_in(houston, texas).
located_in(austin, texas).
located_in(toronto, ontario).

located_in(X, usa) :- located_in(X, georgia).
located_in(X, usa) :- located_in(X, texas).
located_in(X, canada) :- located_in(X, ontario).
located_in(X, north_america) :- located_in(X, usa).
located_in(X, north_america) :- located_in(X, canada).

% Added for execise 1.4.2.
located_in(barcelona, catalonia).
located_in(catalonia, spain).