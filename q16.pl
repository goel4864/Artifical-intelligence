insert_nth(I,L,1,[I|L]).
insert_nth(I,[H|L],N,[H|R]):- N1 is N-1,insert_nth(I,L,N1,R).
insert_nth:-
write("Enter the list: "),read(L),
write("Enter the position of the element to be inserted: 
"),read(N),
write("Enter the element to be inserted: "),read(I),
insert_nth(I,L,N,R),
write("After Insertion List is ::- "),write(I),write(" at 
"),write(N),write(" position in the list is: "),write(R),!.