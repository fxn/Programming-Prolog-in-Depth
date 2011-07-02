/* Disregarding the wisdom of this section, a beginning Prolog student loads GEO.PL and
has the following dialogue with the computer:

?- located_in(austin, X).
X = texas
?- write(X).
X is uninstantiated

Why didn't the computer print 'texas' the second time? Try this in your computer.
What does your computer print when you try to write out an uninstantiated variable? */

/*

The computer didn't print 'texas' the second time because variable instantiation spans
only one goal.

SWI-Prolog prints:

    ?- write(X).
    _G251
    true.

for uninstantiated X.

*/
