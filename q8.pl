% X IS THE HEAD OF L
%X IS THE MEMBER OF TAIL OF L
member(X, [X|Tail]).
member(X, [Head|Tail]):- member(X, Tail).
member:-
write("Enter the List: "),
read(L),
write("Enter the number to be found: "),
read(X), write(X),
(member(X,L)-> write(" is the member of the given list") ;write("
is not the member of the given list")),!.
