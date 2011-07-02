/* Load GEO.PL into your Prolog system and try it out. How does your Prolog system
respond to each of the following queries? Give all responses if there is more than one. */

/*

?- consult('geo.pl').
% geo.pl compiled 0.00 sec, 2,648 bytes
true.

?- located_in(austin, texas).
true ;
false.

?- located_in(austin, georgia).
false.

?- located_in(What, texas).
What = houston ;
What = austin ;
false.

?- located_in(atlanta, What).
What = georgia ;
What = usa ;
What = north_america ;
false.

*/