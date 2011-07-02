/* With GEO.PL, which is faster to compute,
'?- located_in(austin, north_america).' or '?- located_in(austin, usa).'? Why? */

/*

'?- located_in(austin, north_america).' needs to solve '?- located_in(austin, usa).',
so it will be slower.

*/
