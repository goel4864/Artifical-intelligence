/*sum(X,Y,R):- R is X+Y.
*/
sum :-
	write('Enter 1st number : '),
	read(X),
	write('Enter 2nd number : '),
	read(Y),
	Z is X+Y,
	write('Sum of '),write(X),write(' and '),write(Y),write(' is '),write(Z),nl,
	write('Do you want to add more numbers (yes/no) : '),
	read(Ch),
	cont(Ch).

cont(yes) :- sum.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.

