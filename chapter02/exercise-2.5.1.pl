/* Get print_capitals working on your computer. Try the query

    ?- print_capitals, write('All done.').

with and without Clause 2. What difference does Clause 2 make? */

:- consult(capitals).

print_a_capital :-
    capital_of(State, City),
    write(City),
    write(' is the capital of '),
    write(State),
    nl.

print_capitals :-
    print_a_capital,
    fail.

print_capitals. % Clause 2

/*

With Clause 2 the result is

    ?- print_capitals, write('All done.').
    atlanta is the capital of georgia
    sacramento is the capital of california
    tallahassee is the capital of florida
    augusta is the capital of maine
    All done.
    true.

Without Clause 2 is

    ?- print_capitals, write('All done.').
    atlanta is the capital of georgia
    sacramento is the capital of california
    tallahassee is the capital of florida
    augusta is the capital of maine
    false.

The difference is that "All done." is not printed, and we get a final failure.
This happens because without Clause 2 print_capitals necessarily fails once
all the backtracking has taken place, and thus the second goal, write, is
not even tried.

*/
