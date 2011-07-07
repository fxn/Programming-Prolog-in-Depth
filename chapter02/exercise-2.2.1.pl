/* Predict the output of each of the following queries, they try the queries on the computer
to confirm your predictions.

    ?- write(aaa), write(bbb).
    aaabbb
    true.

    ?- write(aaa), nl, write(bbb).
    aaa
    bbb
    true.

    ?- writeq(aaa).
    aaa
    true.

    ?- display(aaa).
    aaa
    true.

    ?- write('don''t panic').
    don't panic
    true.

    ?- writeq('don''t panic').
    'don\'t panic'
    true.

    ?- display('don''t panic').
    don't panic
    true.

    ?- write(Dontpanic).
    _G231
    true.

    ?- display(Dontpanic).
    _G231
    true.

    ?- write(3.14159*2).
    3.14159*2
    true.

    ?- display(3.14159*2).
    *(3.14159,2)
    true.

    ?- write('an\\example').
    an\example
    true.

    ?- display('an\\example').
    an\example
    true.

Also try out write_canonical if your implementation supports it.

    ?- write_canonical(3.14159*2).
    *(3.14159,2)
    true.

    ?- write_canonical('don''t panic').
    'don\'t panic'
    true.

If you're bursting with curiosity about how to do arithmetic in Prolog,
try this query:

    ?- What is 3.14159*2.
    What = 6.28318.

*/