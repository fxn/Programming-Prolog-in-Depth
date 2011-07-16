/* Go back to FAMILY.PL and your solution to exercise 2.4.4. Define a predicate called
print_ancestors_of that takes one argument (a person's name) and prints out the
names of all the known ancestors of that person, in the same format as in Exercise 2.4.4. */

:- consult('exercise-2.4.4').

print_ancestors_of(Person) :-
    write('The ancestors of Cathy are: '),
    ancestor(X, Person),
    write(X),
    write(' '),
    fail.

print_ancestors_of(_).
