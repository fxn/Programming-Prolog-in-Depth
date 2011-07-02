/* What would happen to GEO.PL if Clauses 5 and 6 were changed to the following?

located_in(Y, usa) :- located_in(Y, georgia).
located_in(Z, usa) :- located_in(Z, texas).

*/

/*

The resulting program would be equivalent, because variables are local to every clause.
Variable renaming is akin to parameter renaming in ordinary programming languages.

*/
