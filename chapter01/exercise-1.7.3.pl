/* What does your Prolog system do if the clauses for a predicate are not grouped together?
Does it give an error or warning message? Does it ignore any of the clauses? Experiment
and see. */

% Given these intermixed facts:
even(0).
odd(1).
even(2).
odd(3).

% SWI-Prolog does not give errors, nor warnings, and ignores none of them.
