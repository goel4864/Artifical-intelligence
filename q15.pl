max(X,Y,M):- X>Y,M is X.
max(X,Y,M):- X=<Y,M is Y.
maxlist([],0):-!.
maxlist([M],M):-!.
maxlist([H|T],M):-maxlist(T,M1),max(H,M1,M),!.
maxlist:-
write("Enter the list: "),read(L),
maxlist(L,M),
write("The maximum element in the given list is: "),write(M),!.