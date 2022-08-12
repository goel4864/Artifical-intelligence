evenlength([]).
evenlength([_|T]):- oddlength(T).
oddlength([_]).
oddlength([_|T]):- evenlength(T).
even_odd_len:-
write("Enter the list to be checked: "),read(L),
(evenlength(L)->write("The entered list is even length");
write("The entered list is odd length")),!.