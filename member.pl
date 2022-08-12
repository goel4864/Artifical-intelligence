% X IS THE HEAD OF L
%X IS THE MEMBER OF TAIL OF L

input :-
	write('Enter List :'),
	read(L),
	write('Enter number : '),
	read(X),
	memb(X,L),
	output(X,L).

memb(X,[X|Tail]).
memb(X,[Head|Tail]):-member(X,Tail).

output(X,L) :-
	write(X),write(' is a member of list'),write(L),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).

cont(yes) :- input.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.

