/* max(X,Y,M):- M is X, X>=Y.
max(X,Y,M):- M is Y, X<Y. */
input :-
	write('Enter 1st number : '),
	read(X),
	write('Enter 2nd number : '),
	read(Y),
	max(X,Y,M).

max(X,Y,M):- 
	M is X, X>=Y,
	output(X,Y,M).

max(X,Y,M):- 
	M is Y, X<Y,
	output(X,Y,M).	

output(X,Y,M) :-
	write('Maximum of '),write(X),write(' and '),write(Y),write(' is '),write(M),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).	

cont(yes) :- input.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.


