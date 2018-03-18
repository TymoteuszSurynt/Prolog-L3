%Kadne's algorithm
max(X,Y,Z):-
  X>=Y,Z is X;
  Y>X, Z is Y.

max_sum([L|Ls],S):-
max_sum(Ls,L,L,S).

max_sum([],_,X,X).

max_sum([L|Ls],Here, Before,O):-
  T1 is Here+L,max(L,T1,T2),New_Here is T2,
  New_Before is max(Before,New_Here),
  max_sum(Ls, New_Here, New_Before,O).
