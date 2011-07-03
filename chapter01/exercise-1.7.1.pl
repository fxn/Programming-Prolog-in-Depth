/* Identify each of these as an atom, number, structure, variable, or not a legal term:

asdfasdf % atom
234      % number
f(a,b)   % structure
_on      % variable
X(y,z)   % not a legal term, on one hand variable names cannot contain "(", and on the
         % other hand functors must be atoms
in_out_  % atom
'X'(XX)  % structure, quotes allow any character in atoms, and XX is an ordinary variable
'X'      % atom

*/