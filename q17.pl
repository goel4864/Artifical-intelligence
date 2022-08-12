del_nth([_|L],1,L).
del_nth([H|L],N,[H|R]):- N1 is N-1, del_nth(L,N1,R).
del_nth:-
write("Enter the list: "),read(L),
write("Enter the position of the element to be deleted: "),read(N),
del_nth(L,N,R),
write("After Deletion List is ::- "),write(N),write(" position in the 
list is: "),
write(R),!.