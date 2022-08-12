/* multi(N1, N2, R):-R is N1 * N2.*/

multi :-
	write('Enter 1st number : '),
	read(X),
	write('Enter 2nd number : '),
	read(Y),
	Z is X*Y,
	write('Product of '),write(X),write(' and '),write(Y),write(' is '),write(Z),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).

cont(yes) :- multi.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.




	