/* Take the first example of fail given at the beginning of this section, and replace fail
with some other query that will definitely fail. What happens? */

/* I have replaced fail

    ?- capital_of(State, City), write(City), write(' is the capital of '), write(State), nl, 1 == 2.
    atlanta is the capital of georgia
    sacramento is the capital of california
    tallahassee is the capital of florida
    augusta is the capital of maine
    false.

with 1 == 2

    ?- capital_of(State, City), write(City), write(' is the capital of '), write(State), nl, 1 == 2.
    atlanta is the capital of georgia
    sacramento is the capital of california
    tallahassee is the capital of florida
    augusta is the capital of maine
    false.

There's no difference.

*/
