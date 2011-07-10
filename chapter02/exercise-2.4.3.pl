/* Recall that CAPITALS.PL does not list Idaho. Assuming that CAPITALS.PL has been
consulted, what is output by each of the following queries? Explain the reason for
the difference. */

/*

This is the first one:

    ?- capital_of(idaho, C), write('The capital of Idaho is '), write(C).
    false.

This is the second one:

    ?- write('The capital of Idaho is '), capital_of(idaho, C), write(C).
    The capital of Idaho is 
    false.

The difference is that we get the sentence first in the second example. The reason
is that while capital_of(idaho, C) cannot be satisfied in either query, the write
goal in the latter comes first and succeeds.

*/