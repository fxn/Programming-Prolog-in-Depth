/* Why isn't the following a proper definition of grandparent?

    grandparent(G, C) :- parent(G, _), parent(_, C).

*/

/*

The link between G and C must be the same in both parent goals.
That's not accomplished with anonymous variables, because they
may take different values in different places of the clause.

*/
