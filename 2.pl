%Kadne's algorithm
max(X,Y,Z):-
  X>=Y,Z is X;
  Y>X, Z is Y.

max_sum(Ls,S):-
max_sum(Ls,_,S).

max_sum([L], L, L).

max_sum([L|Ls],Here, Before):-
  max_sum(Ls, New_Here, New_Before),
  T1 is New_Here+L,max(L,T1,T2),Here is T2,
  Before is max(New_Before,Here).
