/* Identify each of these as an atom, number, structure, variable, or not a legal term:

asdfasdf % atom
234      % number
f(a,b)   % structure
_on      % variable
X(y,z)   % not a legal term, a variable cannot contain "(", a structure should start with an atom
in_out_  % atom
'X'(XX)  % structure, quotes allow any character in atoms, and XX is an ordinary variable
'X'      % atom

*/