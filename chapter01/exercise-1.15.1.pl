/* Use the debugger to trace each of the following queries:

?- spy(located_in/2).
% Spy point on located_in/2
true.

[debug]  ?- trace.
true.

[trace]  ?- located_in(austin, What).
   Call: (6) located_in(austin, _G367) ? creep
   Exit: (6) located_in(austin, texas) ? creep
What = texas .

[trace]  ?- parent(michael, cathy).
   Call: (6) parent(michael, cathy) ? creep
   Call: (7) father(michael, cathy) ? creep
   Exit: (7) father(michael, cathy) ? creep
   Exit: (6) parent(michael, cathy) ? creep
true .

etc.


*/

