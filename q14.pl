nth_element(1,[H|T],H).
nth_element(N,[H|T],X):- N1 is N-1,nth_element(N1,T,X).
nth_element:-
write("Enter the list :: "),read(L),
write("Enter the position of the element"),read(N),
nth_element(N,L,X),
write("The element at position "),write(N),write(" in the list is: "),
write(X).