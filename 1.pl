wariacja([],0,_,_).
wariacja([H|T],D,Avg,Length):- wariacja(T,Y,Avg,Length),Z is H-Avg,D is Y+Z*Z/Length.
wariacja(L,D):-length(L,Len),avg(L,Avg),wariacja(L,D,Avg,Len).
avg(L,X):-sum(L,Y), length(L,Z),Z \= 0, X is Y/Z.
avg([],0).
sum([H|T],X):- sum(T,Y), X is Y+H.
sum([],0).
