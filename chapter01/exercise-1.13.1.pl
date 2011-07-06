/* Modify blue_eyed_non_grandparent (p. 22) by putting an anonynous
variable in the appropriate place. */

% The original clause is
%
%     blue_eyed_non_grandparent(X) :-
%         blue_eyed(X),
%         \+ (parent(X, Y), parent(Y, Z)).
%
% In that code the values Z may take are irrelevant.
blue_eyed_non_grandparent(X) :-
    blue_eyed(X),
    \+ (parent(X, Y), parent(Y, _)).