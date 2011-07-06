% In father/2, mother/2, and parent/2,
% first arg. is parent and second arg. is child.

father(michael, cathy).
father(michael, sharon).
father(charles_gordon, michael).
father(charles_gordon, julie).
father(jim, melody).
father(jim, crystal).
father(elmo, jim).
father(greg, stephanie).
father(greg, danielle).

% exercise 1.8.2
father(xavier, andrea).
father(joaquin, xavier).
father(miguel, trini).

mother(melody, cathy).
mother(melody, sharon).
mother(hazel, michael).
mother(hazel, julie).
mother(eleanor, melody).
mother(eleanor, crystal).
mother(crystal, stephanie).
mother(crystal, danielle).

% exercise 1.8.2
mother(trini, andrea).
mother(pilar, xavier).
mother(montse, trini).

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% exercise 1.9.1
grandfather(X, Z) :- father(X, Y), parent(Y, Z).
grandmother(X, Z) :- mother(X, Y), parent(Y, Z).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% exercise 1.11.2, this guy should not be a young parent.
father(non_young_parent, child1).
father(non_young_parent, child2).
father(child1, grandchild1).

