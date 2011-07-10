/* In your Prolog system, what happens if you try to query a predicate that doesn't exist?
Does the query fail, or do you get an error message? Experiment and find out. */

/*

SWI-Prolog has a DWIM helper. For example, if the interpreter has CAPITALS.PL loaded
and I mistype the functor, SWI-Prolog suggests a fix, and is able to carry on with
the query:

    ?- capitl_of(X, Y).
    Correct to: "capital_of(X,Y)"? yes
    X = georgia,
    Y = atlanta .

This correction is presented for each possible mispelling:

    ?- capitl_of(X, Y), capital_o(Z, W).
    Correct to: "capital_of(X,Y)"? yes
    Correct to: "capital_of(Z,W)"? yes
    X = georgia,
    Y = atlanta,
    Z = georgia,
    W = atlanta .

Even if the typo is the same, you get prompted for each one of the mispellings, it does
not assume the same typo has the same correction in different goals of the same query.

If you respond "no" in the suggestion the behaviour is:

    ?- capitl_of(X, Y).
    Correct to: "capital_of(X,Y)"? no
    ERROR: '$execute_goal2'/2: Undefined procedure: capitl_of/2
    ERROR:   However, there are definitions for:
    ERROR:         capital_of/2

Lastly, if there's no close match, the interpreter raises an error this way:

    ?- foo(X).
    ERROR: toplevel: Undefined procedure: foo/1 (DWIM could not correct goal)

*/